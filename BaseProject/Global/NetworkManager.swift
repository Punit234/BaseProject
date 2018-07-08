//
//  NetworkManager.swift
//  JamboMart
//
//  Created by Punit Teraiya on 07/07/17.
//  Copyright © 2017 Punit Teraiya. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import ReachabilitySwift

let baseURL = ""

enum EndPoint : String {
    
    case Login = "login"
    case Register = "register"
}

class NetworkManager {
 
    func request(url : EndPoint,method : HTTPMethod,parameters : [String : Any],success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void){
     
        if Reachability()?.isReachable == true{
            
            print(parameters)
            
            //use HTTP Headers if required
            //let Header : [String : String]?
            
            Alamofire.request(
                URL(string: baseURL + url.rawValue)!,
                method: method,
                parameters: parameters)
                .validate()
                .responseJSON { (response) -> Void in
                    
                    if response.result.isSuccess {
                        let resJson = JSON(response.result.value!)
                        success(resJson)
                    }
                    
                    if response.result.isFailure {
                        let error : Error = response.result.error!
                        failure(error)
                    }
            }

            
        }else{
            
            //display no internet available message
            
            
        }
    }
    
    func uploadImage(imgData : [Data],url : EndPoint,parameters : [String : String],success:@escaping (JSON) -> Void, failure:@escaping (Error) -> Void){
    
        if Reachability()?.isReachable == true{
            
            Alamofire.upload(multipartFormData: { multipartFormData in
                
                for imageData in imgData{
                    multipartFormData.append(imageData, withName: "fileset",fileName: "file.jpg", mimeType: "image/jpg")
                }
                
                for (key, value) in parameters {
                    multipartFormData.append(value.data(using: String.Encoding.utf8)!, withName: key)
                }
            },
                             to: baseURL + url.rawValue)
            { (result) in
                switch result {
                case .success(let upload, _, _):
                    
                    upload.uploadProgress(closure: { (progress) in
                        print("Upload Progress: \(progress.fractionCompleted)")
                    })
                    
                    upload.responseJSON { response in
                        print(response.result.value!)
                        let resJson = JSON(response.result.value!)
                        success(resJson)
                        
                    }
                    
                case .failure(let encodingError):
                    print(encodingError)
                    let error : Error = encodingError
                    failure(error)
                }
            }
          
        }else{
            
            //display no internet available message
            
            
        }
   
    }
}




