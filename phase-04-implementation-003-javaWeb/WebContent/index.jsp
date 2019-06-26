<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/33.jpg);
	background-color: #000000;
}
a:link{
	text-color:#FFFFFF;
	font-size:25px;
	text-decoration:none;
}
a:visited{
	text-color:#FFFFFF;
	font-size:25px;
	text-decoration:none;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '100%',
			top : '0'
		}, 30000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$("#hornor").fadeIn('slow');

		$("#hornor").animate({
			fontSize : '30px',
		    top:  '25%',
		    left: '50px'
		}, 3000);
		
		$('#poem-txt').fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function onWaitingAudioEnd(){
		$('#intr')[0].play();	
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<link rel="stylesheet" href="/static/jquery.min.css">
<script src="/static/bootstrap.min.js"></script>
<script src="/static/jquery.min.js"></script>

</head>



<body class="background1">

	
 	  <audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/gem.mp3"
		preload="auto"></audio>
	<!-- ========================================================================================================================= -->	
	
	<div id="jtship" align="center">
		<a href="/ship.jsp" style="color: white">宇宙飞船逃离地球</a>
	</div>
	
	
	<!-- ========================================================================================================================= -->	
	
	<div id="firstline" align="center">
		<span style="font-size: 22px; color: white">
		<br>
    	大家好，我是郑智源，下面是我设计的
    	“<span style="font-size: 38px; color: red">流浪地球</span>”工程！
    	<br>
   		1.点击屏幕左下角的地球，可以开始地球悲壮的流浪！！
   		<br><br>

   		2.点击上面文字可以开启“<span style="font-size: 38px; color: red">宇宙飞船计划</span>”！！
	</span>
	</div>
	<audio id="waiting" src="/static/audio/gem.mp3" preload="auto" onended="onWaitingAudioEnd();"></audio>
	<div id="poem-txt" style="display: none; font-size: 18px; color: orange; position:absolute; left :1100px;top:200px" >
		《诗词版"流浪地球"》
		<br />
		<span style="font-size: 18px; color: grey">-郑智源 </span>
		<br /> <br />
		 西风吹皱东方河，万年地球白发多。 
		 <br />
		  流浪星际家何去，满船清梦出银河。
	</div>
	<img src="/static/imgs/earth.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 150px"
		onclick="run(this);return false" 
		title="点击后，开始流浪 ！"
		/>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="300px" controls="controls"
			src="/static/video/movie.mp4" onended="onVideoEnd();" ></video>
	</div>
	<div id="hornor" style="display:none;position:absolute;left:10x; bottom:10px;color:white;font-size:24px" align="center">2019年发生了很多大事，谨以此向<span style="color:red">《流浪地球》</span>和<span style="color:orange">华为公司</span>表示致敬 !  <br/>本网页未来将放在以下网站 sdlc.huaku-2019.xyz (华为公司的云服务器) <br/> huaku-2019, 2019 年，《流浪地球》 和华为很酷！ <br/>也许华为的崛起意味着，在人类未来需要流浪地球时，东方大国将作出巨大的贡献 ！</div>
</body>
</html>