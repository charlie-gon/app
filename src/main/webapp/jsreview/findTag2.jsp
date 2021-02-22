<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

function calc1(){
	var sum = 0;
	var table = document.getElementById("tbl1");
	
	for(i=0; i<table.rows.length-1; i++){
		var score = table.rows[i].cells[1].innerText;
		sum += parseInt(score);
	}
}

function calc2(){
	var sum = 0;
	var table = document.getElementById("tbl2");
	
	// Ver.01
//	var trs = table.getElementsByTagName("tr");
/* 
	for(i=0; i<trs.length-1; i++) {
		var score = trs[i].getElementsByTagName("td")[1].innerText;
		console.log(score);
		sum += parseInt(score);
	}
	console.log(sum);
	trs[trs.length-1].getElementsByTagName("td")[1].innerText = sum; */
	
	// Ver.02
	for(i=0; i<table.rows.length-1; i++){
		var score = table.rows[i].cells[1].innerText;
		sum += parseInt(score);
	}
	table.rows[table.rows.length-1].cells[1].innerText = sum;
}
</script>
</head>
<body>
<button type="button" onclick="calc1()">계산</button>
<table  id="tbl1"  border="1">
<tbody >
	<tr><td>100</td></tr>
	<tr><td>90</td></tr>
	<tr><td>80</td></tr>
	<tr><td>100</td></tr>
	<tr><td>&nbsp;</td></tr>
</tbody>	
</table>
<button type="button" onclick="calc2()">계산</button>
<table border="1"  id="tbl2" >
	<tr><td>홍길동</td><td>100</td></tr>
	<tr><td>김기자</td><td>90</td></tr>
	<tr><td>이순신</td><td>80</td></tr>
	<tr><td>총점</td><td>&nbsp;</td></tr>
</table>
</body>
</html>