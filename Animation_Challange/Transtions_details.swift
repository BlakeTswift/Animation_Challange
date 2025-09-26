//
//  Transtions_details.swift
//  Animation_Challange
//
//  Created by Trytten, Blake - Student on 9/25/25.
//

import SwiftUI
struct Transtions_details: View {
    
    @State private var show = false
    @State private var show1 = false
    @State private var show2 = false
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 100)
                . foregroundStyle(.green)
                .overlay(
                    Text("Show details")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        . foregroundStyle(.white)
                    
                    )
            
            if show {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.purple)
                    .overlay(
                        Text("Well, heres the details")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundStyle(.white)
                    )
                    .transition(.opacity)
            }
                   
        }
        .onTapGesture {
            withAnimation(.default) {
                show.toggle()
            }
            
        }
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 250, height: 100)
                . foregroundStyle(.green)
                .overlay(
                    Text("Show details DIFFRENTLY")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        . foregroundStyle(.white)
                    
                )
            
            if show1 {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.purple)
                    .overlay(
                        Text("Well, heres some other details")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundStyle(.white)
                    )
                    .transition(.scale(scale: 0, anchor: .bottom).combined(with: .offset(y:600)))
            }
            
        }
        .onTapGesture {
            withAnimation(.default) {
                show1.toggle()
            }
            
        }
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 250, height: 100)
                . foregroundStyle(.green)
                .overlay(
                    Text("Show TOO MANY details")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        . foregroundStyle(.white)
                    
                )
            
            if show2 {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.purple)
                    .overlay(
                        Text("Well, heres even more details")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundStyle(.white)
                    )
                    .transition(.ScaleandOffset)
            }
            
        }
        .onTapGesture {
            withAnimation(.default) {
                show2.toggle()
            }
            
        }
    }
}
extension AnyTransition {
    
    
    static var ScaleandOffset: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .scale(scale: 0, anchor: .bottom),
            removal: .offset(x:-600))
    }
    
    
}
#Preview {
    Transtions_details()
}
