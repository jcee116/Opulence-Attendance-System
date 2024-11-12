<?php
$error='';
if(isset($_POST['submit'])){
	//Define $user and $pass
	$search = $_POST["qlid"];

               
	//Establishing Connection with server 
	$conn = mysqli_connect("localhost", "root", "");
	//Selecting Database
	$db = mysqli_select_db($conn,"yep24");
	//sql query to fetch information of registerd user and finds user match.
        $check = mysqli_query($conn,"SELECT * FROM logs WHERE QLID='$search' AND Credits!=0");
        
        if (mysqli_num_rows($check) == 1){
            while ($data = mysqli_fetch_row($check)){    
                $N = $data[1];
                $QLID = $data[2];
                $Bev = $data[3];
                $C = $data[5];
                $CM = $C -1;
		        $update = "UPDATE logs SET Credits = '$CM', remarks='claimed' WHERE QLID = '$QLID' AND Beverage = '$Bev'";
                mysqli_query($conn,$update);         
         }  
        }
        else {$error = "USER HAS NO CREDITS LEFT";}
        }    
?>