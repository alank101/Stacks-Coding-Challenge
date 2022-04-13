//
//  ContentView.swift
//  Stacks Coding Challenge
//
//  Created by admin on 4/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var bookHeart = true
    @State var musicHeart = true
    @State var programmingHeart = true
    
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Hobbies")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("The quest for a blanced life")
                HStack {
                    Button {
                        bookHeart.toggle()
                    } label: {
                        if bookHeart {
                            appButtons()
                        } else {
                            bookButton()
                        }
                    }
                    Button {
                        musicHeart.toggle()
                    } label: {
                        if musicHeart {
                            appButtons(images: Image(systemName: "music.note.list"), mainText: "Music", subText: "listen, sing, dance")
                        } else {
                            musicButton(images: Image(systemName: "music.note.list"), mainText: "Music", subText: "listen, sing, dance")
                        }
                    }
                }
            }
            Button {
                programmingHeart.toggle()
            } label: {
                if programmingHeart {
                    appButtons(images: Image(systemName: "laptopcomputer"), mainText: "Programming", subText: "image, create, share, enjoy")
                } else {
                    programmingButton(images: Image(systemName: "laptopcomputer"), mainText: "Programming", subText: "image, create, share, enjoy")
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


