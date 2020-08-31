//
//  RemoteStore.swift
//  Robots-a-Pencils
//
//  Created by Matheus Ruschel on 2020-08-31.
//  Copyright © 2020 Matheus Ruschel. All rights reserved.
//

import Foundation

typealias APICompletionBlock = (APIReturnType) -> Void

// By implementing this protocol we can have several remote stores that can trasnmit data in a different manner, without ever having to change the logic in other modules utilizing it.
protocol RemoteStore {
    func transmit(transmitableObject: TransmittableObject, completion: APICompletionBlock)
}
