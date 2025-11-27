//
//  JSONParser.swift
//  SRUtil
//
//  Created by Apple on 2025/11/19.
//

import Foundation
import HandyJSON
import SwiftyJSON

public class JSONParser {
    
    /// String -> Model
    public static func jsonParse<T: HandyJSON>(from jsonString: String, to type: T.Type) -> T? {
        return T.deserialize(from: jsonString)
    }
    
    /// Dictionary [String: Any] -> Model
    public static func jsonParse<T: HandyJSON>(from dict: [String: Any], to type: T.Type) -> T? {
        return T.deserialize(from: dict)
    }
}
