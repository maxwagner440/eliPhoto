<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file ="/WEB-INF/jsp/common/header.jspf" %>
<link href='https://fonts.googleapis.com/css?family=Akronim' rel='stylesheet'>
<body >
            
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
                        <li id="list4"><a href="#">Gallery</a></li>
                        <li id="list5"><a href="#">Store</a></li>
                        <li id="list6"><a href="#">FAQ</a></li>
                    </ul>
                </nav>
                </header>

	
	
	
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