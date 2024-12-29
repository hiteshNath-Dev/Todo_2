//
//  Todo_2App.swift
//  Todo_2
//
//  Created by hiteshNath-Dev on 29/12/24.
//

import SwiftUI


/*
 MVVM Architecture
 
 Model - manages simple data point
 View - manages the UI
 ViewModel - manages data (models) for views
 */

@main
struct Todo_2App: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
