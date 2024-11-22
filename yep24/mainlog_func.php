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
        $check = mysqli_query($conn,"SELECT * FROM employees WHERE QLID='$search'");
        
        if (mysqli_num_rows($check) == 1){
            while ($data = mysqli_fetch_row($check)){    
                $N = $data[1];
                $QLID = $data[2];
                $Bev = $data[3];
                $T = $data[4];

             if($Bev == 'BEER'){
                $query = mysqli_query($conn,"SELECT * FROM logs WHERE QLID = '$QLID'");
                if(mysqli_num_rows($query) == 0){
		            $scan= "INSERT INTO logs(name,QLID,Beverage,Log_in,Credits,modified,Credits2,tableno) VALUES ('$N','$QLID','$Bev',CURRENT_TIMESTAMP(),3,CURRENT_TIMESTAMP(),2,'$T')";
                    mysqli_query($conn,$scan);
                    }
                else{
                    $error = "=USER ALREADY LOGGED IN=";
                }
            }
            elseif($Bev =='COCKTAIL'){
                $query = mysqli_query($conn,"SELECT * FROM logs WHERE QLID = '$QLID'");
                if(mysqli_num_rows($query) == 0){
		            $scan= "INSERT INTO logs(name,QLID,Beverage,Log_in,Credits,modified,Credits2,tableno) VALUES ('$N','$QLID','$Bev',CURRENT_TIMESTAMP(),4,CURRENT_TIMESTAMP(),2,'$T')";
                    mysqli_query($conn,$scan);
                    }
                else{
                    $error = "=USER ALREADY LOGGED IN=";
                }
            }
            else{
              $query = mysqli_query($conn,"SELECT * FROM logs WHERE QLID = '$QLID'");
                if(mysqli_num_rows($query) == 0){
		            $scan= "INSERT INTO logs(name,QLID,Beverage,Log_in,Credits,modified,Credits2,tableno) VALUES ('$N','$QLID','$Bev',CURRENT_TIMESTAMP(),4,CURRENT_TIMESTAMP(),2,'$T') ";
                    mysqli_query($conn,$scan);
                    }
                else{
                    $error = "=USER ALREADY LOGGED IN=";
                }  
            }   
            }
            
            
         }  
        else {$error = "=USER IS NOT REGISTERED IN THE DATABASE=";}
        }        
?>