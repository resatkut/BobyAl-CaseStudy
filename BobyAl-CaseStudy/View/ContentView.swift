//
//  ContentView.swift
//  BobyAl-CaseStudy
//
//  Created by Reşat Kut on 24.04.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        VStack {
            if viewModel.onBoarding{
                Onboarding()
            }else{
                Home()
            }
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.2){
                withAnimation(.easeInOut){
                    self.viewModel.onBoarding = false
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
