//
//  todoListModel.swift
//  NoteAppSub
//
//  Created by calmkeen on 2022/04/05.
//

import Foundation


class CellModel: Identifiable, ObservableObject{
    var id: UUID
    @Published var context: String
    var createDate: Date
    
    init(id: UUID = UUID(),context: String, createDate: Date = Date()){
        self.id = id
        self.context = context
        self.createDate = createDate
        
    }
}
