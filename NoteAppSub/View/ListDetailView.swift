//
//  ListDetailView.swift
//  NoteAppSub
//
//  Created by calmkeen on 2022/04/06.
//

import SwiftUI
import AVKit

struct ListDetailView: View {
    var body: some View {
        
        
        NavigationView {
            VStack{
                Text("영상이 들어가는 칸")
                // 유튜브정책때문에  webkitView를 통해 따로 id만 가져와 뿌려주는 것
                videoView(viedoID: "XHMdIA6bEOE")
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 250)
                    .cornerRadius(12)
                
                
                //아래 방식은 유튜브에서 못가져옴( 일반 영상은 가능
//                VideoPlayer(player: AVPlayer(url: URL(string: "https://www.youtube.com/watch?v=XHMdIA6bEOE.com")!))
                    
                Text("제목")
                Text("주요인물")
                HStack{
                    Text("인물 1")
                    Text("인물 2")
                    Text("인물 3")
                    Text("인물 4")
                }
                
                
                Text("작성자 별점")
                Text("1")
                Text("1")
                
            }
            .navigationTitle("상단바에 북마크 ")
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView()
    }
}
