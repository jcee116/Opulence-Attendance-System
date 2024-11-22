<?php 
	date_default_timezone_set('Asia/Manila'); 
	include('drinkslog_func.php');
	include('layout.php');
	$layout = new layout; 

    
?>
<!DOCTYPE html>
<html>
<head>
	<?php $layout->head(); ?>	
</head>
<style type="text/css">
	body { background: url('images/slider/2.png'); background-repeat: no-repeat; background-size: cover; }
	.jumbotron { padding: 10px 0px; text-align: center; background-color: #13322B;}
	.jumbotron h1 { color: #ffff; }
    .jumbotron h2 { color: #ffff; }
	.image-container { height: 400px; padding: 10px; }
</style>
<body>
	<div class="jumbotron">
	<h1>OPULENCE: WHERE EVERY MOMENT IS A MASTERPIECE</h1>
    <h2>NCR ATLEOS CEBU YEAR-END PARTY 2024</h2>
	</div>
	<div class="container" style="margin-top: 50px;">
		<div class="row">
			<div class="col-12">
				<?php
					$N ="";
					$QLID ="";
					$bev="";
					$I ="";
                    $C ="";
					$C1 = "";
					$con = mysqli_connect("localhost","root","","yep24");
					$results = mysqli_query($con,"SELECT * FROM logs WHERE remarks ='claimed' ORDER BY modified DESC LIMIT 1");
					while ($row = mysqli_fetch_row($results)){
							$N = $row[1];
                            $QLID = $row[2];
							$bev=$row[3];
                            $I = $row[4];
                            $I = date("h:i A",strtotime($I));
                            $C = $row[5];
							$C1 = $row[8];    
						}                
                                        
										
				?>	
                            <h1><strong><big>ENJOY YOUR <?php echo $bev?></big></strong></h1>
                            <h1 class="text-center"><strong><big><big><?php echo $N ?> !!!</big></big></strong></h1>
                            <h2 class="text-center">QLID: <?php echo $QLID ?></h2>
                            <h2 class="text-center"><strong>MAIN DRINK CREDITS LEFT: <?php echo $C ?></strong></h2>
							<h2 class="text-center"><strong>SHOOTER CREDITS LEFT: <?php echo $C1 ?></strong></h2>
			</div>
		</div> <br> <br>

		
        <form action="" method="post">
            <div class=row>
                <div class=col-3> 
                <label class="form-label" style="font-size:30px" for="qlid">Enter QLID:</label>
                </div>
                <div class="col-8"> 
                    <input type="text" name="qlid" class="form-control input-lg" id="qlid" placeholder="SCAN YOUR ID" autofocus="">
                </div> 
                <div class="col-1"> <button type="submit" name="submit" class="btn btn-primary log" style="font-size: 30">Submit</button></div>
        </div>
		</form>

		<br><br>
		<h4 class="text-center"><?php echo "<b>".date('l\, F jS\, Y h:i A')."</b>"; ?></h4>


	</div>
	<br><br>
	<div class="col-12" style=" text-align: center"><h1 class="text-danger"><strong><?php echo $error; ?></strong></h1></div>


	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
 	<script type="text/javascript">
		$(document).ready(function() {
		   setInterval( function(){
		   	 location.reload();
		   } , 400);
		});
	</script>
</body>
</html>