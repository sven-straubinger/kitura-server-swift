import Kitura
import SwiftyJSON

// Create a new router
let router = Router()

// Handle HTTP GET requests to /
router.get("/") {
    request, response, next in
    response.send("Hello, World!")
    next()
}

// Handle HTTP GET requests to /
router.get("/api") {
    request, response, next in
    
//    response.send("Hello, API!")
    
    var toilet = Toilet()
    response.status(.OK).send(json: JSON(toilet.toJSON()));
    
    next()
}

// Add an HTTP server and connect it to the router
Kitura.addHTTPServer(onPort: 8090, with: router)

// Start the Kitura runloop (this call never returns)
Kitura.run()
