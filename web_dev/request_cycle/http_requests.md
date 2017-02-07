<!-- What are some common HTTP status codes? -->

200 OK - The request has succeeded.

300 Multiple Choices - The requested resource has different choices and cannot be resolved into one, such as when there are several index.html pages.

301 Moved Permanently - The requested resource has been assigned a new permanent URI.

302 Found - The requested resource temporarily resides under a different URI. The client should use the Request-URI for future requests.

400 Bad Request - The request could not be understood by the server due to malformed syntax.

401 - Unauthorized - The request requires user authentication. The response must include a WWW-Authenticate header field containing a challenge applicable to the requested resource.

403 Forbidden - The server understood the request but is refusing to fulfill it.

404 Not Found - The server has not found anything matching the Request-URI.

500 Internal Server Error - The server encountered an unexpected condition which prevented it from fulfilling the request.

<!-- What is the difference between a GET request and a POST request? When might each be used? -->

GET requests data from a specified resource. The query string (name/value pairs) is sent in the URL of a GET request.
GET requests: can be cached; remain in the browser history; can be bookmarked; should never be used when dealing with sensitive data; have length restrictions; should be used only to retrieve data.

POST requests submit data to be processed to a specified resource. The query string is sent in the HTTP message body of a POST request.
POST requests: are never cached; do not remain in the browser history; cannot be bookmarked; have no restrictions on data length.


<!-- Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests? -->

Cookies remember the users stateful information, such as items added in a shopping cart in an online store, or to record the user's browsing activity. They can also be used to remember pieces of information the user typed in, such as their name, address, password, and credit card numbers.

Authentication cookies are the most common method used by web servers to know whether the user is logged in or not and which account they are logged in with. It's a security measure for the site to know whether to send a page containing sensitive information.