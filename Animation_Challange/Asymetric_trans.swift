//
//  Asymetric_trans.swift
//  Animation_Challange
//
//  Created by Trytten, Blake - Student on 9/25/25.
//

import SwiftUI

struct Asymetric_trans: View {
    
    @State private var show: Bool = false
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 100, weight: .bold, design: .default))
            .transition(.ScaleandOffset)
            .onTapGesture {
                animation(.default)
                
            }
    }
    
}

#Preview {
    Asymetric_trans()
}
