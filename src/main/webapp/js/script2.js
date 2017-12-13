var btn = document.getElementById("btn");
var pageCounter = 1;
var CLOUDINARY_URL = 'https://api.cloudinary.com/v1_1/des6rntql/image/upload';
var CLOUDINARY_UPLOAD_PRESET = 'qopgfdve';

$( document ).ready(function() {

$("#btn").on('click', function(){
	var ourRequest = new XMLHttpRequest();
	ourRequest.open('GET', CLOUDINARY_URL);
	ourRequest.onload = function(){
		var ourData = JSON.parse(ourRequest.responseText);
		console.log(ourData[0]);
		
	};

});


});

function renderHTML(data){
	var htmlString = "";
	
	for(i = 0; i < data.length; i++){
		htmlString += "<p>" + data[i].name + " is a " + data[i].species +  "</p>";
	}
	$('#animal').append(htmlString)

}

function main(params) {
	  return new Promise(function (resolve, reject) {
	    var res = {};

	    const VisualRecognitionV3 =
	      require('watson-developer-cloud/visual-recognition/v3');

	    var url = params.url || 'https://gateway-a.watsonplatform.net/visual-recognition/api' ;
	    var use_unauthenticated =  params.use_unauthenticated || false ;

	    const visual_recognition = new VisualRecognitionV3({
	      'api_key': params.api_key,
	      'version_date': '2016-05-20',
	      'url' : url,
	      'use_unauthenticated': use_unauthenticated
	    });

	    visual_recognition.classify({'url': params.imageurl}, function(err, res) {
	      if (err)
	        reject(err);
	      else
	        resolve(res);
	    });
	  });
	}

	const defaultParameters = {
	  'api_key': '',
	  'imageurl': 'https://raw.githubusercontent.com/watson-developer-cloud/doc-tutorial-downloads/master/visual-recognition/fruitbowl.jpg',
	  'url' : 'https://sandbox-watson-proxy.mybluemix.net/visual-recognition/api',
	  'use_unauthenticated' : true
	}

	if (require.main === module)
	  main(defaultParameters)
	    .then((results) => console.log(JSON.stringify(results, null, 2)))
	    .catch((error) => console.log(error.message));
	
	
	
	