//
//  Onboarding.swift
//  BobyAl-CaseStudy
//
//  Created by Reşat Kut on 24.04.2023.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        ZStack{
            VStack(alignment: .center){
                Image(systemName: "lasso.and.sparkles")
                    .resizable()
                    .frame(width: 150,height: 150)
                    .padding()
                Text("Zoey")
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
