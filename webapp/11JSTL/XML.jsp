<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="x" uri = "http://java.sun.com/jsp/jstl/xml"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL XML</title>
</head>
<body>
	<c:import url ="./include/FruitList.xml" var="fruitList" charEncoding="UTF-8"/>
	${fruitList}
	<x:parse xml="${fruitList}" var="flist" /><br>
	<x:out select="$flist/fruitlist/fruit[2]/name"/><br> 
	<x:out select="$flist/fruitlist/fruit[2]/from"/><br> 
	<x:out select="$flist/fruitlist/fruit[2]/price"/><br> 
	
	<table border="1">
		<tr>
			<th>이름</th>
			<th>원산지</th>
			<th>가격</th>
		</tr>
		<x:forEach select="$flist/fruitList/fruit" var="fruit">
			<tr>
				<td><x:out select="$fruit/name"/></td>
				<td><x:out select="$fruit/from"/></td>
				<td><x:out select="$fruit/price"/></td>
			</tr>
		</x:forEach>		
		
		
	</table>
</body>
</html>











