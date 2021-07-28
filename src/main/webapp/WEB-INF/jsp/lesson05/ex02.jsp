<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문</title>
</head>
<body>

	<h1>조건부 (c: choose,c:when ,c:otherwise)</h1>
	<c:set var="weight">75</c:set>
	<c:choose>
		<c:when test="${weight <=70 }">
			치킨
			</c:when>

		<c:when test="${weight<=80 }">
		샐러드
		</c:when>
		
		<c:otherwise>
		굶는다.
		</c:otherwise>
	</c:choose>
	
	<h1>2.반복문 (c:foreEach)</h1>
	<!-- money in pocket -->
	
	<!-- 0~5까지 6번 -->
	<c:forEach var="i" begin="0" end="5" step="1">
	${i}
	</c:forEach>
	<br>
	
	<!-- 16~20  :5번 -->
	<c:forEach var="j" begin="16" end="20" step="1" varStatus="status">
	j : ${j}
	current : ${status.current},
	first(반복문이 첫 회 돌았을때) : ${status.first},
	last(반복문이 마지막 회에 돌았을때 찍힌다.): ${status.last },
	count: ${status.count },
	index: ${status.index }<br>
	</c:forEach>
	
	
	<%-- 서버에서 가져온 리스트 --%>
	<c:forEach var="fruit" items="${fruits}" varStatus="status">	
	${fruit} ::::${status.count} ::::::	${status.index}<br>
	</c:forEach>
	<br>
	
	<%--서버에서 가져온 리스트맵 --%>
	<c:forEach var="user" items="${users}" varStatus="status">
	<h3>${status.count}번째 사람 정보</h3>
	이름 : ${user.name}<br>
	나이 : ${user.age}<br>
	취미 : ${user.hobby}
	</c:forEach>



	<%-- 테이블 구성 --%>
	<table border="1">
		<thead>
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>나이</td>
				<td>취미</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users}" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${user.name}</td>
					<td>${user.age}</td>
					<td>${user.hobby}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>