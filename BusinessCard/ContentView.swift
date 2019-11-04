//
//  ContentView.swift
//  Simon Balazs CV
//
//  Created by Balazs Simon.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.0667, green: 0.3176, blue: 0.5373)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("balazs")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("BALÁZS SIMON")
                    .font(Font.custom("Raleway-Thin", size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("Software Developer Student")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                Button(action: {
                    if let url = URL(string: "http://sbdevs.hu/SimonBalazs_CV.pdf") {
                        UIApplication.shared.open(url)
                    }
                                
                }, label: {
                    Text("GitHub")
                })
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(5)
                Divider()
                Button(action: {
                    if let url = URL(string: "http://sbdevs.hu/SimonBalazs_CV.pdf") {
                        UIApplication.shared.open(url)
                    }
                                
                }, label: {
                    Text("Resume")
                })
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(5)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


