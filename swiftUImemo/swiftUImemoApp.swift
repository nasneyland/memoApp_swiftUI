//
//  swiftUImemoApp.swift
//  swiftUImemo
//
//  Created by najin on 2023/02/05.
//

import SwiftUI

@main
struct swiftUImemoApp: App {
    @StateObject var store = MemoStore() // 모든 저장소에서 사용할 수 있도록 선언 (여러 뷰에서 가져다 쓸 수 있음)
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
