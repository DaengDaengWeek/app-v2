//
//  ContentView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var currentScreen: Screen = .main

    enum Screen {
        case main
        case walk
        case hospital
    }

    var body: some View {
        switch currentScreen {
        case .main:
            MainView(onNavigate: { screen in currentScreen = screen })
        case .walk:
            WalkView(onHome: { currentScreen = .main })
        case .hospital:
            HospitalView(onHome: { currentScreen = .main })
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
