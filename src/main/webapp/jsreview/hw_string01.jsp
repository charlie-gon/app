<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>homework3_array.jsp</title></head>
<body>
<input type="text" id="userno">
<input type="text" id="username">
<input type="text" id="userId">
<input type="text" id="userRegDate">
<div id="result">1,홍길동,hong,2019/12/01</div>
<button onclick="splitFunc()">Try it</button>
<script>
	// 참고: https://www.w3schools.com/js/js_string_methods.asp
	//div의 값을 콤마(,)로 분리하여 각각의 텍스트필드에 출력

	function splitFunc() {

		var values = document.getElementById("result").innerHTML;
		var arr = values.split(",");
		var inputs = document.getElementsByTagName("input");

		for(i=0; i<arr.length; i++){
			console.log(inputs[i]);
			inputs[i].value = arr[i]; // type="text"의 값을 가져오려면 .value 사용해야
		}
	}
</script>
</body>
</html>