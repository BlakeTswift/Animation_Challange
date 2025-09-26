//
//  Personal.swift
//  Animation_Challange
//
//  Created by Trytten, Blake - Student on 9/26/25.
//

import SwiftUI

struct Personal: View {
    
    
    @State private var slideout = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all)
                .foregroundStyle(.gray)
                .opacity(0.4)
            
            VStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: slideout ? 500: 75, height: .infinity)
                        .ignoresSafeArea(.all)
                        .offset(x:170)
                        .foregroundStyle(.black)
                        .opacity(0.7)
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: slideout ? 500: 75, height: .infinity)
                        .ignoresSafeArea(.all)
                        .offset(x:250)
                        .foregroundStyle(.white)
                        .opacity(0.2)
                    
                    Image(systemName: "info.circle")
                        .foregroundStyle(.white)
                        .font(.system(size: 30, weight: .bold))
                        .offset(x:slideout ? -40:175, y:10)
                }
            }
            
        }
        .onTapGesture {
            withAnimation(.default){
            self.slideout.toggle()
        }
            }
        }
    }
    
    


#Preview {
    Personal()
}
