//
//  simApp.swift
//  Shared
//
//  Created by Aeneas on 2021/6/29.
//

import SwiftUI

@main
struct simApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
