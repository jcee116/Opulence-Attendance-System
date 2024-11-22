<?php
$error='';
if(isset($_POST['submit'])){
	//Define $user and $pass
	$search = $_POST["qlid"];
    $D = mb_substr($search, 0, 1);
    $Q = ltrim($search, $search[0]);
               
	//Establishing Connection with server 
	$conn = mysqli_connect("localhost", "root", "");
	//Selecting Database
	$db = mysqli_select_db($conn,"yep24");
	//sql query to fetch information of registerd user and finds user match.
        $check = mysqli_query($conn,"SELECT * FROM logs WHERE QLID='$Q'");
        
        if (mysqli_num_rows($check) == 1){
            while ($data = mysqli_fetch_row($check)){    
                $N = $data[1];
                $QLID = $data[2];
                $Bev = $data[3];
                $C = $data[5];
                $C2 = $data[8];
                if ($C + $C2 == 0){
                    $error = "USER HAS NO CREDITS LEFT FOR THE CHOSEN DRINK";
                }
                elseif($D == "D"){
                    if($C == 0){
                        $error = "USER HAS NO CREDITS LEFT FOR THE CHOSEN DRINK";
                    }
                    else {
                        $CM = $C -1;
		                $update = "UPDATE logs SET Credits = '$CM', remarks='claimed' WHERE QLID = '$Q' AND Beverage = '$Bev'";
                        mysqli_query($conn,$update);  
                    }
                    
                }
                elseif($D == "S"){
                    if ($C2 == 0){
                        $error = "USER HAS NO CREDITS LEFT FOR THE CHOSEN DRINK";
                    }
                    else{
                        $CD = $C2 -1;
		                $update = "UPDATE logs SET Credits2 = '$CD', remarks='claimed' WHERE QLID = '$Q' AND Beverage = '$Bev'";
                        mysqli_query($conn,$update); 
                    }
                     
                }
                else{
                    $error = "INVALID INPUT!!!";
                }
                       
         }  
        }
        else {$error = "INVALID INPUT!!!";}
        }  
?>