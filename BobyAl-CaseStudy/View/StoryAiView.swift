//
//  Home-5.swift
//  BobyAl-CaseStudy
//
//  Created by Reşat Kut on 24.04.2023.
//

import SwiftUI

struct StoryAiView: View {
    @StateObject var viewModel = ViewModel()
    @State private var sheet = false
    @State  var ont = false
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    ForEach(viewModel.PromtAi,id: \.self){ promt in
                        Text("\(promt)\n")
                            .lineLimit(ont ? nil :7)
                            .animation(.easeInOut(duration: 1.2), value: ont)
                            .padding()
                            footer
                            
                    }
                    
                }
            }
            .navigationTitle("StoryAiView")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    @ViewBuilder
      private var footer: some View {
        HStack {
          Text(ont ? "Less" : "More")
          Button {
              sheet.toggle()
             // ont.toggle()
          } label: {
            Image(systemName: "chevron.up")
              .rotationEffect(ont ? .degrees(180) : .zero)
          }

        }
      }
}

struct Home_5_Previews: PreviewProvider {
    static var previews: some View {
        StoryAiView()
    }
}
