<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- $.ajax 를 사용하려면 jquery 를 넣어줘야 한다 -->
<script src="js/jquery.js"></script>
<script type="text/javascript">
	function sendRequest() {
		$.ajax({
			  url : "request_ajax.jsp"
			, type : "POST"
			, data : {"city":"Seoul","zipcode":12345}
// 		dataType : 생략가능(생략하면 자동으로 데이터타입 처리)
			, dataType : "text"
// 			응답 성공시
			, success : function(data){
				document.getElementById("text").innerHTML = data;
			}
// 			응답 실패시
			, error : function(data){
				document.getElementById("text").innerHTML = "<h3>ajax fail</h3>";
			}
		});
	}
</script>
</head>
<body>
	<h1>POST 방식의 요청</h1>
	<button type="button" onclick="sendRequest()">POST 방식의 요청 보내기</button>
	<p id="text"></p>
</body>
</html>