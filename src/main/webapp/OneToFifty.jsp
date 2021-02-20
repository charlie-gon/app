<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1 To 50 Game</title>
<style>
div{
	align: center;
}
	td { 
	display: inline-block; 
	width : 50px; 
	height: 50px;
	border: 1px solid black;
	}
</style>
</head>
<body>

<div id="div1"></div>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>


<script>
var div1 = document.getElementById("div1");
var tbl = document.createElement("table");
var numbers = [];
	for(i=0; i<5; i++){
		var tr = document.createElement("tr");
		
		for(j=0; j<5; j++){
			var td = document.createElement("td");
			numbers = Math.floor(Math.random()*50)+1;
				if(numbers[j] == numbers[j]+1){
					j--;
				}
			
			td.appendChild(document.createTextNode(numbers));
			tr.appendChild(td);
		}
		tbl.appendChild(tr);
	}
	div1.appendChild(tbl);
	

	$(document).ready(function() {
	});
</script>

</body>
</html>