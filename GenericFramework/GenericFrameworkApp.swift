//
//  GenericFrameworkApp.swift
//  GenericFramework
//
//  Created by Avinash Ravipati on 11/12/23.
//

import SwiftUI

@main
struct GenericFrameworkApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
