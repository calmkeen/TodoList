//
//  ListDataViewModel.swift
//  NoteAppSub
//
//  Created by calmkeen on 2022/04/05.
//

import SwiftUI





class ListDataViewModel: ObservableObject {
    @Published var todoListCell: [CellModel]
    
    init(){
        todoListCell = [
            CellModel(context : "짱구는 못말려"),
            CellModel(context : "도라에몽"),
            CellModel(context : "귀멸의 칼날"),
            CellModel(context : "주술회전"),
            CellModel(context : "원피스")
        ]
    }
}



