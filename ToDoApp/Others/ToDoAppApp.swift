//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Madura Dias on 2024-12-09.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoAppApp: App {
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}