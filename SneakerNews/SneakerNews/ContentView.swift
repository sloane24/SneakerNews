//
//  ContentView.swift
//  SneakerNews
//
//  Created by Sloane Houston on 9/6/19.
//  Copyright © 2019 Sloane Houston. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            //map
            MapView()
                .frame(height: 300).edgesIgnoringSafeArea(.top)
            //image
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
        
            //text views
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }.padding()
        
            
            //spacer
            Spacer()
            
    }
        
    
}
    
    
    
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
