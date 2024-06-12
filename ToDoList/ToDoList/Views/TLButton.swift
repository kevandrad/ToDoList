//
//  TLButton.swift
//  ToDoList
//
//  Created by Kevin Andrade on 6/9/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    // action
    let action: () -> Void
    var body: some View {
        Button {
            action()
            //atempt log in
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value",
                 background: .pink){
        //action
        }
    }
}
