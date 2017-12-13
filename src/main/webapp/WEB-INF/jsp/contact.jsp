<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file ="/WEB-INF/jsp/common/header.jspf" %>

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

	
	
	
	
	<div class="form-container">
		<c:out value="${success}"/>
		<c:url var="contact" value="/contact"/>
		<form action="${contact}" method="POST">
		<input type="hidden" name="destination" value="${param.destination}"/>
			<input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
			
				<div class="field-wrap">
					Name
	            	<input type="text"required autocomplete="off"  name="name"/>
	          	</div>
				<div class="field-wrap">
	            	Email
	            	<input type="email"required autocomplete="off"  name="email"/>
	          	</div>
          		<div class="field-wrap">
          			Phone Number
            		<input type="tel"required autocomplete="off"  name ="number"/>
          		</div>
          		<div class="field-wrap">
          			Message
            		<input type="text"required autocomplete="off"  name ="message" class="message" /> 
          		</div>
          		<br> <br>
          		<div class="field-wrap">
          			<button id="submit-btn" type="submit">Submit</button>
          		</div>
		</form>
</div>



<div class="fa-container">
<c:url value="https://www.facebook.com/etcarr4" var="facebook"/>
<a href="${facebook }" class="fa fa-facebook"></a>
<c:url value="https://www.instagram.com/lordcarr_/" var="instagram"/>
<a href="${instagram }" class="fa fa-instagram"></a>
</div>