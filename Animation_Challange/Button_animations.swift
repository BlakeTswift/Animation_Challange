//
//  Button_animations.swift
//  Animation_Challange
//
//  Created by Trytten, Blake - Student on 9/25/25.
//

import SwiftUI

struct Button_animations: View {
    
    @State private var loading = false
    @State private var done = false
    
    var body: some View {
        ZStack {
            
            
            if done == false {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width:240,height:80)
                .foregroundStyle(loading ? .blue :.green)
            }
            if done == true {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width:240,height:80)
                .foregroundStyle(loading ? .red :.blue)
            }
            if done == false {
                Text(loading ? "" : "Submit")
                    .font(.system(size: 45 , weight: .bold , design: .rounded))
                    .foregroundStyle(.white)
                
            }
            
            else {
                Text("Done!")
                    .font(.system(size: 45 , weight: .bold , design: .rounded))
                    .foregroundStyle(.white)
                    
                        
                    
                        
                
            }
            if done == false {
                Circle()
                    .trim(from: 0,to: 0.85)
                    .stroke(Color.green, lineWidth: 5)
                    .frame(width: 65, height: 65)
                    .rotationEffect(Angle(degrees: loading ? 360 : 0))
                    .animation(.default.repeatForever(autoreverses: false), value: loading)
                    .opacity(loading ? 1 : 0)
            }
                
        }
        .onTapGesture {
            self.loading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.done = true
            }
            
        }
        
    }
}

#Preview {
    Button_animations()
}
