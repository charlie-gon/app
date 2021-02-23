<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

// $('[name=hobby]').prop('checked',false), $('[name=hobby]').prop('checked',true)
// $('[name=hobby]:first').val(), $('[name=hobby]:last').val()
// $('[name=hobby]:eq(0)').attr('checked'), $('[name=hobby]:eq(1)').attr('checked')



</script>
</head>
<body>
<input id="userId" name="userId" placeholder="userId"><br>
<select name="job">
	<option value="d">디자이너</option>
	<option value="p">프로그래머</option>
</select>
<input type="checkbox" name="hobby" value="read" checked>독서
<input type="checkbox" name="hobby" value="sleep">수면
<div class="good" data-num="g1" data-name="상품1">상품1</div>
<div class="good" data-num="g2" data-name="상품2">상품2</div>
</body>
</html>