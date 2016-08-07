//
//  User.swift
//  mlhprime-hackbro
//
//  Created by Marisa Gomez on 8/6/16.
//  Copyright © 2016 Marisa Gomez. All rights reserved.
//

import Foundation

class User : NSObject {
    var username: String = String()
    var bankInformation: [String: String] = [String: String]()
    var payments: [Payment] = [Payment]()
    
    
}
