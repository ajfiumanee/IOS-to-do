//
//  TLButton.swift
//  ToDo
//
//  Created by Alberto Oliveira Jr on 02/09/23.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Title", background: .black){
            // action
        }
    }
}
