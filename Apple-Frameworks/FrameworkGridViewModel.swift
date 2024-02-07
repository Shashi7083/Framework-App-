//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Shashi Ranjan Kumar on 05/02/24.
//

import SwiftUI

final class FrameworkGridViewModel:ObservableObject {
    
    var selectedFramework : Framework? {
        didSet{
            isShowingDetailView = true // This means when selectedFramework changes we set  isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
    
}
