//
//  Home.swift
//  BobyAl-CaseStudy
//
//  Created by Reşat Kut on 24.04.2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack{
            ZStack(alignment: .center){
                Text("How old is your Kid ?")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .position(x:200,y:150)
                
                VStack(alignment: .center, spacing: 20){
                  
                    
                    NavigationLink{
                        TraitView(age: 3)
                    }label: {
                        Text("3")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 100,height: 50)
                            .background(.indigo)
                            .cornerRadius(15)
                            .padding()
                    }
                
                    NavigationLink{
                        TraitView(age: 4)
                    }label: {
                        Text("4")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(width: 100,height: 50)
                            .background(.indigo)
                            .cornerRadius(15)
                            .padding()
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
