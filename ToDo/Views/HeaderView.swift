//
//  HeaderView.swift
//  ToDo
//
//  Created by Alberto Oliveira Jr on 02/09/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let backgroud: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroud)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }.padding(.top, 80)
            
        }.frame(width: UIScreen.main.bounds.width * 3, height: 350)
            .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(
            title: "Title",
            subtitle: "Subtitle",
            angle: 15,
            backgroud: .blue)
    }
}
