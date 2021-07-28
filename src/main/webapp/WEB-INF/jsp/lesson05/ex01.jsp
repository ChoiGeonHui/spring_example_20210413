<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core 라이브러리</title>
</head>
<body>
	<h2>변수 정하기 (c:set)</h2>

	<c:set var="number1" value="100" />
	<c:set var="number2">200</c:set>

	<h4>number1: ${number1 }</h4>
	<h4>number2: ${number2 }</h4>
	<h4>number1+number2 : ${number1 +number2 }</h4>

	<h2>변수 출력하기 (c:out)</h2>
	<!--value  속성에 들어있는 값이 출력된다.  -->
	<h4>
		number :
		<c:out value="10"></c:out>
	</h4>
	<h4>
		number1 :
		<c:out value="${number1}" />
	</h4>

	<!-- 태그문구가 그대로 출력된다 -->
	<c:out value="<script>alert('출력')</script>" />

	<!-- 태그문구가 그대로 출력된다 -->
	<c:out value="<script>alert('그대로 출력')</script>" escapeXml="true"></c:out>

	<!--  스크립트가 수행된다 -->
	<%-- <c:out value="<script>alert('뜬다')</script>" escapeXml="false"></c:out> --%>

	<h2>조건문 (c:if)</h2>

	<c:if test="true">
		<h4>조건이 참이다.</h4>
	</c:if>
	
	<c:if test="${number1 > 50 }">
	<h4>number1은 50보다 크다</h4>
	</c:if>
	
	<!-- jstl 문법에서 같다 비교시 == 을 사용하지 않는다. -->
	<c:if test="${number1==100 }">
	<h4>number1은 100이다</h4>
	</c:if>
	
	<!-- 같다 비교시 eq 사용 -->
	<c:if test="${number1 eq 100 }">
	<h4>number1은 100이다</h4>
	
	</c:if>
	
	<!-- 같지 않다 -->
	<c:if test="${number2 ne 222 }">
	<h4>number2는 222가 아니다.</h4>
	</c:if>
	
	<!-- 비어있다 -->
	<c:if test="${empty number2}">
	<h4>number2는 비어있다.</h4>
	</c:if>
	
	
	<!-- 비어있지 않다 -->
	<c:if test="${not empty number2}">
	<h4>number2는 비어있지 않다.</h4>
	</c:if>
	
	<c:if test="${!empty number2}">
	<h4>number2는 비어있지 않다.</h4>
	</c:if>

</body>
</html>