import PackageDescription

let package = Package(
    name: "kitura-server-swift",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 4)
    ]
)
