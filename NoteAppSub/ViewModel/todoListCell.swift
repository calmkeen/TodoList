//
//  todoListCell.swift
//  NoteAppSub
//
//  Created by calmkeen on 2022/04/05.
//

import SwiftUI


struct todoCell: View {
    
    @ObservedObject var cellModel: CellModel
    
    @EnvironmentObject var dateFormatter: DateFormatter

    var body: some View{
        HStack {
            Image(cellModel.image)
                .resizable()
                .frame(width: 60.0, height: 60.0)
            VStack{
                Text(cellModel.context.prefix(8))
                    .font(.body)
                    .lineLimit(1)
    //           Text(createDate)
                Text("\(cellModel.createDate, formatter: dateFormatter)")
                    .font(.caption)
                    .foregroundColor(Color(UIColor.secondaryLabel))
            }
        }
    }
}



struct todoListCell_Previews: PreviewProvider {
    static var previews: some View {
        todoCell(cellModel: CellModel(context: "testString",image: "jang"))
            .environmentObject(DateFormatter.todoDateFormatter)
            
    }
}
