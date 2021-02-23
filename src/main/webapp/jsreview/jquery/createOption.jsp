<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210223_jquery</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		// 버튼 클릭하면 option tag 생성해서 추가
		$('#btnAdd').on('click', function(){
			$('#list').append($("<option>").html($('#fruit').val()));
			console.log($('#fruit').val());
			
			// 짝수 값 style 지정
			if($('option:odd').css("background-color", 'turquoise'));
			console.log("짝수 = " + $('option:odd').val());
		});
		
		// 마지막 값 삭제
		$('#btnDel').click(function(){
			console.log("마지막 개체 = " + $('option:last').val());
			$('option:last').remove();
		});
		
	});
	
</script>
</head>
<body>

<input id="fruit">
<button type="button" id="btnAdd">등록</button>
<button type="button" id="btnDel">제거</button>
<br>
<select id="list" size="10"></select>
<table id="tbl" border="1"></table>
</body>
</html>