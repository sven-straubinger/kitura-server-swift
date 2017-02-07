import Kitura
import SwiftyJSON

// Create a new router
let router = Router()

// Get ALL restrooms
router.get("/restrooms") {
    request, response, next in
    
    var allToilets = Toilet.dummies().map{ $0.toJSON() }
    response.status(.OK).send(json: JSON(allToilets));
    
    next()
}

// Get a single restroom
router.get("/restrooms/:identifier") {
    request, response, next in
    
    guard let identifier = Int(request.parameters["identifier"]!) else {
        response.status(.notFound).send("404 - Not found")
        next()
        return
    }
    
    var toilet = Toilet(identifier,false,"Reutlingen-Basement-1")
    response.status(.OK).send(json: JSON(toilet.toJSON()));
    
    next()
}

// Add an HTTP server and connect it to the router
Kitura.addHTTPServer(onPort: 8090, with: router)

// Start the Kitura runloop (this call never returns)
Kitura.run()
