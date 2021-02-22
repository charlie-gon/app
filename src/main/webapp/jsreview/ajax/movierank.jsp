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
				document.getElementById("result").innerHTML += mv + ": " + result[mv] + "<br>";
					/* "<div><strong>"
					+ "번호: " + result.movidCd + "<br>"
					+ "제목: " + result.movieNm + "<br>"
					+ "감독: " + result.directors + "<br>"
					+ "주연: " + result.actors + "<br>"
					+ "장르: " + result.genres + "<br>"
					+ "상영시간: " + mv.showTm + "<br>"
					+ "</strong></div>"; */
			}
			
		}
		
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