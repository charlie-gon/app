<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajasJson</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		$('#btn1').on('click', function(){
			//1. post / 입력순서(url, data, success, dataType)
			$.post("../../JsonServ", function(obj){
				//var obj = JSON.parse(response);
				$('#demo').append(obj[0], "<br>");
			}, "json"); // dataType을 json으로 설정하면 자동 parsing 된다
		
			//2. ajax
			$.ajax({
				url: "../../JsonServ",
				success: function(obj){$('#demo').append("JsonServ: ", obj[1], "<br>");},
				dataType: "json"
			});
		});
		
		// btn2 클릭 시 이름/첫 번째 취미 출력
		$('#btn2').on('click', function(){
			$.ajax({
				url: "../../FindMember",
				success: function(obj){$('#demo').append("FindMember: ", obj.name, " ", obj.hobbies[0], "<br>")},
				dataType: "json"
			});
		});
	});
	
</script>
</head>
<body>

<div id="demo">
<h2>The XMLHttpRequest Object</h2>
</div>
<button type="button" id="btn1">JsonServ</button>
<button type="button" id="btn2">FindMember</button>
</body>
</html>