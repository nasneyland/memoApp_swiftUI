//
//  MainView.swift
//  swiftUImemo
//
//  Created by najin on 2023/02/12.
//

import SwiftUI

struct MainView: View {
    
    @State private var index = 0
    
    var body: some View {
        TabView(selection: $index) {
            MemoListView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("메모")
                }.tag(0)
            UserListView(index: $index)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("친구")
                }.tag(1)
        }
        .onAppear {
            UITabBar.appearance().backgroundColor = .black
            UITabBar.appearance().unselectedItemTintColor = .white
        }
        .accentColor(.red)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
