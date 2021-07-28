<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	<c:set var="number">12345678</c:set>
	<h1>숫자 출력</h1>

	<fmt:formatNumber value="${ number}">
	</fmt:formatNumber>

	<h1>타입 속성</h1>
	<fmt:formatNumber value="${ number}" type="number">
	</fmt:formatNumber>
	<br> 숫자 3자리마다 쉼표제거 :
	<fmt:formatNumber value="${ number}" type="number" groupingUsed="false">
	</fmt:formatNumber>
	<br>

	<%--퍼센트 100% ==> 1 --%>
	100% :
	<fmt:formatNumber value="1" type="percent">
	</fmt:formatNumber>
	<br> 40% :
	<fmt:formatNumber value="0.4" type="percent" />
	<br> 통화 (원) :
	<fmt:formatNumber value="${number}" type="currency" />
	<br> 통화 (달러) :
	<fmt:formatNumber value="${number}" type="currency" currencySymbol="$" />
	<br>


	<h1>var로 변수에 저장</h1>
	<fmt:formatNumber value="${number }" type="currency" currencySymbol="$"
		var="doller" />
	달러 EL로 출력 : ${doller }

	<h1>pattern</h1>
	3.14 :<fmt:formatNumber value="3.14" /><br> 
	3.14(0.0000)<fmt:formatNumber value="3.14" pattern="0.0000" /><br>
	3.14(#.####)<fmt:formatNumber value="3.14" pattern="#.####" /><br>
	3.141592(#.####)<fmt:formatNumber value="3.141592" pattern="#.####" />
	<br>
	<h1>Date 객체를 String 형태로 출력</h1>
	<fmt:formatDate value="${today}" var="pattern1" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/>
	pattern1 : ${pattern1 }<br>

	<fmt:formatDate value="${today}" var="pattern2" pattern="yyyy/MM/dd HH:mm:ss"/>
	pattern2 : ${pattern2 }<br>
	
	<h1>String을 date객체로 변환</h1>
	<fmt:parseDate value="${pattern2}" pattern="yyyy/MM/dd HH:mm:ss" var="date2"/>
	Date 객체 : ${date2}
	
	
	
	
</body>
</html>