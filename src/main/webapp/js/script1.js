window.onload = function() {
  $("#owl-example").slideUp("slow", "swing");
  $("#texts").append("WHAT WAS THAT? Click the Arrow")
};

$( document ).ready(function() {
	
   
    $( ".display" ).click(function( event ) {
        $("#owl-example").slideToggle("slow", "swing");
        $("#texts").toggleClass("hidden");
           });


    $( ".btn2" ).click(function( event ) {
        $("p").slideDown();
         $(".new").slideDown();
               });
    $("#b").click(function(event){
        $(".new").animate('red')
    });




    $( "li" ).hover(
        function() {
          $( this ).addClass("nav-hover");
        }, function() {
          $( this ).removeClass("nav-hover");
        }
      );


      $('.pic').hover(function() {
        $(this).addClass('transition');
    }, function() {
        $(this).removeClass('transition');
    });

    
     

});

$(document).ready(function() {
    
     $("#owl-example").owlCarousel();
    


   });   


//       // arrow button
//       var favoriteButton = document.querySelector('#favorite'),
//       printButton = document.querySelector('#print'),
//       downloadButton = document.querySelector('#download');
  
//   TweenMax.set('svg', {
//     visibility: 'visible'
//   });
  
//   var tlFavorite = new TimelineMax({paused: true});
  
//   tlFavorite
//   .to('#favorite__text', 0.15, {
//     opacity: 0
//   })
//   .to('#favorite__rect', 0.30, {
//     morphSVG: '#favorite__icon',
//     ease: Power3.easeOut
//   });
  
//   favoriteButton.addEventListener('mouseenter', function() {
//     tlFavorite.play();
//   });
//   favoriteButton.addEventListener('mouseleave', function() {
//     tlFavorite.reverse();
//   });
  
//   var tlPrint = new TimelineMax({paused: true});
  
//   tlPrint
//   .to('#print__text', 0.15, {
//     opacity: 0
//   })
//   .to('#print__rect', 0.30, {
//     morphSVG: '#print__icon',
//     ease: Power3.easeOut
//   });
  
  
//   printButton.addEventListener('mouseenter', function() {
//     tlPrint.play();
//   });
//   printButton.addEventListener('mouseleave', function() {
//     tlPrint.reverse();
//   });
  
//   var tlDownload = new TimelineMax({paused: true});
  
//   tlDownload
//   .to('#download__text', 0.15, {
//     opacity: 0
//   })
//   .to('#download__rect', 0.30, {
//     morphSVG: '#download__icon',
//     ease: Power3.easeOut
//   });
  
//   downloadButton.addEventListener('mouseenter', function() {
//     tlDownload.play();
//   });
//   downloadButton.addEventListener('mouseleave', function() {
//     tlDownload.reverse();
//   });