const http = require("http");

const server = http.createServer((req, res) => {
    // set HTTP headers
    res.writeHead(200, {
        'Content-Type': 'text/plain'
    });

    // Send response body
    res.end('Hi');
});

const PORT = 9000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});