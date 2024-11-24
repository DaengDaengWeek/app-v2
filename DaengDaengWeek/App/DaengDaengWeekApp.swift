//
//  DaengDaengWeekApp.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI

@main
struct DaengDaengWeekApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
