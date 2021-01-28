//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Ahmed Refaat on 17/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color(Asset.Colors.ghostWhite.name).ignoresSafeArea()
            HeaderView()
            Group {
                Color.white
                    .cornerRadius(16)
                    .shadow(color: Color(Asset.Colors.taupeGray.color.withAlphaComponent(0.4)), radius: 16)
                DetailsView()
                    .offset(x: 0, y: -20)
                    .padding(.horizontal, 12)
            }
            .padding(.top, 110)
            .frame(width: UIScreen.main.bounds.width - 30)
        }
    }
}

struct InfoTextView: View {
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack(spacing: 28) {
            Spacer()
            Text(subtitle)
                .font(.custom(FontFamily._29LTAzer.medium.name, size: 17))
                .foregroundColor(Color(Asset.Colors.steelBlue.name))
            Text(title)
                .frame(width: 95, alignment: .trailing)
                .font(.custom(FontFamily._29LTAzer.regular.name, size: 17))
                .foregroundColor(Color(Asset.Colors.darkSlateGray.name))
        }
    }
}

struct DetailsView: View {
    var body: some View {
        VStack(spacing: 30) {
            Image(Asset.Assets.icAvatarBg.name)
            
            InfoTextView(title: "صاحب المنشأة", subtitle: "محمد أحمد")
            InfoTextView(title: "نوع المنشأة", subtitle: "فكرة")
            InfoTextView(title: "القطاع", subtitle: "التقنية")
            InfoTextView(title: "تخصص المنشأة", subtitle: "تطبيقات الجوال")
            InfoTextView(title: "تاريخ التأسيس", subtitle: "٢٠١٩")
            
            Color(Asset.Colors.taupeGray.color.withAlphaComponent(0.4))
                .frame(height: 1)
                .padding(.horizontal, 2)
            
            HStack {
                Spacer()
                Text(L10n.aboutUs)
                    .font(.custom(FontFamily._29LTAzer.medium.name, size: 22))
                    .foregroundColor(Color(Asset.Colors.steelBlue.name))
            }
            
            Text(L10n.about)
                .font(.custom(FontFamily._29LTAzer.regular.name, size: 15))
                .lineSpacing(18)
                .foregroundColor(Color(Asset.Colors.auroMetalSaurus.color))
                .multilineTextAlignment(.trailing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
