//
//  ContentView.swift
//  personCard
//
//  Created by Никита on 15.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.74, blue: 0.61).ignoresSafeArea()
            VStack {
                Image("myPhoto").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle()
                        .stroke(lineWidth: 5))
                Text("Никита Репин").font(.title)
                Text("IOS developer")
                    .font(.title3)
                Divider()
                createButton(image: "phone.fill", message: "+79923013927")
                createButton(image: "envelope.fill", message: "nik.repin.86@yandex.ru")
                createButton(image: "", message: "telegram: @nik_repin")
                
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct createButton: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 50)
            .overlay(HStack {
                Image(systemName: image)
                Text(message).fontWeight(.semibold)
            }.foregroundColor(.black))
    }
}
