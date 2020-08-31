//
//  ExampleUsage.swift
//  Robots-a-Pencils
//
//  Created by Matheus Ruschel on 2020-08-31.
//  Copyright © 2020 Matheus Ruschel. All rights reserved.
//

import Foundation


class ExampleUsage {
    
    class SomeRemoteStore: RemoteStore {
        func transmit(transmitableObject: TransmittableObject, completion: (APIReturnType) -> Void) {
            
            // call generic toDictionary function to get transmitable structure
            let jsonObject = transmitableObject.toDictionary()
            
            // call some transmission code (Firestore, URLSession, etc.) and pass jsonObject
            
            completion(.success(transmitableObject))
        }
    }
    
    
    func testUsage() {
        // create some remote store (could be any)
        let remoteStore = SomeRemoteStore()
        
        // instantiate RPComment object by passing JSON object
        let comment = RPComment(rawDictionary: [:])
        
        remoteStore.transmit(transmitableObject: comment, completion: { returnObject  in
            
            switch returnObject {
            case .success(_):
                print("success")
            case .failure(_):
                print("error")
            }
        })
        
    }
    
    
    
}
