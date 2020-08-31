//
//  RPAnnotation.swift
//  Robots-a-Pencils
//
//  Created by Matheus Ruschel on 2020-08-31.
//  Copyright © 2020 Matheus Ruschel. All rights reserved.
//

import Foundation

class RPAnnotation: TransmittableObject {
    required init(rawDictionary: [AnyHashable : Any]) {
        // initialize variables through dictionary argument
    }
    
    func toDictionary() -> [AnyHashable : Any] {
        // convert structure to dictionary/JSON to transmit
        return [:]
    }
}
