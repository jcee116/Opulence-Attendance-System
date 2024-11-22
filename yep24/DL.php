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
	body { background: url('images/BG1.png'); background-repeat: no-repeat; background-size: cover;}
	.jumbotron { padding: 10px 0px; text-align: center; background-color: #13322B;}
	.jumbotron h1 { color: #ffff; }
	.jumbotron h2 { color: #ffff; }
	.image-container { height: 400px; padding: 10px; }
	@font-face {
	font-family: Sacramento;
	src: url(fonts/Sacramento-Regular.ttf) format("truetype");
	}

	@font-face {
	font-family: Playfair Display SC;
	src: url(fonts/PlayfairDisplaySC-Regular.ttf) format("truetype");
	}

	@font-face {
	font-family: Cardo;
	src: url(fonts/Cardo-Regular.ttf) format("truetype");
	}

	@font-face {
	font-family: Cardo;
	src: url(fonts/Cardo-Bold.ttf) format("truetype");
	}

	@font-face {
	font-family: Carattere;
	src: url(fonts/Carattere-Regular.ttf) format("truetype");
	}

	@font-face {
	font-family: Delius;
	src: url(fonts/Delius-Regular.ttf) format("truetype");
	}

	@font-face {
	font-family: Uncial Antiqua;
	src: url(fonts/UncialAntiqua-Regular.ttf) format("truetype");
	}
	.sacramento-regular { font-family: 'Sacramento'; font-size: 40px; color: #f5d36f; }
	.playfair-display-sc-regular { font-family: 'Playfair Display SC'; font-size: 120px; color: #f5d36f; opacity: 0 }
	.cardo-regular { font-family: 'Cardo'; font-size: 20px; opacity: 0 }
	.cardo-bold { font-family: 'Cardo'; font-size: 40px; color: #6a6862; opacity: 0 }
	.carattere-regular { font-family: 'Carattere', cursive; font-size: 80px; color: #bf9827; }
	.carattere-bold { font-family: 'Carattere', cursive; font-size: 80px; color: #bf9827; }
	.delius-regular { font-family: 'Delius'; font-size: 40px; opacity: 0 }
	.uncial-antiqua-regular { font-family: 'Uncial Antiqua'; font-size: 60px; color: #bf9827; opacity: 0 }
	.leftcol {
		position: absolute;
		top:0px;
		left: -50px;
		max-width: 100%;
		max-height: 100%;
	}
	.rightcol {
		position: absolute;
		top:0px;
		right: -50px;
		max-width: 100%;
		max-height: 100%;
	}
	.fade-1 {
		animation: fadeInAnimation ease 3s;
		animation-iteration-count: 1;
		animation-fill-mode: forwards;
	}
	.fade-2 {
		animation: fadeInAnimation ease 3s;
		animation-delay: 0.5s;
		animation-iteration-count: 1;
		animation-fill-mode: forwards; 
	}
	.fade-3 {
		animation: fadeInAnimation ease 3s;
		animation-delay: 0.5s;
		animation-iteration-count: 1;
		animation-fill-mode: forwards; 
	}
	.fade-theme {
		animation: showHide 3s ease-out;
		position:absolute;
		right:20%;
		width:0%;
		height: 50%;
		background:#ffffff;
	}
	.move-right {
		animation: fadeIn ease 3s;
	}
	.move-left {
		animation: fadeOut ease 3s;
	}
	@keyframes fadeInAnimation {
		0% {opacity: 0;}
		100% {opacity: 1;}
	}
	@keyframes fadeIn {
		0% {transform: translateX(-20rem);}
		100% {transform: translateY(0px);}
	}
	@keyframes fadeOut {
		0% {transform: translateX(20rem);}
		100% {transform: translateY(0px);}
	}
	@keyframes showHide {
		0% {width:50%}
		40% {width:30%}
		60% {width:20%;}
		80% {width:10%;}
		100% {width:0%;}
	}

</style>
<body>
	<div class="jumbotron">
	<div>
		<a ><img class="leftcol move-right" src="/yep24/images/opulence_left.png" alt=""></a>
		<a ><img class="rightcol move-left" src="/yep24/images/opulence_right.png" alt=""></a>
	</div>
	<h1 class="fade-1"><a style="position:relative;top:-4px"><img src="/yep24/images/atleos-white.png"></a>CEBU YEAR-END PARTY 2024</h1>
	<div></div>
	<span class="playfair-display-sc-regular fade-2" style="opacity: 0;">OPULENCE</span>
	<div></div>
	</div>
	<div class="container" style="margin-top: 50px;">
		<div class="row">
			<div class="col-12">
				
				<?php
					$N ="";
					$QLID ="";
					$bev="";
					$Credits ="";
                    $Credits2 ="";
					$con = mysqli_connect("localhost","root","","yep24");
					$results = mysqli_query($con,"SELECT * FROM logs WHERE remarks ='claimed' ORDER BY modified DESC LIMIT 1");
					while ($row = mysqli_fetch_row($results)){
							$N = $row[1];
							$QLID = $row[2];
							$bev=$row[3];
							$Credits = $row[5];
                            $Credits2 = $row[8];  
						}
					$stat = mysqli_query($con,"SELECT * FROM logs");
					$count = mysqli_num_rows($stat);
										
										
				?>	
							<h1 class="text-center cardo-bold fade-3"><strong><big>ENJOY YOUR <?php echo $bev ?></big></strong></h1>
							<div><br></div>
							<div class="fade-theme"></div>
							<h1 class="text-center carattere-regular"><strong><big><big><?php echo $N?></big></big></strong></h1>
							<div><br></div>
							<h2 class="text-center delius-regular fade-3"><strong>Drink Credits: <?php echo $Credits ?></strong></h2>
                            <h2 class="text-center delius-regular fade-3"><strong>Shooter Credits: <?php echo $Credits2 ?></strong></h2>
			</div>

		</div> <br><br>

		
		<form action="" method="post">
			<div class="row">
				<div class="mx-auto form-inline">
						<input type="text" name="qlid" class="form-control input-lg text-center cardo-regular fade-3" id="qlid" placeholder="SCAN YOUR CARD" autofocus="">
                        <button type="submit" name="submit" class="btn btn-primary log ml-3" style="font-size: 30">Submit</button></div>
                    </div> 
		</div>
        <div class="row">
				<div class="mx-auto form-inline">
                    <button type="button" class="btn btn-info m-3 p-4 btn-lg" value="D" name="btnSeven" id="btnSeven" onclick="setText7(this)">DRINK</button>
                    <button type="button" class="btn btn-info m-3 p-4 btn-lg" value="S" name="btnSeven" id="btnSeven" onclick="setText7(this)">SHOOTER</button>
                    </div> 
		</div>
		</div>
		</form>
		<br>
        <div class="col-12" style=" text-align: center"><h1 class="text-danger"><strong><?php echo $error; ?></strong></h1></div>
	</div>
	<br><br>
	

	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script>
    function setText7(obj){
    var val = obj.value;
    console.log(val);
    document.getElementById('qlid').value = val;
    document.getElementById('qlid').focus();
}
</script>
</body>
</html>