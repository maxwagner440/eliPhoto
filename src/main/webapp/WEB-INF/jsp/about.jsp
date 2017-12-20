<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file ="/WEB-INF/jsp/common/header.jspf" %>

<body background="img/eli1.jpg" class="fixed-bg">
            
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
                        <li id="list4"><a href="${gallery }">Gallery</a></li>
                        <li id="list5"><a href="#">Store</a></li>
                        <li id="list6"><a href="#">FAQ</a></li>
                    </ul>
                </nav>
                </header>

<c:url value="about" var="title"/>


<h1 class="bio-font">Eli Carr</h1>
<h2 class="bio-font">Some Stuff Here</h2>
<h2 class="bio-font">Also Some Stuff Here</h2>
<p class="bio-font-body">Bio: I once pooped my pants when I bent down to grind on my boyfriend
</p>

