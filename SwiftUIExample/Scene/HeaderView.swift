//
//  HeaderView.swift
//  SwiftUIExample
//
//  Created by Ahmed Refaat on 25/01/2021.
//

import SwiftUI

struct HeaderGradient: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(Asset.Colors.pacificBlue.name),
                                                   Color(Asset.Colors.seaBlue.name)]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .cornerRadius(20, corners: [.bottomRight])
            .ignoresSafeArea()
    }
}

struct HeaderView: View {
    var body: some View {
            ZStack(alignment: .top) {
                HeaderGradient().frame(height: 220)
                VStack {
                    HStack {
                        Button(action: {
                            print("Edit Button Action")
                        }, label: {
                            Image(Asset.Assets.icEdit.name)
                        })
                        Spacer()
                        Button(action: {
                            print("Back Button Action")
                        }, label: {
                            Image(Asset.Assets.icBackArrow.name)
                        })
                    }
                    .padding([.leading, .trailing], 18)
                    .padding(.top, 10)
                    
                    Spacer().frame(height: 18)
                    HStack {
                        Spacer()
                        Text("معلوماتك")
                            .font(.custom(FontFamily._29LTAzer.bold.name, size: 22))
                            .foregroundColor(.white)
                        Color(Asset.Colors.nonPhotoBlue.name)
                            .frame(width: 4, height: 23)
                            .cornerRadius(2)
                    }.padding(.trailing, 18)
                }
            }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
