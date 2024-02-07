//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Shashi Ranjan Kumar on 05/02/24.
//

import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable{
    
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->
    SFSafariViewController{
       SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}
