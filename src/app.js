const http = require("http");
const url = require("url");
const fs = require("fs");
const path = require("path");

const server = http.createServer((req, res) => {
    const parsedURL = url.parse(req.url, true);

    if (req.method === "GET") {

        if (parsedURL.pathname === "/") {
            res.writeHead(200, {'content-type':'text/html; charset=utf-8'});
            res.end('Homepage');
        }

        else if (parsedURL.pathname === "/add") {

            const absolute_path = path.resolve('src/frontend/add.html');
            console.log(`Looking for a file at: ${absolute_path}`);
            
            fs.readFile(absolute_path, 'utf8', (error, data) => {
                if (error) {
                    res.writeHead(500, {'content-type':'text/html; charset=utf8'});
                    res.end("Server error");
                }
                else {
                    res.writeHead(200, {'content-type':'text/html; charset=utf8'});
                    res.end(data);
                }
            });

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