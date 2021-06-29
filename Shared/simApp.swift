//
//  simApp.swift
//  Shared
//
//  Created by Aeneas on 2021/6/29.
//

import SwiftUI

@main
struct simApp: App {
    // 数据持久化的Controller
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                // 注入环境变量
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
