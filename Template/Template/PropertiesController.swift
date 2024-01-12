//
//  PropertiesController.swift
//  Template
//
//  Created by Erik Junghahn on 2024-01-11.
//

import Foundation
import  SwiftUI

class PropertiesController {
    
    static let sharedInstance = PropertiesController()
    var description : String!
    var primaryColor: String!
    var secondaryColor:String!

    func loadProperties() {
        let bundleID = Bundle.main.bundleIdentifier
        if let path = Bundle.main.path(forResource: bundleID, ofType: "plist") {
            //CAUTION: We are not using best practices for simplicity. Using plain string as a key and force unwrapping is prone to errors.
            if let nsDictionary  = NSDictionary(contentsOfFile: path) {
                //Load text
                self.description = nsDictionary["description"] as? String ?? ""
                
                //Load Colors
                self.primaryColor = nsDictionary["primaryColor"] as? String ?? "#FFFFFF"
                self.secondaryColor = nsDictionary["secondaryColor"] as? String ?? "#000000"
            }
        }
    }
  
    
   
}
