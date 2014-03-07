# node-mapnik examples

## Depends

 - Node.js v0.10.x or v0.8.x
 - Mapnik node.js bindings

    npm install mapnik

A few examples have other dependencies. Install all possible like:

    npm install express generic-pool get


Examples are designed to be run from the root like:

    node ./simple/render.js ./stylesheet.xml map.png


Examples are arranged into topic directories:

* **simple** - simple, single image renderers. Start here.
* **tile**   - TMS style tileservers. Also includes PostGIS example.  
* **wms**		 - WMS servers
* **memory_datasource** - rendering of native javascript objects using in memory features created up front

## Other files

* **utils** - helper methods
* **data** - world map shapefile used in examples 
* **stylesheet.xml** - sample mapnik xml stylesheet

## Using examples

To run most examples, read the code then execute their app.js file. 

In tile examples you can view the output in polymaps via tile/index.html
