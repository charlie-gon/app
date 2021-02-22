<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210222_JS Forms</title>
<script>
	function addFruit(){
		// input tag의 값을 select의 option 태그 만들어서 추가
		var op = document.createElement("option"); // option tag 생성
		var fruitInsert = document.getElementById("fruit").value;
		op.innerHTML = fruitInsert; // 입력값 삽입
		document.getElementById("list").add(op);
		
		// input tag는 clear
		//document.getElementById("fruit").value = ""; // input tag value 삭제
		
		
		// 참고: https://www.w3schools.com/jsref/coll_table_cells.asp
		// 테이블 동적 삽입
		var table = document.getElementById("tbl");
		var row = table.insertRow();
		row.insertCell().innerText = fruitInsert;
		
		// 숫자 3개 입력 시 합계 컬럼 생성 및 계산
		
	}
	
	// 테이블 삭제
	function delTbl(){
		var tbl = document.getElementById('tbl');
		tbl.deleteRow(0);
		if(tbl.rows[0].cells[0] === ""){
			alert("td is empty");
		}
	}
	
</script>
</head>
<body>

<input id="fruit"><button type="button" onclick="addFruit()">등록</button>
<button type="button" onclick="delTbl()">삭제</button>
<select id="list" size="10"></select>
<table id="tbl" border="1"></table>
</body>
</html>