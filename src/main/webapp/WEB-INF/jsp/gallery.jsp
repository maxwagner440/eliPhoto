<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file ="/WEB-INF/jsp/common/header.jspf" %>
<link href='https://fonts.googleapis.com/css?family=Akronim' rel='stylesheet'>
<body >
<script>


</script>
            
            <header>
            <div class="main-nav">
                <nav>
                    <ul>
                    	<c:url value="/" var="home"/>
                        <li id="list1"><a href="${home}">Home</a></li>
                        <c:url value="/about" var="about"/>
                        <li id="list2"><a href="${about }">About</a></li>
                        <c:url value="/contact" var="contact"/>
                        <li id="list3"><a href="${contact }">Contact</a></li>
                        
                        <c:url value="/gallery" var="gallery"/>
                        <li id="list4" ><a href="${gallery }">Gallery</a></li>
                        
                        <li id="list5"><a href="#">Store</a></li>
                        <li id="list6"><a href="#">FAQ</a></li>
                    </ul>
                </nav>
                </header>

<br>
<br>
<br>
		<c:url var="gallery" value="/gallery"/>
		<form action="${gallery}" method="POST">
		<input type="hidden" name="destination" value="${param.destination}"/>
			<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
		<input type="hidden" name="category" value="Nature"/>
		<input type="submit" value="Action"/>
	
	</form>
	<div class="wrapper">
		<c:forEach items="${pictures}" var="picture">
			<div>
				<img class="pic-gallery" src="img/${picture.fileName }.jpg"/>
				<div class="bottom-right"><c:out  value="${picture.title }"/></div>
			</div>
			
		</c:forEach>
		<c:forEach items="${pictures}" var="picture">
			<div>
				<img class="pic-gallery" src="img/${picture.fileName }.jpg"/>
				<div class="bottom-right"><c:out value="${picture.title }"/></div>
			</div>
			
		</c:forEach>
		
	</div>