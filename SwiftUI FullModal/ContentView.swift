//
//  ContentView.swift
//  SwiftUI FullModal
//
//  Created by Ali AlNaghmoush on 02/01/2020.
//  Copyright © 2020 Ali AlNaghmoush. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var present = false
    
    var body: some View {
        
        ZStack {
            NavigationView {
                VStack {
                    Button(action: {
                        withAnimation { self.present.toggle()} }, label: {
                            Text("Go To Full Screen")
                                .font(.title).fontWeight(.bold)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                    })
                }.navigationBarTitle("Standard")
            }
            
            FullscreenModal(isPresented: $present)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
