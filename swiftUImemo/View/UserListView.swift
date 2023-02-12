//
//  UserListView.swift
//  swiftUImemo
//
//  Created by najin on 2023/02/12.
//

import SwiftUI

struct UserListView: View {
    
    @Binding var index: Int
    
    var body: some View {
        Button {
            self.index = 0
        } label: {
            Text("button")
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView(index: .constant(1))
    }
}
