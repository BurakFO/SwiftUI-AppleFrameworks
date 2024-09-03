//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Burak AKIN on 3/9/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns, content: {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                    
                    
                })
            }
            .navigationTitle("🍎 Frameworks")
            
        }
        
        
    }
}

#Preview {
    FrameworkGridView()
}


struct FrameworkTitleView : View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
    
}
