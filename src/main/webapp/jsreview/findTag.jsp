<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210222_JS Forms</title>
<script>
	// 클릭 시 이미지 크기 작게
	function toSmall(){
		var imgs = document.getElementsByTagName('img');
		for(i = 0; i<imgs.length; i++){
			// 현재 이미지 크기 확인
			var s = imgs[i].width;
			// 크기를 100 빼기
			imgs[i].style.width = parseInt(s) - 100 + "px";
		}
	}
	
	function toBig(){
		var imgs = document.getElementsByTagName('img');
		for(i = 0; i<imgs.length; i++){
			var s = imgs[i].width;
			imgs[i].style.width = parseInt(s) - 100 + "px";
		}
	}
</script>
</head>
<body>
<button type="button" onclick="toSmall()">작게</button><br>
<button type="button" onclick="toBig()">리셋</button><br>
<img id="img1" style="width: 500px" src="../images/nick.png">
<img class="backimg" style="width: 600px" src="../images/sloth.jpg">
<img name="backimg" style="width: 700px" src="../images/woody.png">
</body>
</html>