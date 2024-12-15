//
//  PledgeModalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI

struct PledgeModalView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        
        ZStack {
            pledgeview
        }
 
    }
    
    var pledgeview: some View {
        ZStack {
            HStack {
                Spacer()
                
                Button(action: {
                    isPresented = false
                }) {
                    Image("closeBtn")
                        .resizable()
                        .frame(width: 51, height: 51)
                }
                .offset(x: -35, y: -75)
            }
        }
        .frame(width: 329, height: 689)
    }
}
