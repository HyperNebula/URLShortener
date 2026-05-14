import mummy, mummy/routers
import tiny_sqlite, std/options
import jsony




proc indexHandler(request: Request) =
    var headers: HttpHeaders
    headers["Content-Type"] = "text/plain"
    request.respond(200, headers, "Hello, World!")

var router: Router
router.get("/", indexHandler)

let httpServer = newServer(router)
let port: int = 8080

echo "Serving on http://localhost:" & $port
httpServer.serve(Port(port))
