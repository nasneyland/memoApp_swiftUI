//
//  MainListView.swift
//  swiftUImemo
//
//  Created by najin on 2023/02/05.
//

import SwiftUI

struct MainListView: View {
    //@EnvironmentObject : 공유데이터 목록 중 데이터저장소 불러오기
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        
        // Shift + Command + A 눌러서 Embed 가능 (상위 속성 선언)
        NavigationView {
            // 테이블 선언 및 데이터 바인딩
            List(store.list) { memo in
                MemoCell(memo: memo)
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        //데이터저장소 선언
        MainListView().environmentObject(MemoStore())
    }
}

