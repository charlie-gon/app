<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
// 참고: https://www.w3schools.com/js/js_strict.asp#:~:text=The%20%22use%20strict%22%20Directive&text=It%20is%20not%20a%20statement,for%20example%2C%20use%20undeclared%20variables.
	"use strict"; // 변수선언
	var v1 = 10; // 전역변수
	function f1(){
		{
			//var i1 = 10; // 지역변수
			//i1 = 10; // 전역변수
			let i1 = 10; // 블록변수
		}
		v1 = 20;
		console.log(i1);
	}
	
	function f2(){
		v1 = 30;
		console.log(i1);
	}
</script>
</head>
<body>

</body>
</html>