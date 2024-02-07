//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Shashi Ranjan Kumar on 01/02/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework : Framework
    @Binding var isShowingDetailView : Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    // when click on button we make viewmodel var false
                    isShowingDetailView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44 , height: 44)
                    
                }
            }
            .padding()
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
       
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false) )
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
