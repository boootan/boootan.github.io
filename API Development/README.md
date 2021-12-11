# RESTImgSvc
## By Sonny Tan
- sonnythemantan@csu.fullerton.edu

REST image service to return image based on ID number/other key.

Based on application that will provide ID number of image to lookup, as well as a SHA-1 hash of the ID Number concatenated with an API key that is shared between the application and the endpoint on the image repository.

This service is intended to run on a web server such as IIS or Apache in order to ensure availability for a production environment.

# Tools Used
- Python (Flask, hashlib)
- Apache WebServer/Microsoft Internet Information Services
