//
//  Requester.swift
//  Dessert
//
//  Created by Juan Manuel Moreno on 16/10/2019.
//  Copyright © 2019 Juan Manuel Moreno. All rights reserved.
//

import Foundation
import Alamofire

class Requester: NSObject {
    
    // MARK: - Shared
    
    static let shared = Requester()
        
    // MARK: - Init
    
    override init() {
        super.init()
    }
    
    // MARK: - Character
    
    var session = URLSession.shared
            
    // MARK: Request

    static func getMocky(_ completionHandlerForMocky: @escaping (_ success: Bool, _ mocky: Mocky?, _ error: String?) -> Void) {

        Alamofire.request(configureUrl()).responseJSON { response in
            if let status = response.response?.statusCode {
                switch(status){
                case 200:
                    print("Response OK")
                default:
                    let errorMessage = "Response KO: \(status)"
                    completionHandlerForMocky(false, nil, errorMessage)
                }
            }

            if let jsonObjectResult: Any = response.result.value {
                let jsonObjectResultDictionary = jsonObjectResult as! [[String:AnyObject]]
                debugPrint("Result \(jsonObjectResultDictionary)")

                if let mocky: Mocky? = Mocky(dictionary: jsonObjectResultDictionary[0]) {
                    completionHandlerForMocky(true, mocky, nil)
                } else {
                    completionHandlerForMocky(false, nil, "error")
                }
            }
        }
    }
    
    // MARK: - Response
    
    struct JSONResponseKeys {
        
        static let mockyId = "id"
        static let type = "type"
        static let name = "name"
        static let ppu = "ppu"
        static let batters = "batters"
        static let batter = "batter"
        static let topping = "topping"
    }

    // MARK: - Util
    
    static func configureUrl() -> URL {
        var components = URLComponents()
        components.scheme = Requester.Constants.ApiScheme
        components.host = Requester.Constants.ApiHost
        components.path = Requester.Constants.ApiPath
        return components.url!
    }

}
