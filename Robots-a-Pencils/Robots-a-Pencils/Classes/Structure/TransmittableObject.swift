//
//  TransmittableObject.swift
//  Robots-a-Pencils
//
//  Created by Matheus Ruschel on 2020-08-31.
//  Copyright © 2020 Matheus Ruschel. All rights reserved.
//

import Foundation

// protocol that allows us to have any object to be transmitable by the Remote Store
protocol TransmittableObject {
    
    init(rawDictionary: [AnyHashable: Any])
    func toDictionary() -> [AnyHashable: Any]
}
