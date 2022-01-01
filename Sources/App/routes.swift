import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return req.view.render("index", ["title": "Hello Vapor!"])
    }
    
    app.get("isbn", ":isbn") { req -> String in
        guard let isbn = req.parameters.get("isbn") else {
            throw Abort(.internalServerError)
          }
          return "Hello, \(isbn)!"
    }

    try app.register(collection: TodoController())
}
