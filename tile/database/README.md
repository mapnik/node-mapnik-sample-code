The `point_vector.xml` is generated with:

   xmllint --noent template.xml > point_vector.xml


This removes the usage of entities with are not supported in the node-mapnik binaries after > 1.4.4: https://github.com/mapnik/node-mapnik/blob/master/CHANGELOG.md#144