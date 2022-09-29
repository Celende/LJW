<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@charset "UTF-8";
@font-face {
    font-family: 'GangwonEduSaeeum_OTFMediumA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
	
	* {
	font-family: 'GangwonEduSaeeum_OTFMediumA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff') format('woff');
    font-size: 30px;
	}
	
	#container {
		width: 1000px;
		height: 800px;
		margin: 0 auto;
	}
	
	#header {
		height : 50px;
		background-color: cornflowerblue;
		padding: 20px;
		border-bottom: solid 3px;
		border-bottom-color: white;
		position: relative;
	
	}
	
	#contents {
		width: 770px;
		height : 700px;
		float: left; /* 둘 다 left면 body에서 먼저 있는 애가 left로 잡히고 그 다음이 left로 잡힘 */
		background-color: lightsteelblue;
	}
	
	#left-sidebar {
	
		background-color: cornflowerblue;
		width: 230px;
		height : 700px;
		float: left;
	}
	
	.header_logo {
		font-size: 40px;
		font-weight: bold;
		color: white;
		position: absolute;
		left: 20px;
		bottom: 20px;
	}
	
	.header_image {
		position: absolute;
		bottom: 10px;
		right: 10px;
	}
	
	.header_page {
		position: absolute;
		bottom: 20px;
		left: 250px;
		font-size: 40px;
		color: white;
		font-family: 'GangwonEduSaeeum_OTFMediumA';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduSaeeum_OTFMediumA.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
		}
	
	.header_name {
		position: absolute;
		bottom: 25px;
		font-weight: bold;
		font-size: 25px;
		color: white;
		right: 100px;
	}
	
	.main_menu_btn {
	
		display: flex;
		background-color: white;
		border: 1px solid black;
		justify-content: center;
		margin: 15px;		
		padding: 20px;
		
	
	}
	
	.main_menu_btn:hover {
		color: cornflowerblue;
		box-shadow: 3px 3px #00008B;
	}
	
	#schedule {
		border: solid 2px;
		border-color: white;
		margin: 15px;
		height: 320px;
		background-color: white;
	  
	}
	
	#patient_info{
	
		border: solid 2px;
		border-color: white;
		margin: 15px;
		height: 320px;
		background-color: white;
	}
	
	
	#footer {
		height : 130px;
		clear : both; /* 나는 flat를 따르지 않을 거란다~ */
		background-color: cornflowerblue;
		border-top: solid 3px;
		border-top-color: white;
		padding-left: 10px;
	}
	
	
	a {
		text-decoration: none;
		color: inherit;
	}
	
	/* content부분 css 시작 */
	
	#patient_manage_table
	{
		padding:20px;
	}
</style>




</head>


<body>
  <div id="container">
  
  	<div id="header">
  		<a href="3-layout.html" class="header_logo"><i class="fa-solid fa-hand-holding-medical"></i> CareBare</a>
  		<span class="header_page">메인페이지</span>
  		<span class="header_name">김준완</span>
  		<a href="profile.jsp" class="header_image"><img id="myphoto" alt="" src="../images/myphoto.png" style="width: 60px"></a>
  	</div>
  	
  	
  	<div id="left-sidebar">
   	
  			<div class="main_menu_btn">
				<a href="">환자정보검색</a>
			</div>
			<div class="main_menu_btn">
				<a href="">예약조회</a>
			</div>
			<div class="main_menu_btn">
				<a href="../patientManage/patientManage.jsp">내환자</a>
			</div>
			<div class="main_menu_btn">
				<a href="drug.jsp">의약품조회</a>
			</div>
			<div class="main_menu_btn">
				<a href="">공유게시판</a>
			</div>

			<div class="main_menu_btn">
				<a href="view/todo/list.jsp">list</a>
			</div>
  	</div>
  	
  	
  	
  	<div id="contents">
  		
  		<table class="patient_manage_table" border="2">
  		<caption>환자관리</caption>
	  		<tr><th>환자번호</th><th>환자이름</th><th>생년월일</th><th>성별</th><th>연락처</th><th>보호자연락처</th><th>주소</th><th>버튼</th></tr>
	  		<tr><td>1</td><td>장하영</td><td>생년월일</td><td>여</td><td>010-1111-2222</td><td>010-1111-2222</td><td>주소</td></tr>
	  		<tr><td>1</td><td>장하영</td><td>생년월일</td><td>여</td><td>010-1111-2222</td><td>010-1111-2222</td><td>주소</td></tr>
	  		<tr><td>1</td><td>장하영</td><td>생년월일</td><td>여</td><td>010-1111-2222</td><td>010-1111-2222</td><td>주소</td></tr>
<%--   		<c:foreach>
  			<c:if test=" ">
  			<tr><td></td><td></td><td></td><td></td><td></td></tr>
  			</c:if>
  		</c:foreach> --%>
  		
  		</table>
  		
  		<div class="button">
	  		<div class="patient_manage_button">
	  			<input type="button" onclick="location.href='myPatientList.jsp'" value="자세히보기">
	  			<input type="button" onclick="location.href='patientManageDetail.jsp?patient_no=${patient_no}'" value="자세히보기">
	  			<input type="button" onclick="" value="자세히보기">
	  			<input type="button" onclick="" value="자세히보기">
	  			<input type="button" onclick="" value="자세히보기">
	  		</div>
	  		
	  		<div class="patient_manage_button">
	  		
	  		</div>
	  		<div class="patient_manage_button">
	  		
	  		</div>
  		</div>
  		
  	</div>
  	
  	
  	<div id="footer">
  		<h2>CareBare</h2>
  		서울 마포구 신촌로 176 중앙빌딩 / 대표자:정중앙
  		TEL:02-313-1711
  	</div>
  	
  	</div>
</body>
</html>