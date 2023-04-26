//
//  Home-6.swift
//  BobyAl-CaseStudy
//
//  Created by Reşat Kut on 24.04.2023.
//

import SwiftUI

struct SheetView: View {
     @Binding var ont:Bool
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ZStack{
                VStack(alignment: .center,spacing: 20){
                  Text("Subscription Packages")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    
                    Button(action: {
                        dismiss.callAsFunction()
                        ont.toggle()
                       
                    }){
                        Text("Mount 6$")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .frame(width: 150,height: 50)
                            .background(.blue)
                            .cornerRadius(15)
                            .padding()
                    }
                    
                    Button(action: {
                       
                    }){
                        Text("Years 16$")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .frame(width: 150,height: 50)
                            .background(.blue)
                            .cornerRadius(15)
                            .padding()
                    }
                }
                .frame(width: 350,height: 400)
                .background(.cyan)
                .cornerRadius(15)
                .shadow(color:.cyan,radius: 20)
                .interactiveDismissDisabled()
            }
        }
    }
}

struct Home_6_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(ont: .constant(.random()))
    }
}
