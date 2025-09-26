//
//  loading.swift
//  Animation_Challange
//
//  Created by Trytten, Blake - Student on 9/25/25.
//

import SwiftUI

struct loading: View {
    
    @State private var isLoading = false
    
    var body: some View {
        Spacer()
        ZStack {
            Text("Loading...")
                .font(.system(size: 24, weight: .bold, design: .default))
                .offset(y: -25)
            
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(.systemGray),lineWidth: 3)
                .frame(width: 250,height: 3)
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(.green),lineWidth: 3)
                .frame(width: 30,height: 3)
                .offset(x: isLoading ? 110 : -110)
                .animation(.linear(duration: 1).repeatForever(autoreverses: true),value: isLoading)
        }
        Spacer()
        ZStack {
//            Circle()
//                .stroke(Color.gray, lineWidth: 14)
//                .frame(width: 100, height: 100)
//                .opacity(0.4)
            Circle()
                .trim(from: 0.1,to: 0.3)
                .stroke(Color.green, lineWidth: 5)
                .frame(width: 100, height: 100)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(.linear(duration: 0.6).repeatForever(autoreverses: false), value: isLoading)
            
                .onAppear {
                    isLoading = true
                }
        }
        Spacer()
    }
}

#Preview {
    loading()
}
