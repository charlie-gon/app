<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class 생성/삭제</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	.menu{border: 1px solid red;}
	.active{background-color: turquoise;}
</style>
<script>

	$(function(){
		// li 태그에 클릭 이벤트
		$('li.menu').on("click", function(){
			//alert($(this).html());
		    //alert(this.innerHTML);
		    $('li').removeClass("active");
		    $(this).addClass("active");
		});
	});
	
// $('.active').data('num') = active 클래스 data-num값 호출
</script>
</head>
<body>
<ul>
	<li class="menu" data-num="1">게시판</li>
	<li class="menu" data-num="2">회원가입</li>
	<li class="menu active" data-num="3">로그인</li>
	<li class="menu" data-num="4">QnA</li>
</ul>
</body>
</html>