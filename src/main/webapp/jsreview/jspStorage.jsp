<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210224_jspStorage</title>
</head>
<body>
<script>
	function save(){
		localStorage.setItem("name", "John Doe");
	}
	function del(){
		localStorage.removeItem("name");
	}
</script>
<button type="button" onclick="save()">저장</button>
<button type="button" onclick="del()">삭제</button>
<a href="../index.jsp">이동</a>
</body>
</html>