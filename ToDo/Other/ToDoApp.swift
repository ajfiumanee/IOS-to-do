//
//  ToDoApp.swift
//  ToDo
//
//  Created by Alberto Oliveira Jr on 02/09/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
