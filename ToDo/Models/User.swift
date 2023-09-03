//
//  User.swift
//  ToDo
//
//  Created by Alberto Oliveira Jr on 02/09/23.
//

import Foundation

struct User:Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

