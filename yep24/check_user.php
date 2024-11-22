<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "yep24";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $QLID = $_POST['qlid'];
    $sql = "SELECT * FROM logs WHERE QLID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $QLID);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Fetch options (for example purposes, we'll just list some static options)
        echo '<div class="form-group">
                <label for="option">Options:</label>
                <select class="form-control" id="option" name="option">
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                </select>
              </div>';
    } else {
        echo '<p>No user found with that username.</p>';
    }

    $stmt->close();
}

$conn->close();
?>