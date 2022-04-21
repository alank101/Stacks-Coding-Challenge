//
//  ContentView.swift
//  Stacks Coding Challenge
//
//  Created by admin on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var bookFavorite = true
    @State var musicFavorite = true
    @State var programmingFavorite = true
    
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Hobbies")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("The quest for a blanced life")
                HStack {
                    Button {
                        bookFavorite.toggle()
                    } label: {
                        if bookFavorite {
                            appButtons()
                        } else {
                            bookButton()
                        }
                    }
                    Button {
                        musicFavorite.toggle()
                    } label: {
                        if musicFavorite {
                            appButtons(images: Image(systemName: "music.note.list"), mainText: "Music", subText: "listen, sing, dance")
                        } else {
                            musicButton()
                        }
                    }
                }
            }
            Button {
                programmingFavorite.toggle()
            } label: {
                if programmingFavorite {
                    programmingButton()
                } else {
                    programmingButtonHeart()
                }
            }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


