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
    
    // MARK: - Character
    
    var method: String?
    
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
//                debugPrint("JSON\(jsonObjectResult)")
                
//                print("\(JSON(data: response.data!))")
                let jsonObjectResultDictionary = jsonObjectResult as! [[String:AnyObject]]
//
                debugPrint("Result \(jsonObjectResultDictionary)")

                if let mocky: Mocky? = Mocky(dictionary: jsonObjectResultDictionary[0]) {
//                    debugPrint("Foundation \(mockyId)")
//                    debugPrint("Batters \(batters)")
//                    let batters = Show.showsFromResults(results as! [[String : AnyObject]])
//                    debugPrint("Trailer: \(resultsVideoMovie.count)")
                    completionHandlerForMocky(true, mocky, nil)
                } else {
                    completionHandlerForMocky(false, nil, "error")
                }
            }
        }
    }
    
    // MARK: - Response
    
    struct JSONResponseKeys {
        
//        // Main
//        static let StatusMessage = "status_message" // Main
//        static let StatusCode = "status_code"
//
//        // Config
//        static let ConfigBaseImageURL = "base_url"
//        static let ConfigSecureBaseImageURL = "secure_base_url"
//        static let ConfigImages = "images"
//        static let ConfigPosterSizes = "poster_sizes"
//        static let ConfigProfileSizes = "profile_sizes"
//
//        // Show
//        static let Results = "results"
//        static let TotalPages = "total_pages"

        // Character
        static let mockyId = "id"
        static let type = "type"
        static let name = "name"
        static let ppu = "ppu"
        static let batters = "batters"
        static let batter = "batter"
        static let topping = "topping"
        
//        // Video
//        static let MovieVideoKey = "key"
//        }
    }

    // MARK: - Util
    
    static func configureUrl() -> URL {
        var components = URLComponents()
        components.scheme = Requester.Constants.ApiScheme
        components.host = Requester.Constants.ApiHost
        components.path = Requester.Constants.ApiPath
//////        components.queryItems = [URLQueryItem]()
////        let queryItem1 = URLQueryItem(name: Request.ParameterKeys.ApiKey, value: Request.ParameterValues.ApiKey)
////        let queryItem2 = URLQueryItem(name: Request.ParameterKeys.Language, value: Request.ParameterValues.Language)
////        let queryItem3 = URLQueryItem(name: Request.ParameterKeys.Page, value: page)
//        components.queryItems?.append(queryItem1) // api key
//        components.queryItems?.append(queryItem2) // language
//        components.queryItems?.append(queryItem3) // page
        return components.url!
    }

}
