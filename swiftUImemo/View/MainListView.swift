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
    
    @State private var showComposer: Bool = false
    
    var body: some View {
        
        // Shift + Command + A 눌러서 Embed 가능 (상위 속성 선언)
        NavigationView {
            // 테이블 선언 및 데이터 바인딩
            List(store.list) { memo in
                MemoCell(memo: memo)
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
            .toolbar {
                Button {
                    // 버튼 클릭 이벤트
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showComposer) {
                ComposeView() // 뷰 카드모달 형태로 띄어주기
            }

        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        //데이터저장소 선언
        MainListView().environmentObject(MemoStore())
    }
}

