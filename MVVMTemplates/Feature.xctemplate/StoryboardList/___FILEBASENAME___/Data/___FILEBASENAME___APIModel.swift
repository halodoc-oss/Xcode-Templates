//___FILEHEADER___

import Foundation

struct ___VARIABLE_productName___APIList: Codable {
    
    private enum CodingKeys: String, CodingKey {
      case result
      case nextPage = "next_page"
    }
    
    let result: [___VARIABLE_productName___APIModel]
    let nextPage: Bool
}

struct ___VARIABLE_productName___APIModel: Codable {
    
    private enum CodingKeys: String, CodingKey {
    }
}
