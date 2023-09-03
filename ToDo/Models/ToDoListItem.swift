//
//  ToDoListItem.swift
//  ToDo
//
//  Created by Alberto Oliveira Jr on 02/09/23.
//

import Foundation

struct ToDoListItem: Codable , Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}
