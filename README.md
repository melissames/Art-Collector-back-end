# PXL8

### Description
PXL8 is an App using a React frontend and a Rails backend and utilizes the Artsy API and Rmagick.  The purpose of PXL8 is to analyze each image of an artwork and graph the top five colors present in each.  You can also search for a particular artist to find out the top colors in their artwork.


### Motivation
My passion is to walk the fine line between science and art and so I wanted to build something data driven that would appeal to art lovers.  When a user clicks on an artwork that appeals to them, the backend analyzes each pixel in the image and sends the frontend the top colors present.  The frontend then uses this data to create a pie graph with each section being colored by the hex code that was provided.


### Framework
The backend is Rails 2.3.3p222.  To run this on your machine see the API reference to obtain a token and run:
`rails s`
You should run this on port 3000 and run it before the [frontend](https://github.com/melissames/PXL8-front-end) and see the instructions for running the frontend of PXL8
It also uses RMagick which has a dependency of Imagemagick
For all dependencies, please see package.json


### Features
PXL8 walks on the edge of creativity and technology. Using RMagick in the Rails backend to analyze the most prevalent colors, the frontend uses this data to create an individualized pie graph.  The pie graph uses the color data obtained from the backend to color each section chart.  There is also a search feature that goes to the backend and finds the query in the database or hits the Artsy API to return and save 10 new artworks.


### API Reference
The Artsy API was used.  To obtain a token please see the [Getting Started](https://developers.artsy.net/start) page at Artsy's API website.  Once obtained, copy and paste it into the artworks controller in xapp token quotes.  


### How to Use PXL8
To add to the database, enter a search query in the frontend and it will be automatically saved in the Postgres database.


### Credits
- [Artsy API](https://developers.artsy.net/docs/search)
- [RMagick](https://github.com/rmagick/rmagick)
