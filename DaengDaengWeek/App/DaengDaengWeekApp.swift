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
            WalkView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
