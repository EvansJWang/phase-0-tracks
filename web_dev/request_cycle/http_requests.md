What are some common HTTP status codes?

first digit defines the class of the status code.
2 -successful
1 - informational messages - (rare)
3 - Redirection response - browser gets additional information from new location ( usually without user interaction )
4 - Error code client side - like a wrong url in address bar
5 - Error code server side - databse going down or server out of disk space
200 - most common represents a successful response.
404 - File or resource  not found

403 - Forbidden - access denied

500 - Internal Server Error 
503 - Service unavailable - Could be server is down for maintenance or just recently restarted
504 - Gateway timeout - proxy server needs to communicate with a secondary web server but access to that server timed out

What is the difference between a GET request and a POST request? When might each be used?
GET - requests data from a specified resource
POST - submits data to be processed to a specific resource

download vs upload of information
GET - your browser is asking for information to display a web page
POST - you are submitting credit card information in order to purchase something online

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookie is small pieces of data sent from a website that is stored on the users computer while the user is browsing.

The browser will download these cookies as a part of the information the server is sending in order to establish session or persisten cookies. It will then check if the user has any related cookies and reports that back to the server in order to process the website with the most user specific information such as login authentication etc.
