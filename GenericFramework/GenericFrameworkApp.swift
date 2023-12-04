//
//  GenericFrameworkApp.swift
//  GenericFramework
//
//  Created by Avinash Ravipati on 11/12/23.
//

import SwiftUI
import SuperwallKit

@main
struct GenericFrameworkApp: App {
    let persistenceController = PersistenceController.shared

    init() {
        print("Init method called")
        if let apiKey = ProcessInfo.processInfo.environment["API_KEY"] {
            print("API Key found: \(apiKey)")
        } else {
            print("API Key not found")
        }
        configureSuperwall()
    }
    private func configureSuperwall() {
            
            guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
                //If no API Code found, initialize with empty API string
                Superwall.configure(apiKey: " ")
                return
            }
            Superwall.configure(apiKey:apiKey)
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
