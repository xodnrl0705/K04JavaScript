<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
//선언부 선언

//start에서 end사이의 baesu의 합을 구하는 메소드
public int getBaesu(int start, int end, int baesu){
	
	int sum = 0;
	//start에서 end까지 반복한다.
	for(int i=start; i<=end; i++){
		//증가하는 i를 baesu로 나눠서 떨어지는값을 구한다.
		if(i%baesu==0){
			//해당 값을 누적한다.
			sum += i;
		}
	}
	return sum;
}
/*
public int getBaesu(int sNum, int lNum, int input){
	
	int hap = 0;
	
	for(int i=sNum; i<=lNum; i++){
		if(i % input==0){
			hap += i;
		}
	}
	return hap;
}
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MethodDefine.jsp</title>
</head>
<body>
	<h2>선언부에서 메소드 정의</h2>
	<h3>스크립트렛에서 결과값 출력</h3>
	<%
	/*
	연습문제] 1부터 100사이의 숫자중 3의배수의 합을
		반환하는 함수를 선언후 결과를 출력하시오.
		함수명 : getBaesu()
	*/
		int hapResult = getBaesu(1, 100, 3);
		out.println("1~100사이의 3의배수의 합:"+
			hapResult);
	%>
	
	<h3>표현식에서 결과값 출력</h3>
	1~200사이의 숫자중 5의배수의 합은?
		<%=getBaesu(1, 200, 5) %>
</body>
</html>