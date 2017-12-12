<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file ="/WEB-INF/jsp/common/header.jspf" %>
<c:url value="about" var="title"/>

<h2>Eli Carr</h2>

<p>Bio Here
</p>

<c:url value="img/eli1.jpg" var="pic1"/>

<img src="${pic1 }" class="fixed-bg"/>


