# node-mapnik examples

## Depends

 - Node.js v0.10.x or v0.8.x
 - Mapnik node.js bindings (`node-mapnik`)


Install `node-mapnik` like:

    npm install mapnik

A few examples have other dependencies. Install all possible like:

    npm install express generic-pool get


Examples are designed to be run from the root like:

    node ./render/app.js ./stylesheet.xml map.png


Examples are arranged into topic directories:

* **render** - Simple map to image renderer example. Start here.
* **image** - Server that just responds with a single image.
* **tile** - Example tileservers. Also includes PostGIS example. (see <https://github.com/springmeyer/coalition> for a fuller example with PostGIS) 
* **wms**  - Example WMS servers (see <https://github.com/mapbox/landspeed.js> for a real WMS server)
* **memory_datasource** - rendering of native javascript objects using in memory features created up front

## Other files

* **utils** - helper methods
* **data** - world map shapefile used in examples 
* **stylesheet.xml** - sample mapnik xml stylesheet

## Using examples

To run most examples, read the code then execute their app.js file. 

In tile examples you can view the output in polymaps via tile/index.html
