//
//  ContentView.swift
//  Stacks Coding Challenge
//
//  Created by admin on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Hobbies")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("The quest for a blanced life")
                HStack {
                    Button {
                        
                    } label: {
                        appButtons()
                    }
                    Button {
                        
                    } label: {
                        appButtons(images: Image(systemName: "music.note.list"), mainText: "Music", subText: "listen, sing, dance")
                    }
                }
            }
            Button {
                
            } label: {
                appButtons(images: Image(systemName: "laptopcomputer"), mainText: "Programming", subText: "image, create, share, enjoy")
            }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


