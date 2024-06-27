//
//  Expense_TrackerApp.swift
//  Expense Tracker
//
//  Created by Pavel Markitantov on 24/11/2022.
//

import SwiftUI

@main
struct Expense_TrackerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}


