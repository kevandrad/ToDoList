//
//  HeaderView.swift
//  ToDoList
//
//  Created by Kevin Andrade on 6/7/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        //Header
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.teal)
                .rotationEffect(Angle(degrees: 15))
            VStack{
                Text("To Do List")
                    .font(.system(size:50))
                    .foregroundColor(Color.white)
                    .bold()
                Text("checked off")
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 60)
        }
        .frame(width:UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
