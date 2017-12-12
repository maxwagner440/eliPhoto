package com.techelevator.beans;


public class api {

	// Our API client is hosted on jCenter, Maven Central, and JitPack.

///////////////////////////////////////////////////////////////////////////////
//Installation - via Gradle (recommended)
///////////////////////////////////////////////////////////////////////////////

//Add the client to your dependencies:
dependencies {
compile 'com.clarifai.clarifai-api2:core:2.3.0'
}

//Make sure you have the Maven Central Repository in your Gradle File
repositories {
mavenCentral()
}

///////////////////////////////////////////////////////////////////////////////
//Installation - via Maven
///////////////////////////////////////////////////////////////////////////////

/*
<!-- Add the client to your dependencies: -->
<dependency>
<groupId>com.clarifai.clarifai-api2</groupId>
<artifactId>core</artifactId>
<version>2.3.0</version>
</dependency>
*/

///////////////////////////////////////////////////////////////////////////////
//Initialize client
///////////////////////////////////////////////////////////////////////////////

new ClarifaiBuilder("YOUR_API_KEY")
.client(new OkHttpClient()) // OPTIONAL. Allows customization of OkHttp by the user
.buildSync(); // or use .build() to get a Future<ClarifaiClient>
}
