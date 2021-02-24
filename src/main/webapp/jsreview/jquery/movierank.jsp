<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210222_movierank</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	// 버튼 클릭 시 박스오피스 정보 조회 -> 영화제목, 코드를 rank div에 출력
	$(function(){
		$('#btn').on('click', function(){
			$.ajax({
				url: "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221",
				success: function(obj){
					var result = obj.boxOfficeResult.dailyBoxOfficeList;
					for(mv of result){
					$('#rank').append("영화제목: ", mv.movieNm, " | ", "영화코드: ", mv.movieCd, "<br>");}
					},
				dataType: "json"
			}).done(function(){
				$('#rank').css('font-size', '30px');
			});
		});
	});
		// 영화코드 클릭 시 상세정보 출력
	$(function(){
		$(e).on('click', function(){
			$.ajax({
				url:"http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd="+e,
				success: function(obj){
					var result = obj.movieInfoResult.movieInfo;
					for(info in result){
						$('#info').append(
							"제목: " , result['movieNm'] , "<br>",
							"감독: " , result['directors'][0].peopleNm , "<br>" 
						);}
				},
				dataType: "json"
			}).done(function(){
				$('#info').css('font-size', '30px');
			});
		});
	});
</script>
</head>
<body>
<button id="btn">박스오피스조회</button>
<div id="rank"></div>
<div id="info"></div>
</body>
</html>