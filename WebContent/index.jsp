<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style>
.container {
	width: 500px;
	height: 100px;
	margin-left: auto;
	margin-right: auto;
	background-color: lightgray;
}

.sign {
	width: 20px;
}

.title {
	width: 200px;
	height: 50px;
	font-size: 30px;
	font-weight: bold;
	margin-left: auto;
	margin-right: auto;
}
.equals {
	width: 250px;
}
.footer {
	width: 500px;
	height: 25px;
	background-color: lightgray;
}
.author {
	width: 170px;
	height: 25px;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>

	<form method="post" action="calc-servlet">
		<div id="container" class="container">
			<div id="title" class="title">CALCULATOR</div>
			<div id="row1">
				<datalist id="datalist">
					<option value="+">
					<option value="-">
					<option value="/">
					<option value="*">
				</datalist>
				
				Enter first number, next sign (+, -, /, *), and last number:<br>
				<input type="number" name="firstNumber" step="any" required="required"/>
				<input type="text" name="sign" class="sign" required="required" maxlength=1 list="datalist"/>
				<input type="number" name="secondNumber" step="any" required="required"/>
				<input type="submit" name="submit" value="Calculate">
			</div>
			<div id="equals">
				<br>
				Result:<br>
				<c:if test="${request.getAttribute(\"flag\").equals(null)}">
				<c:otherwise>
				<% int flag = (int) request.getAttribute("flag"); %>
				</c:otherwise>
				</c:if>
				<c:if test="${flag == 0}"> 
					<%
						
						out.print(request.getAttribute("num1"));
						out.print(" " + request.getAttribute("sign") + " ");
						out.print(request.getAttribute("num2") + " = ");
						out.println(request.getAttribute("result"));
						
					%>
					</c:if>
			</div>
			<div id="footer" class="footer">
				<div id="author" class="author">Łukasz Kutyłowski | 2020</div>
			</div>
		</div>
	</form>
	
</body>
</html>