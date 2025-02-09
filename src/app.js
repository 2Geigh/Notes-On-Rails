const http = require("http");
const url = require("url");

const server = http.createServer((req, res) => {
    const parsedURL = url.parse(req.url, true);

    if (req.method === "GET") {
        if (parsedURL.pathname === "/") {
            res.writeHead(200, {'content-type':'text/html; charset=utf-8'});
            res.end('Homepage');
        }
        else if (parsedURL.pathname === "/add") {
            res.writeHead(200, {'content-type':'text/html; charset=utf-8'});
            res.end("Add a person")
        }
        else if (parsedURL.pathname === "/delete") {
            res.writeHead(200, {'content-type':'text/html; charset=utf-8'});
        }
        else {
            res.writeHead(404, {'content-type':'text/html; charset=utf-8'});
        }
    }

    else {
        res.writeHead(405, {'content-type':'text/html; charset=utf-8'});
        res.end("Method not allowed");
    }

});

const PORT = 9000;
server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}/`);
});