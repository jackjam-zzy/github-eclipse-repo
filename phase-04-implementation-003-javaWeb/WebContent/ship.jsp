<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#bg {
	background-image: url(/static/imgs/du.jpg);
}
</style>
<script type="text/javascript">

function VideoEnd(){
	$("#moviebox").fadeOut('slow');
}

function run(clickedObj){
	$("#text").fadeOut('slow');
	$("#moviebox").show('slow');
	$("#movie")[0].play();
	
	$('#poem-txt').fadeIn(5000);
	$('#poem-txt').fadeOut('slow');
	$('#poem-txt1').fadeIn(20000);
	$('#poem-txt1').fadeOut('slow');
	$('#poem-txt2').fadeIn(50000);
	$('#poem-txt2').fadeOut(60000);
	
	$(clickedObj).animate({
		left : '700px',
		
	}, 5000);
	

	
	$(clickedObj).animate({
		top : '100px'
	}, 4000);
	

	
	$(clickedObj).animate({

		left : '10px'
	}, 3000);

	$(clickedObj).animate({
		top : '550px'
	}, 1000);
	
	$(clickedObj).animate({
		width : '10px',
		opacity : '0.2',
		left : '100%',
		top : '0'
	}, 5000);
	
	$("#moviebox").animate({
		top : '0'
	}, 5000);
	
}

</script>

<meta charset="UTF-8">
<title>宇宙飞船</title>
<script src="/static/jquery.min.js"></script>
</head>
<body id="bg">
	
	<img src="/static/imgs/fly.png" style="position: absolute; left: 10px; bottom: 10px; width: 100px"
		onclick="run(this);return false" 
		title="点击后，开始流浪 ！"
	/>
	<div id="text" align="center" style="color:red; ">
	
		<h2>点击左下角飞船开始飞越</h2>
	</div>
	<div id="poem-txt" style="display: none; font-size: 18px; color: black; position:absolute; left :800px;top:250px" >
		这是一个关于宇宙飞船上的唯美爱情。
		作为流浪地球计划派遣出去的先锋宇宙飞船之一。
	</div>
	<div id="poem-txt1" style="display: none; font-size: 18px; color: black; position:absolute; left :800px;top:350px" >
		
		因为意外，飞船上只剩下唯二的男女。
		他们生活在一起了年，因为孤独，所以对彼此产生了男女之情，互相爱慕着彼此，以此来排解孤独。
	</div>
	<div id="poem-txt2" style="display: none; font-size: 18px; color: black; position:absolute; left :800px;top:450px" >
		可惜
		1年后的一次陨石撞击，飞船损伤，女主陷入生死困难，男主为了救女主，牺牲了自己。
	</div>
	<div id="moviebox" style="margin-top: 250px; margin-left: 110px; display: none">
		<video id="movie" height="300px" controls="controls"
			src="/static/video/gem.mp4" onended="VideoEnd();" ></video>
	</div>

</body>
</html>