<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210223_JQuery_AJAX01</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		$('#btn').on('click', function(){
			var param = "userId=" + $("#userId").val();
			var url = "../../FindName";
			
			// 1.load
			//$('#demo').load(url + "?" + param); // ?userId="param"		
					
			// 2. post, get
			// get, post 이름만 바꾸면 된다
			// 참고: https://api.jquery.com/jQuery.get
			param = {userId: $('#userId').val(), dept: "개발"} // ?userId=aaa$dept="개발"
			$.post(url, param, function(response){ // response: variable
				$('#demo').append("post: " + response + "<br>");
			});
			
			// 3. ajax
			// 참고: https://api.jquery.com/jQuery.ajax/
			$.ajax(url, {
				//async: true, // 비동기(동시에 출력)
				async: false, // 동기(one by one)
				success: function(response){ // response: variable
					$('#demo').append("ajax: " + response + "<br>");
				},
				data: param
			});
		});
	});
</script>
</head>
<body>


<div id="demo">
<h2>The XMLHttpRequest Object</h2>
</div>
<input id="userId">
<button type="button" id="btn">Change Content</button>

</body>
</html>