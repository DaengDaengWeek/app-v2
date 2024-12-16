//
//  PledgeModalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI

struct PledgeModalView: View {
    
    //@Binding var isPresented: Bool
    
    var body: some View {
        
        ZStack {
            pledgeview
        }
 
    }
    
    var pledgeview: some View {
        ZStack {
            Color.dwBeige00.ignoresSafeArea()
            
            HStack {
                Spacer()
                
                Button(action: {
                    //isPresented = false
                }) {
                    Image("closeIcon")
                        .resizable()
                        .frame(width: 51, height: 51)
                }
                .offset(x: -5, y: 0)
            }
        }
        .frame(width: 329, height: 689)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.dwBrown00, lineWidth: 2)
        )
    }
}

#Preview {
    PledgeModalView()
}
