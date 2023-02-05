//
//  Memo.swift
//  swiftUImemo
//
//  Created by najin on 2023/02/05.
//

import Foundation
import SwiftUI

// Identifiable : 데이터를 리스트에 쉽게 바인딩하기 위한 프로토콜
// ObservableObject : 모델을 편집할 때 뷰를 자동으로 업데이트 하기 위한 프로토콜
class Memo: Identifiable, ObservableObject {
    
    //Identifiable 필수 속성
    let id: UUID
    
    //@Published : 새로운 값을 저장할 때마다 바인딩 되어있는 UI가 자동으로 업데이트 됨
    @Published var content: String
    let insertDate: Date
    
    //생성자
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
