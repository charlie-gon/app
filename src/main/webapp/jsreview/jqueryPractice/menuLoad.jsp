<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>class.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	ul,li {  padding : 0px; margine : 0px;}
	.menu { border : 1px solid blue; 
	        background-color: gray; 
	        display: inline; }
	.active { background-color: yellowgreen; }
</style>
<script>
$(function(){
	// menu class 클릭하면 data-url에 해당하는 jsp 페이지 요청하고 결과를 div에 출력
	
	// '로그인' 클릭 시 login.jsp 리턴
	// '로그인' 외 버튼 클릭 시 반응 X
	// 참고: https://sas-study.tistory.com/153
	$('ul').children('li:last').on('click',function(){
		var msg = $('ul').children('li:last').html();
		alert(msg + " 클릭Yo");
		$('#result').load("login.jsp");
	});
	
	// '게시판' 클릭 시 board.jsp 리턴
	$('ul').children('li').eq(0).on('click', function(){
		var msg = $('ul').children('li').eq(0).html();
		alert(msg + " 클릭Yo");
		$('#result').load("board.jsp");
	});
	
	// '회원가입' 클릭 시 member.jsp 리턴
	$('ul').children('li').eq(1).on('click', function(){
		var msg = $('ul').children('li').eq(1).html();
		alert(msg + " 클릭Yo");
		$('#result').load('member.jsp');
	});
	
	// ajax ver
	
})
</script>
</head>
<body>
<ul>
	<li class="menu" data-url="board">게시판</li>
	<li class="menu" data-url="member">회원가입</li>
	<li class="menu active" data-url="login">로그인</li>
</ul>
<div id="result">페이지 조회</div>
</body>
</html>