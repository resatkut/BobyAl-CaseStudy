//
//  Home-3.swift
//  BobyAl-CaseStudy
//
//  Created by Reşat Kut on 24.04.2023.
//

import SwiftUI

struct GenerateView: View {
    @StateObject var viewModel = ViewModel()
    var age:Int
    var trait:String
    var message:String
    var body: some View {
        NavigationStack{
            VStack(alignment: .center, spacing: 40){
                VStack(alignment: .leading){
                    HStack(alignment: .center){
                        Text("Age :")
                            .font(.title3)
                            .foregroundColor(.white)
                            .bold()
                        Text("\(age)")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    HStack(alignment: .center){
                        Text("Trait : ")
                            .font(.title3)
                            .foregroundColor(.white)
                            .bold()
                        Text("\(trait)")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .frame(width: 360,height: 150)
                .background(.cyan)
                .cornerRadius(20)
                .shadow(color:.cyan,radius: 15)


               
                

                VStack{
                    NavigationLink{
                        StoryView(viewModel: viewModel)
                    } label: {
                        Text("Generate  the best \nstory for my kid!")
                            .font(.title3)
                            .foregroundColor(.white)
                            .frame(width: 200,height: 100)
                            .bold()
                            .background(.indigo)
                            .cornerRadius(20)
                            .padding()
                            .onAppear{
                                viewModel.generateStory(age: age, trait: trait)
                            }
                    }
                    NavigationLink{
                        StoryAiView()
                    } label: {
                        Text("Open Ai")
                            .font(.title3)
                            .foregroundColor(.white)
                            .frame(width: 200,height: 100)
                            .bold()
                            .background(.indigo)
                            .cornerRadius(20)
                            .padding()
                            .onAppear{
                                viewModel.generateStoryAiMessage(age: age, trait: trait, message: message)
                            }
                    }
                }
            }
            .navigationTitle("GenerateView")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Home_3_Previews: PreviewProvider {
    static var previews: some View {
        GenerateView(age: 3, trait: "Patience,Sharing,Sharing", message: "")
    }
}
