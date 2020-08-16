//
//  ImagesResponse.swift
//  360Example
//
//  Created by Belal medhat on 7/6/20.
//  Copyright © 2020 Belal medhat. All rights reserved.
//

import Foundation
struct Imgresponse:Codable {
    var success:Int?
    var error:[String]?
    var data:[String]?
}
