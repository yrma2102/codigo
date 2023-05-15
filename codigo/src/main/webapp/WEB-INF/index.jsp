<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">

</head>
<body>
<div class="container">
<p class="text-danger display-4">  <c:out value= "${error }" />  <p>
<form method="POST" action="/code">
  <div class="form-group mb-3 text-center">
    <label for="exampleInputPassword1">What is the code?</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="Code">
  </div>
  <button type="submit" class="btn btn-primary">Try Code</button>
</form>
</div>

</body>
</html>