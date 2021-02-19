<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<style>
	
</style>

</head>
<body>
<h2>Hello World!</h2>
	<div id="result">이벤트 테스트</div>
	<div id="result2">이벤트 테스트2</div>
	<table>
		<tr>
			<td></td>
		</tr>
	</table>
	<script>
	var div = document.getElementById("result");
	var div2 = document.getElementById("result2");
	
	// onclick = type
	// clickHandler = handler
	div.onclick = clickHandler;
	div2.onclick = clickHandler;
	
	function clickHandler(e){ // e = 이벤트 객체(이벤트 관련 모든 정보 담고 있음)
		var id = e.target.id // 이벤트가 발생한 대상을 가리킴
		console.log(e.clientX, e.clientY, id);
	}
</script>
</body>
</html>
