<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	include지시어 : 공통으로 사용할 jsp파일을 생성한후
		현재문서에 포함시킬때 사용한다. 각각의 jsp파일 상단에는
		반드시 page지시어(Directive)가 삽입되어야한다. 
		※ 단 하나의 jsp파일에는 page지시어가 중복되어서는 안된다.
--%>
<%@ include file = "IncludePage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IncludeMain.jsp</title>
<!-- CSS코드는 양이 많으므로 외부파일로 선언하여 현재문서에 링크시킨다. -->
<link rel="stylesheet" href="./css/div_layout.css"	/>
</head>
<body>
<div class="AllWrap">
	<div class="header">
		<!-- GNB(Global Navigation Bar)영역 - 전체공통메뉴-->
		<%@ include file = "../common/Top.jsp" %>
	</div>
	<div class="body">
		<div class="left_menu">
			<!-- LNB영역(Local Navigation Bar) - 로컬메뉴 -->
			<%@ include file = "../common/Left.jsp" %>
		</div>
		<div class="contents">
			<!-- Contents 영역 -->
			<%--
			해당 변수는 외부파일에 선언하여 본 문서에 include처리되었다.
			include는 문서자체를 포함시키는 개념이므로 에러가 발생하지 않는다.
			--%>
			<h2>오늘의날짜 : <%=todayStr %></h2>
			<br/><br/>
			
			e스포츠 프로게임단 ‘에스케이텔레콤 씨에스 티원(SK telecom CS T1)’이 리그오브레전드(롤·LoL) 국내리그 최다 우승팀의 자존심을 지켰다. 미국 구단 ‘클라우드 나인’도 SNS로 T1 정상 등극을 축하했다.
			<br/><br/>
			T1은 25일 2020 우리은행 리그 오브 레전드 챔피언스 코리아(LCK) 스프링 시즌 결승전에서 젠지 e스포츠(Gen.G Esports)를 세트스코어 3-0으로 완파하고 한국 최고 LoL(롤) 명문임을 재확인했다.
			<br/><br/>
			롤(LoL), 나아가 e스포츠 역대 최고 프로게이머로 꼽히는 페이커(이상혁·24) 소속팀으로 유명한 T1은 리그 오브 레전드 챔피언스 코리아 9회 우승으로 2위 그룹보다 7번 많은 압도적인 1위를 지켰다.
			
			<br/><br/>

		</div>
	</div>
	<div class = "copyright">
	<!-- Copyright -->
		<%@ include file="../common/Copyright.jsp" %>
	</div>
</div>

</body>
</html>