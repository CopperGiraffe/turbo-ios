import Foundation

public struct VisitProposal {
    public let url: URL
    public let options: VisitOptions
    public let properties: PathProperties
    public let parameters: [String: Any]?
    
    public init(url: URL, 
                options: VisitOptions,
                properties: PathProperties = [:],
                parameters: [String: Any]? = nil) {
        self.url = url
        self.options = options
        self.properties = properties
        self.parameters = parameters
    }
}
