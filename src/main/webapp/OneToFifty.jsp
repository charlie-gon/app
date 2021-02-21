<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1 To 50 Game</title>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
td {
	display: inline-block;
	width: 80px;
	height: 80px;
	border: 1px solid black;
	text-align: center;
	font-size: 50px;
}
.box {
	width: 200px;
	height: 200px;
	margin-top: 50px;
}

.timerBox {
	width: 200px;
	outline: 2px solid black;
}

.timerBox .time {
	font-size: 30pt;
	color: #4C4C4C;
	text-align: center;
	font-family: sans-serif;
}

.btnBox {
	margin: 20px auto;
	text-align: center;
}

.btnBox .fa {
	margin: 0px 5px;
	font-size: 30pt;
	color: #FAED7D;
	cursor: pointer;
}
</style>	
</head>
<body>

<div id="div1" align="center">
<div id='box' class="box">
		<div id='timerBox' class="timerBox">
			<div id="time" class="time">00:00:00</div>
		</div>
		<div class="btnBox">
			<i id="startbtn" class="fa fa-play" aria-hidden="true"></i>
			<i id="pausebtn" class="fa fa-pause" aria-hidden="true"></i>
			<i id="stopbtn" class="fa fa-stop" aria-hidden="true"></i>
		</div>
	</div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script>
var div1 = document.getElementById("div1");
var tbl = document.createElement("table");
var temp;

	for(i=0; i<5; i++){
		var tr = document.createElement("tr");
		var numbers = []; // row가 바뀔 때마다 새로운 배열 생성(row마다 다른 값 뿌리려고)
		
		for(j=0; j<5; j++){
			var td = document.createElement("td");
			numbers.push(Math.floor(Math.random()*50)+1);
			/* if(numbers[j] == numbers[j-1]){ // 중복검사 안되노 ㅡㅡ
				j--;
			} */
			td.appendChild(document.createTextNode(numbers[j]));
			tr.appendChild(td);
		}
		tbl.appendChild(tr);
	}
	div1.appendChild(tbl);
	
// 스톱워치 기능
// https://myhappyman.tistory.com/21
var time = 0;
var starFlag = true;
	$(document).ready(function() {
		buttonEvt();
	});

	function init() {
		document.getElementById("time").innerHTML = "00:00:00";
	}

	function buttonEvt() {
		var hour = 0;
		var min = 0;
		var sec = 0;
		var timer;

		// start btn
		
	$("#startbtn").click(
				function() {

					if (starFlag) {
						$(".fa").css("color", "#FAED7D")
						this.style.color = "#4C4C4C";
						starFlag = false;

						if (time == 0) {
							init();
						}

						timer = setInterval(function() {
							time++;

							min = Math.floor(time / 60);
							hour = Math.floor(min / 60);
							sec = time % 60;
							min = min % 60;

							var th = hour;
							var tm = min;
							var ts = sec;
							if (th < 10) {
								th = "0" + hour;
							}
							if (tm < 10) {
								tm = "0" + min;
							}
							if (ts < 10) {
								ts = "0" + sec;
							}

							document.getElementById("time").innerHTML = th
									+ ":" + tm + ":" + ts;
						}, 1000);
					}
				});

		// pause btn
		$("#pausebtn").click(function() {
			if (time != 0) {
				$(".fa").css("color", "#FAED7D")
				this.style.color = "#4C4C4C";
				clearInterval(timer);
				starFlag = true;
			}
		});

		// stop btn
		$("#stopbtn").click(function() {
			if (time != 0) {
				$(".fa").css("color", "#FAED7D")
				this.style.color = "#4C4C4C";
				clearInterval(timer);
				starFlag = true;
				time = 0;
				init();
			}
		});
	}
</script>

</body>
</html>