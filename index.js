var http = require("http");
var fs = require('fs');

http.createServer(function (req, res) {
   fs.readFile('index.html', function(err, data) {
     res.writeHead(200, {'Content-Type': 'text/html'});
     res.write(data);
     res.end();
   });
 }).listen(8083);

// Console will print the message
console.log('Server running at http://127.0.0.1:8083/');