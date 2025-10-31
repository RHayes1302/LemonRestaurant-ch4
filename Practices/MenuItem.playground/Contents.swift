import Foundation

strut MenuItems: Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var description: String
    var ingredients: [String]
    var price: Double
}
