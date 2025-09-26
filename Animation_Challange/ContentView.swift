//
//  ContentView.swift
//  Animation_Challange
//
//  Created by Trytten, Blake - Student on 9/25/25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var circleColorChange = false
    @State private var heartColorChange = false
    @State private var heartSizeChange = false
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundStyle(circleColorChange ? Color(.systemGray5) : .red)
            
            Image(systemName: "heart.fill")
                .foregroundStyle(heartColorChange ? Color.red : .white)
                .font(.system(size: 100))
                .scaleEffect(heartSizeChange ? 1 : 0.5)
                
                
        }
        .onTapGesture {
            withAnimation(.spring(.bouncy, blendDuration:  1.0)) {
                self.circleColorChange .toggle()
                self.heartColorChange .toggle()
                self.heartSizeChange .toggle()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
