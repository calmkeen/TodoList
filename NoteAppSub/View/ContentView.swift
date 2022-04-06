//
//  ContentView.swift
//  NoteAppSub
//
//  Created by calmkeen on 2022/04/05.
//

import SwiftUI

struct NoteMain: View {
    @EnvironmentObject var testData: ListDataViewModel
    //@ObservedObject var testData: ListDataViewModel
    @EnvironmentObject var dateFormatter: DateFormatter
    @State private var checkable = Set<UUID>()
    var body: some View {
        
        NavigationView {
            VStack {
                List{
                    ForEach(testData.todoListCell){data in
                        NavigationLink{
                            ListDetailView()
                        } label: {
                            todoCell(cellModel: data)
                        }
                        
                        
                    }
                    
                    .padding()
                }.navigationTitle("TodoList")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NoteMain()
            .environmentObject(ListDataViewModel())
            .environmentObject(DateFormatter.todoDateFormatter)
    }
}
