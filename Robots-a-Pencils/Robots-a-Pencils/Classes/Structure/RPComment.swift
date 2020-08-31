//
//  RPComment.swift
//  Robots-a-Pencils
//
//  Created by Matheus Ruschel on 2020-08-31.
//  Copyright © 2020 Matheus Ruschel. All rights reserved.
//

import Foundation

class RPComment: TransmittableObject {
    
    var annotation: RPAnnotation?
    
    required init(rawDictionary: [AnyHashable : Any]) {
        // initialize variables through dictionary argument
        
        if let annotationObject = rawDictionary["annotation"] as? [AnyHashable : Any] {
            
            self.annotation = RPAnnotation(rawDictionary: annotationObject)
        }
    }
    
    func toDictionary() -> [AnyHashable : Any] {
        // convert structure to dictionary/JSON to transmit
        
        var returnObject = [AnyHashable : Any]()
        
        if let annotation = annotation {
            returnObject["annotation"] = annotation.toDictionary()
        }
        
        return returnObject
    }
}
