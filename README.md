## RESTful Web Service Implementation with Docker

The project uses Maven build and is implemented using Spring Boot.

The web service contains four GET routes:
<ul>
  <li>One that displays a collection of records (List all tvshows)</li>
  <li>One that displays a single record that corresponds to an ID (List a particular tvshow)</li>
  <li>One that displays a collection of records for a given entity (List of cast for individual tvshow)</li>
  <li>One that displays a single record from a collection of a given entity (List a particular actor from the cast for individual tvshow)</li>
</ul>

## Source Data
I have used a static [JSON] as source for data. 

## Get Requests available 
List all tvshows: localhost:8081/shows  
List a particular tvshow: localhost:8081localhost:8081/shows/showId  
List of cast for individual tvshow: localhost:8081/shows/id/cast  
List a particular cast for individual tvshow: localhost:8081/shows/showId/cast/castId  

Follow the below steps to create a local environment and run this Spring Boot Application
## Step 1:
[Download] (The code from the Github Repository) and unzip the source repository or clone it

## Step 2:
In order to run the project you need to install the spring tool 4.4, you should have Docker,java JDK and Maven installed 

## Step 3:
Import the project into the spring tool 

## Step 4:
Right Click on "pom.xml" and then select "Run as" and click "maven install" 

## Step 5: 
Go to com.info.shows" right click and select "SpringShowsCastApplication.java" and select "Run as" and choose "Java Application" to start the server
Now go to the browser and type localhost:8081 and it will show you a JSON with the list of tvshows and their cast.  
To see the details of individual tvshows: localhost:8081/shows/143 or localhost:8081/shows/329 or localhost:8081/shows/72  
To see the details of cast for individual tvshows: localhost:8081/shows/143/cast or localhost:8081/shows/329/cast or localhost:8081/shows/4123001/cast  
To see the details of a particular cast for individual tvshows: localhost:8081/shows/143/cast/20942 or localhost:8081/shows/143/cast/27669 or localhost:8081/shows/329/cast/67991 or localhost:8081/shows/72/cast/5517 or localhost:8081/shows/72/cast/5368 

## Step 6 (Optional)
For the web page open "shows.html" to views the information on the shows 
