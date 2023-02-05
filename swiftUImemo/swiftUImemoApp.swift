//
//  swiftUImemoApp.swift
//  swiftUImemo
//
//  Created by najin on 2023/02/05.
//

import SwiftUI

@main
struct swiftUImemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
