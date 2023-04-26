//
//  Home-4.swift
//  BobyAl-CaseStudy
//
//  Created by Reşat Kut on 24.04.2023.
//

import SwiftUI

struct StoryView: View {
    var viewModel:ViewModel
    @State private var sheet = false
    @State  var ont = false
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    ForEach(viewModel.Promt){ tn in
                        Text("\(tn.story)\n")
                            .lineLimit(ont ? nil :7)
                            .animation(.easeInOut(duration: 1.2), value: ont)
                            .padding()
                            footer
                            
                    }
                    
                }
            }.sheet(isPresented: $sheet){
                SheetView(ont: $ont)
                    .presentationDetents([.medium])
                    
            }
            .navigationTitle("StoryView")
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

struct Home_4_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(viewModel: ViewModel())
    }
}
