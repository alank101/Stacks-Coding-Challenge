//
//  appButtons.swift
//  Stacks Coding Challenge
//
//  Created by admin on 4/10/22.
//

import SwiftUI

struct appButtons: View {
    var images:Image = Image(systemName: "book.closed")
    var mainText:String = "Books"
    var subText:String = "read, dream, believe, live"
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
            VStack {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                images
                    .resizable()
                    .scaledToFit()
                    .frame(width:30)
                    .foregroundColor(.black)
                Text(mainText)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text(subText)
                    .font(.caption)
                    .foregroundColor(.black)
                    .padding()
            }
        }
    }
}

struct appButtons_Previews: PreviewProvider {
    static var previews: some View {
        appButtons()
    }
}
