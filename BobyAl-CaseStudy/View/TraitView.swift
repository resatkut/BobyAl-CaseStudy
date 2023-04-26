//
//  Home-2.swift
//  BobyAl-CaseStudy
//
//  Created by Reşat Kut on 24.04.2023.
//

import SwiftUI

struct TraitView: View {

    var age:Int

    @StateObject var viewModel = ViewModel()
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .center,spacing: 30){
                VStack(alignment: .center,spacing: 10){
                    Text("Which traits  do you want to improve?")
                        .font(.title)
                        .bold()
                        .padding()
                    Text("You can select multiple options from the list.")
                        .font(.headline)
                        .foregroundColor(.blue)
               
                }
               
               
                if viewModel.ResTap{
                    Button(action: {
                        viewModel.trait += ""
                        viewModel.ResTap = false
                        
                    }){
                        Text("Respect")
                            .font(.title2)
                            .foregroundColor( Color.indigo )
                            .frame(width: 140,height: 50)
                            .background(Color.white )
                            .cornerRadius(15)
                            .shadow(color:.indigo,radius: 15)
                            .padding()
                            
                    }
                }else{
                    Button(action: {
                        viewModel.trait += "Respect,"
                        viewModel.ResTap = true
                    }){
                        Text("Respect")
                            .font(.title2)
                            .foregroundColor( Color.white )
                            .frame(width: 140,height: 50)
                            .background(Color.indigo )
                            .cornerRadius(15)
                            .padding()
                    }
                }
                
                if viewModel.PatTap{
                    Button(action: {
                        viewModel.trait += ""
                        viewModel.PatTap = false
                    }){
                        Text("Patience")
                            .font(.title2)
                            .foregroundColor( Color.indigo )
                            .frame(width: 140,height: 50)
                            .background(Color.white )
                            .cornerRadius(15)
                            .shadow(color:.indigo,radius: 15)
                            .padding()
                    }
                }else{
                    Button(action: {
                        viewModel.trait += "Patience,"
                        viewModel.PatTap = true
                    }){
                        Text("Patience")
                            .font(.title2)
                            .foregroundColor(.white)
                            .frame(width: 140,height: 50)
                            .background(.indigo)
                            .cornerRadius(15)
                            .padding()
                    }
                }
                
                if viewModel.ShaTap{
                    Button(action: {
                        viewModel.trait += ""
                        viewModel.ShaTap = false
                    }){
                        Text("Sharing")
                            .font(.title2)
                            .foregroundColor( Color.indigo )
                            .frame(width: 140,height: 50)
                            .background(Color.white )
                            .cornerRadius(15)
                            .shadow(color:.indigo,radius: 15)
                            .padding()
                    }
                }else{
                    Button(action: {
                        viewModel.trait += "Sharing,"
                        viewModel.ShaTap = true
                    }){
                        Text("Sharing")
                            .font(.title2)
                            .foregroundColor(.white)
                            .frame(width: 140,height: 50)
                            .background(.indigo)
                            .cornerRadius(15)
                            .padding()
                    }
                }
                
                NavigationLink{
                    GenerateView(age: age, trait: viewModel.trait, message: "Write me a story about \(viewModel.trait) for a \(age) year old child.")
                    
                }label: {
                    Text("Countinue")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 250,height: 50)
                        .background(.cyan)
                        .cornerRadius(15)
                        .padding()
                        .onAppear{
                            print("\(viewModel.trait)")
                            viewModel.trait = ""
                            viewModel.PatTap = false
                            viewModel.ResTap = false
                            viewModel.ShaTap = false
                        }
                }
            }
            .navigationTitle("TraitView")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Home_2_Previews: PreviewProvider {
    static var previews: some View {
        TraitView(age: 3)
    }
}
