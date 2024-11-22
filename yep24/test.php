<?php 
	date_default_timezone_set('Asia/Manila'); 
	include('mainlog_func.php');
	include('layout.php');
	$layout = new layout; 
	
?>
<!DOCTYPE html>
<html>
<head>
	<?php $layout->head(); ?>	
</head>
<style type="text/css">
	body { background: url('images/slider/2.png'); background-repeat: no-repeat; background-size: cover;}
	.jumbotron { padding: 0px 0px; text-align: center; background-color: #13322B; height: 200px;}
	.jumbotron h1 { color: #ffff; }
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
	.carattere-regular { font-family: 'Carattere', cursive; font-size: 100px; color: #bf9827; }
	.carattere-bold { font-family: 'Carattere', cursive; font-size: 80px; color: #bf9827; }
	.delius-regular { font-family: 'Delius'; font-size: 30px; opacity: 0 }
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
	<h2 class="playfair-display-sc-regular fade-2" style="position:relative;top:-50px ;opacity: 0;">OPULENCE</h2>
	</div>

	<div class="container" style="margin-top: 50px;">
		<div class="row">
			<div class="col-12">
				
				<?php
					$N ="";
					$QLID ="";
					$bev="";
					$I ="";
					$name ="";
					$Credits ="";
                    $T = "";
					$con = mysqli_connect("localhost","root","","yep24");
					$results = mysqli_query($con,"SELECT * FROM logs ORDER BY Log_in DESC LIMIT 1");
					while ($row = mysqli_fetch_row($results)){
							$N = $row[1];
							$I = $row[4];
							$QLID = $row[2];
							$bev=$row[3];
							$I = date("h:i A",strtotime($I));
                            $T = $row[9];    
						}
					$stat = mysqli_query($con,"SELECT * FROM logs");
					$count = mysqli_num_rows($stat);
										
										
				?>	
							<h1 class="text-center cardo-bold fade-3"><strong><big>WELCOME</big></strong></h1>
							<div><br></div>
							<div class="fade-theme"></div>
							<h1 class="text-center carattere-regular"><strong><big><big><?php echo $N?></big></big></strong></h1>
							<div><br></div>
							<h2 class="text-center delius-regular fade-3"><strong>Time Registered: <?php echo $I ?></strong></h2>
			</div>

		</div> <br>

		<h4 class="text-center delius-regular fade-3">Your Table Number is</h4>
		<h4 class="text-center uncial-antiqua-regular fade-3"><?php echo $T ?></h4>
	</div>
	<br><br>
	<div class="col-12" style=" text-align: center"><h1 class="text-danger"><strong><?php echo $error; ?></strong></h1></div>

	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>