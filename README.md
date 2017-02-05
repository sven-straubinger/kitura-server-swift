# kitura-server-swift

An application server, written in Swift, backed with IBM's [Kitura](https://github.com/IBM-Swift/Kitura) framework.

## Setup 

* Create folder `kitura-server-swift`
* Move to folder
* Execute `swift package init --type executable`
* Add dependency in `Package.swift`

```swift
let package = Package(
    name: "kitura-server-swift",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 4)
    ])
```

* Add following code to `Sources/main.swift`

```swift
import Kitura

// Create a new router
let router = Router()

// Handle HTTP GET requests to /
router.get("/") {
    request, response, next in
    response.send("Hello, World!")
    next()
}

// Add an HTTP server and connect it to the router
Kitura.addHTTPServer(onPort: 8090, with: router)

// Start the Kitura runloop (this call never returns)
Kitura.run()
```

* Build the project `swift build`
* Run binary `././build/debug/kitura-server-swift`
* Create Xcode project with `swift package generate-xcodeproj`
