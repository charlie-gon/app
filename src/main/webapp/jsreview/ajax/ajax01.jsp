<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210222_AJAX01</title>
</head>
<body>
<div id="demo">
<h2>The XMLHttpRequest Object</h2>
</div>
<input id="userId">
<button type="button" onclick="loadDoc()">Change Content</button>

<script>
function loadDoc() {
	// Step.1 XHR 객체 생성
  var xhttp = new XMLHttpRequest();
  	// Step.2 콜백함수
  	// https://www.w3schools.com/js/js_ajax_http.asp
	xhttp.onreadystatechange = function() {
    if (this.readyState < 4) {
    	document.getElementById("demo").innerHTML = "loading...";
    }
    else if(this.readyState == 4 ){
    	if(this.status == 200){
	      document.getElementById("demo").innerHTML = this.responseText;
    	}else{
    	  document.getElementById("demo").innerHTML = this.status + "error";
    	}
    }
  };
  // Step.3 요청준비(서버 url)
  //xhttp.open("GET", "../../AjaxServ"); // 세번째 인수가 비동기 여부 / true,false 없으면 true(default)
  //xhttp.open("GET", "../../AjaxServ", true); // ㅂㅣ동기(send -> ajax)
  //xhttp.open("GET", "../../AjaxServ", false); // 동기(ajax -> send)
  
  var param = "userId=" + document.getElementById("userId").value;
  xhttp.open("POST", "../../FindName?"); 
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  // Step.4 요청 시작
  xhttp.send(param); // post방식은 send에 param 삽입
  document.getElementById("demo").innerHTML += "ajax send";
}
</script>

</body>
</html>