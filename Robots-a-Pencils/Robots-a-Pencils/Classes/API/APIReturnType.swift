//
//  APIReturnType.swift
//  Robots-a-Pencils
//
//  Created by Matheus Ruschel on 2020-08-31.
//  Copyright © 2020 Matheus Ruschel. All rights reserved.
//

import Foundation

enum APIReturnType {
    case success(TransmittableObject)
    case failure(APIError)
}
