//
//  File.swift
//  Tech Social Media App
//
//  Created by Zane Jones on 3/21/23.
//

import Foundation

struct Post  {
    
    
    var user: String
    var date: Date
    var text: String
    var comments: [Comment?]
}

struct Comment {
    var user: String
    var date: Date
    var text: String
}
