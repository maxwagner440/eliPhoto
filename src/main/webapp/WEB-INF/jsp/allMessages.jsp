<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file ="/WEB-INF/jsp/common/header.jspf" %>

<body>
            
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
                </div>
                </header>
                
<div class="msg-container"> <h2>Inquiries:</h2>
                <c:forEach items="${messages}" var="message">
                	<div>Name: <c:out value="${message.name }"/></div>
                	<div>Date Sent: <c:out value="${message.getTrueDate() }"/></div>
                	<div>Phone Number: <c:out value="${message.number }"/></div>
                	<div>Email: <c:out value="${message.email }"/></div>
                	<div>Message: <c:out value="${message.message }"/></div>
                	
                	<br>
                </c:forEach>
</div>