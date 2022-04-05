//
//  ContentView.swift
//  NoteAppSub
//
//  Created by calmkeen on 2022/04/05.
//

import SwiftUI

struct NoteMain: View {
    @EnvironmentObject var testData: TestData
    @State private var checkable = Set<UUID>()
    var body: some View {
        
        NavigationView {
            VStack {
                List{
                    ForEach(testData.todoListCell){data in
                        todoCell(context: data.context, createDate: data.createDate)
                    }
                    
                    .padding()
                }.navigationTitle("TodoList")
            }
            
        }
    }
}
//MARK: - divder

class CellModel: Identifiable, ObservableObject{
    var id: UUID
    @Published var context: String
    var createDate: String
    
    init(id: UUID = UUID(),context: String, createDate: String){
        self.id = id
        self.context = context
        self.createDate = createDate
        
    }
}



//MARK: - divder
class TestData: ObservableObject {
    @Published var todoListCell: [CellModel]
    
    init(){
        todoListCell = [
            CellModel(context : "짱구는 못말려",createDate: "date"),
            CellModel(context : "도라에몽",createDate: "date"),
            CellModel(context : "귀멸의 칼날",createDate: "date"),
            CellModel(context : "주술회전",createDate: "date"),
            CellModel(context : "원피스",createDate: "date")
        ]
    }
}


//MARK: - divder
struct todoCell: View{
    @EnvironmentObject var dateFormatter: DateFormatter
    var context: String
    var createDate: String
    var body: some View{
        VStack{
            Text(context.prefix(5))
                .font(.body)
                .lineLimit(1)
            Text(createDate)
//            Text("\(createDate, formatter: dateFormatter)")
//                .font(.caption)
//                .foregroundColor(Color(UIColor.secondaryLabel))
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NoteMain()
            .environmentObject(TestData())
    }
}
