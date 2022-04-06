//
//  WebKitViewModel.swift
//  NoteAppSub
//
//  Created by calmkeen on 2022/04/06.
//

import Foundation
import WebKit
import SwiftUI
import AVKit


struct videoView: UIViewRepresentable{
    
    let viedoID : String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(viedoID)")else{ return }
                                   uiView.scrollView.isScrollEnabled = false
                                   uiView.load(URLRequest(url: youtubeURL))
        
    }
}
 let player = videoView(viedoID: "")
