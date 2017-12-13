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
                </header>

<c:url value="home" var="title"/>

           
            <section class="secondary-content">
                <h2></h2>
                <p></p>
            </section> 
            

            <div id="owl-example" class="owl-carousel">
               
              <div class="owl-border"> <a href="#"><img class="pic" src="img\african.jpg"></a></div>
                <div class="owl-border"><a href="#"> <img class="pic" src="img\river.jpg"> </a></div>
                <div class="owl-border"> <a href="#"><img class="pic" src="img\lightning.jpg"></a> </div>
                 <div class="owl-border"><a href="#"><img class="pic" src="img\mountains.jpg"> </a></div>
                <div class="owl-border"><a href="#"> <img class="pic" src="img\night_sky.jpg"> </a></div>
                 <div class="owl-border"><a href="#"><img class="pic" src="img\rough_ocean.jpg"></a> </div>
                 <div class="owl-border"><a href="#"><img class="pic" src="img\skateboard.jpg"></a> </div>
              </div>
            
             


<div class="center-con">
    
    <div id="arrow" class="round display">
        <span class="span"></span>
        <span class="span"></span>
        <span class="span"></span>
        <span class="span"></span>
    </div>
    
</div>

<button id="btn">Click This</button>
            
<div id="animal"></div>

  <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
    
        
    <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat: -25.363, lng: 131.044};
        var lakewood = {lat: 42.4957, lng: -81.7970};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: lakewood
        });
        var marker = new google.maps.Marker({
          position: lakewood,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB3pAOzVVhIn_mQulSCBO354ZtacSk_ve0&callback=initMap">
    </script>





<!-- // Install the client from NPM -->
<script>

// Require the client

const Clarifai = require('clarifai');

// initialize with your api key. This will also work in your browser via http://browserify.org/

const app = new Clarifai.App({
 apiKey: 'd5cd04aa2bf64eeab5199d4b2d0459c5'
});

var ourRequest = app.models.predict(Clarifai.GENERAL_MODEL, "https://samples.clarifai.com/metro-north.jpg").then(
		  function(response) {
		    console.log(ourRequest);
		  },
		  function(err) {
		    // there was an error
		  }
		);
</script>
<!-- // You can also use the SDK by adding this script to your HTML: -->

<script type="text/javascript" src="https://sdk.clarifai.com/js/clarifai-latest.js"></script>
            <footer></footer>
            </body>
            
            </html>
