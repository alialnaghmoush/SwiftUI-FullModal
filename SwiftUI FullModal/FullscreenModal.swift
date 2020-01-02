//
//  FullscreenModal.swift
//  SwiftUI FullModal
//
//  Created by Ali AlNaghmoush on 03/01/2020.
//  Copyright © 2020 Ali AlNaghmoush. All rights reserved.
//

import SwiftUI

struct FullscreenModal: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        
        GeometryReader { g in
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Full Screen Modal")
                        .font(.title).foregroundColor(.white)
                }
                
                HStack {
                    Button(action: {
                        withAnimation { self.isPresented.toggle()} }, label: {
                            Text("Dismiss").bold() })
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation { self.isPresented.toggle()} }, label: {
                            Image(systemName: "xmark.circle.fill") })
                    
                }.padding(.horizontal, 26)
                    .foregroundColor(.white)
                    .frame(width: g.size.width, height: g.size.height, alignment: .top)
                
            }.offset(y: self.isPresented ? 0 : g.size.height)
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct FullscreenModal_Previews: PreviewProvider {
    
    @State static var present = true
    static var previews: some View {
        FullscreenModal(isPresented: $present)
    }
}
