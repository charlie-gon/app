<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>210222_movierank</title>
</head>
<body>
<button id="btn" onclick="loadMovie()">박스오피스조회</button>
<div id="result"></div>

<script>

	// 코드에 해당하는 영화 상세정보 조회(감독,출연배우 등등)
	function loadInfo(e){
		console.log(e);
		
		var xhttp = new XMLHttpRequest();
		xhttp.onload = function(){
			
			movieData = JSON.parse(this.responseText);
			result = movieData.movieInfoResult.movieInfo;
			console.log(result);
			
			for(mv in result){
				console.log(mv + "/" + result[mv]);
				console.log(result['movieNm']);
				document.getElementById("result").innerHTML = 
					+ "<hr>"
					+ "<div><strong>"
					+ "제목: " + result['movieNm'] + "<br>" 
					+ "감독: " + result['directors'][0].peopleNm+ "<br>"
					+ "주연: " + result['actors'][0].peopleNm+ "<br>"
					+ "장르: " + result['genres'][0].genreNm+ "<br>"
					+ "시간: " + result['showTm'] + "분<br>"
					+ "배급: " + result['companys'][0].companyNm+ "<br>"
					+ "</strong></div>";
			}
		} 
		// 아직 정확한 로직 잘 모르겠음. 좀 더 공부 필요.
		// 배우, 감독 이름 모두 출력하고자 한다면?
		
		var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd="+e;
		xhttp.open("GET", url);
		xhttp.send();
		
	}

	function loadMovie(){
		var xhttp = new XMLHttpRequest();
		xhttp.onload = function(){
			// responseText parse
			mNames = JSON.parse(this.responseText);
			
			// 이름만 출력
			var result = mNames.boxOfficeResult.dailyBoxOfficeList;
			
			for(mv of result){
				document.getElementById("result").innerHTML += 
					"<div onclick=loadInfo('"+ mv.movieCd +"')>" + mv.movieNm + mv.movieCd + "</div>";
			}
				
			/* for(i=0; i<result.length; i++){
				console.log(result[i]);
				document.getElementById("result").innerHTML += result[i].movieNm;
			} */
		}
		var url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20210221";
		xhttp.open("GET", url);
		xhttp.send();
		
	}
</script>
</body>
</html>