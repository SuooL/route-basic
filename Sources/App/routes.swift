import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get("demoGet", Int.parameter) {
        req -> String in
        let id = try req.parameters.next(Int.self)
        return "hello get \(id)"
    }
}
