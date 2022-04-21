//
//  appButtons.swift
//  Stacks Coding Challenge
//
//  Created by admin on 4/10/22.
//

import SwiftUI

struct programmingButton: View {
    var images:Image = Image(systemName: "laptopcomputer")
    var mainText:String = "Programming"
    var subText:String = "image, create, share, enjoy"
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
            VStack {
                HStack(alignment: .top) {
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundColor(.blue)
                        .padding()
                }
                Spacer()
                VStack {
                    images
                        .resizable()
                        .scaledToFit()
                        .frame(width:50)
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
                Spacer()
            }
        }
    }
}

struct programmingButton_Previews: PreviewProvider {
    static var previews: some View {
        appButtons()
    }
}
