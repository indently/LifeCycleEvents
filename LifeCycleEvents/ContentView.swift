//
//  ContentView.swift
//  LifeCycleEvents
//
//  Created by Federico on 07/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .padding()
                    .font(.system(size: 40))
                    .onAppear {
                        print("View 1 has appeared!")
                    }
                    .onDisappear {
                        print("View 1 is no longer visible")
                }
                NavigationLink(destination: DetailView()) {
                    Text("Other View")
                }
        }.navigationBarHidden(true)
      }
        
    }
}

struct DetailView: View {
   var body: some View {
       VStack {
           Text("Second View")
       }
       .onAppear {
           print("View 2 has appeared!")
       }
       .onDisappear {
           print("View 2 is no longer visible")
       }
   }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
