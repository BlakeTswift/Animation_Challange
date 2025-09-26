//
//  Transitions.swift
//  Animation_Challange
//
//  Created by Trytten, Blake - Student on 9/25/25.
//

import SwiftUI
struct Transitions: View {
    
    @State private var recoredBegin = false
    @State private var recording = false
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: recoredBegin ? 30 : 5)
                .frame(width: recoredBegin ? 60: 250, height: 60)
                .foregroundColor(recoredBegin ? Color.red : Color.green)
                .overlay(
                    Image(systemName:"mic.fill")
                        .font(.system(.title))
                        .foregroundStyle(Color.white)
                        .scaleEffect(recoredBegin ? 0.7 : 1)
                )
            
            RoundedRectangle(cornerRadius: recoredBegin ? 35 : 10)
                .trim(from: 0, to: recording ? 5.0 : 1)
                .stroke(lineWidth: 5)
                .foregroundStyle(recoredBegin ? .red :.green)
                .padding(5)
                
                
        }
        .onTapGesture {
                withAnimation(.default) {
                    self.recoredBegin.toggle()
                }
                
            withAnimation(.default.repeatForever().delay(0.5)) {
                self.recording.toggle()
                
                
            }
                
                
                
            }
            
            
        }
    }


#Preview {
    Transitions()
}
