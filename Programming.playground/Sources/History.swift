import Foundation
import SwiftUI

struct History {
    let id: Int
    let title: String
    let color: Color
    let subtitle: String
    let subtitleImage: String
    let headerImage: String
}

class DataSource {
    static let shared = DataSource()
    init(){}
    
    var historyData = [
        History(id: 1, title: "1st Generation Language", color: .blue, subtitle: "Machine-Level Code", subtitleImage: "", headerImage: "mc5"),
        History(id: 2, title: "2nd Generation Language", color: .orange, subtitle: "Assembly Code", subtitleImage: "", headerImage: "asb5"),
        History(id: 3, title: "3rd Generation Language", color: .red, subtitle: "High-Level Code", subtitleImage: "", headerImage: "hlg7"),
    ]
    
}
