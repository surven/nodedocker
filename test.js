var http = require('http');
server = http.createServer(function (req, res) {
  res.writeHeader(200, {"Content-Type": "text/plain"});
  res.end("Hello docker nodejs\n");
})
server.listen(8080);
console.log("http server start @8080");
