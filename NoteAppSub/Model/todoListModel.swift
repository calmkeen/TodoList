//
//  todoListModel.swift
//  NoteAppSub
//
//  Created by calmkeen on 2022/04/05.
//

import Foundation
import SwiftUI


class CellModel: Identifiable, ObservableObject{
    var id: UUID
    @Published var context: String
    var createDate: Date
    var image :String
    
    init(id: UUID = UUID(),context: String, createDate: Date = Date(),image: String){
        self.id = id
        self.context = context
        self.createDate = createDate
        self.image = image
        
    }
}
