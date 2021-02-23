<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210223_ jquery 기초_하나의 타겟에 여러 handler 추가</title>
</head>
<body>
<div id="result">event test</div>
<script>
// 하나의 타겟에 여러 handler 추가
// result.onclick=function(){} 보다 유용함

// div tag 클릭 시 이벤트 발생
	result.addEventListener("click", function(){
		alert(this.innerHTML); // -> this = 이벤트 참조된 div tag
	});
	
	result.addEventListener("click", function(){
		alert("alert!!"); // -> this = 이벤트 참조된 div tag
	});
</script>
</body>
</html>