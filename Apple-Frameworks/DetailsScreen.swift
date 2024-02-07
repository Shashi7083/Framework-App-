//
//  DetailsScreen.swift
//  Apple-Frameworks
//
//  Created by Shashi Ranjan Kumar on 01/02/24.
//

import SwiftUI

struct DetailsScreen: View {
    var body: some View {
        VStack{
            Close(icon: "multiply")
            Spacer()
            ImageText(image: "swift", text: "SwiftUI")
            Text("SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written")
                .padding()
            Spacer()
            ButtonText()
        }
    }
}

#Preview {
    DetailsScreen()
}

struct Close: View {
    let icon : String
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: icon)
                .resizable()
                .frame(width: 20,height: 20)
                .padding(.trailing,20 )
           
        }
       
    }
}

struct ImageText: View {
    
    let image : String
    let text: String
    
    var body: some View {
        Image(systemName: image)
            .resizable()
            .frame(width: 100,height: 100)
        Text(text)
            .font(.title)
    }
}

struct ButtonText: View {
    var body: some View {
        
        Button{
            
        }label: {
            Text("Learn More")
                .font(.title2)
                .frame(width: 280 , height: 50)
                .background(Color.red)
                .cornerRadius(10)
        }
        
    }
}
