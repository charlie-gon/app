<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210222_JSON</title>
</head>
<body>
<div id="result"></div>
<script>
	var empList = [
				{id:100, name: "Kim", hiredate: "2021/02/22"},
				{id:101, name: "Lee", hiredate: "2021/02/22"},
				{id:102, name: "Choi", hiredate: "2021/02/22"}
				  ]
	// 사원 이름을 div에 출력
	//document.getElementById("result").innerHTML = emp.name;

	// 이름만 찾아서 출력
	for(i=0; i<empList.length; i++){
//		document.getElementById("result").innerText += empList[i].name + "<br>"; 
		document.getElementById("result").innerHTML += empList[i].name + "<br>"; // 태그 적용하려면 innerHTML
	}
	
	for(value of empList){ // 변수 of 배열
		document.getElementById("result").innerHTML += value.name + "<br>";
	}
	
	// 부서정보 저장
	var depts = [
				{department_id:"10" ,department_name:"Administration" ,demanager_id: "200" ,location_id: "1700"},
				{department_id:"20" ,department_name:"Marketing" ,demanager_id: "201" ,location_id: "1800"}
				]
	
	//
	var member = {name: "hong", hobbies: ["독서", "달리기"]};
	// 첫번째 취미 출력
	document.getElementById("result").innerHTML += "<br>취미: " + member.hobbies[0];
	
	// 두번째 사람의 첫번째 취미 출력
	var members = [
					{name: "hong", hobbies: ["독서", "달리기"]},
					{name: "kang", hobbies: ["스키", "달리기"]}
				  ]
	document.getElementById("result").innerHTML += "<br>두번째 사람 첫번째 취미: " + "<strong>" + members[1].hobbies[0] + "</strong>"
	
	// stringify 참고: https://www.w3schools.com/js/js_json_stringify.asp
</script>
</body>
</html>