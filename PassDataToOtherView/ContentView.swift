//
//  ContentView.swift
//  PassDataToOtherView
//
//  Created by Saif on 31/10/19.
//  Copyright © 2019 LeftRightMind. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    @State var name: String
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            Text("Username - \(name)")
            
            Button("Dismiss") {
                self.presentation.wrappedValue.dismiss()
            }
        }
    }
}

struct ContentView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name:"Prashant")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
