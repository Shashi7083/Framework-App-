//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Shashi Ranjan Kumar on 01/02/24.
//

import SwiftUI

struct AFButton: View {
    
    var title : String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
