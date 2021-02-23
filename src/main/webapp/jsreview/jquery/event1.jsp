<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210223_ jquery 기초</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

// 아래 내용을 jquery로 구현

$(function(){ // = $(window).bind("load", function() 'document ready' / function 하나면 OK
	$("#btnAdd").on("click", function(){ // 직접이벤트
		$("#result").append($("<li>").html("자바")
				.css('background-color','turquoise')
				.attr('id','book') // id 값 추가
				.prop('alt','text')
				.data("num", "10")); 
	});
	$("ul").on("click", "li" , function(){ // 그룹이벤트(위임)
		$(event.target).remove(); // this가 아니라, 이벤트 대상이 필요하므로 event.target
		console.log("this = " + this);
		console.log("event target = " + event.target);
	});
});

/* $(window).bind("load", function(){
	$("#btnAdd").bind("click", function(){
		$("#result").append($("<li>").html("자바"));
	});
}); */

/* 	// 페이지 로드 이벤트
	window.addEventListener("load", function(){
		document.getElementsByTagName("ul")[0].addEventListener("click", function(event){
			//this.remove(); //== ul tag
			event.target.parentNode.removeChild(event.target); // -> target = 실제 이벤트가 발생되는 대상(li tag)
		});
		document.getElementById("btnAdd").addEventListener("click", function(){
			// create li tag
			var li = document.createElement("li");
			li.innerHTML = "자바";
			
			document.getElementById("result").appendChild(li);						
		});
	}); */
	
</script>
</head>
<body>
<button type="button" id="btnAdd">추가</button>
<ul id="result">
	<li>스프링</li>
</ul>
</body>
</html>