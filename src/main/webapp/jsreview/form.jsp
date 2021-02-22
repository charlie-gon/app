<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210222_JS Forms</title>
<script>
	// https://www.w3schools.com/js/js_validation.asp

	function validateForm() {
		var x = document.forms["myForm"]["fname"].value;
		if (x == "") {
			alert("이름을 입력하세요!");
			return false;
		}

		// 값 접근
		//var job = document.forms[0].elements[1].value;
		//var job = document.getElementsByName("job")[0].value;
		//var job = document.forms["myForm"]["job"].value;
		//var job = document.myForm.job.value;
		var job = document.myForm.job.selectedIndex;

		if (job <= 0) {
			alert("직업을 선택하세요!");
			return false;
		}
		
		// 체크박스 적어도 하나이상 체크여부 확인 
		// 참고: https://allg.tistory.com/6
		var hobby = document.getElementsByName("hobby");
		for(i=0; i<hobby.length; i++){
			if(!hobby[i].checked){
				alert("취미를 선택하세요!");
				return false;
			}
		}
		
		// 체크박스 과제
		// 체크된 갯수가 하나 이상인지 체크(for)
		//var checkedDesign = document.myForm.hobby[0].checked = 'true';

		for(i=0; i<document.myForm.hobby.length; i++){
			if(document.myForm.hobby[i].checked){
			}
				alert("하나만 체크하세요!");
				return false;
		}
		document.forms["myForm"].submit();
	}
</script>
</head>
<body>

<form name="myForm" action="action_page.jsp" method="post">
Name: <input type="text" name="fname">
		
<select name="job">
		<option value="">선택</option>
		<option value="design">디자이너</option>
		<option value="pgm">프로그래머</option>
</select><br> 
취미 
<input type="checkbox" name="hobby" value="read">독서 
<input type="checkbox" name="hobby" value="jog">달리기
<button type="button" onclick="validateForm()">등록</button>
</form>

</body>
</html>