//
//  Model.swift
//  BobyAl-CaseStudy
//
//  Created by Reşat Kut on 24.04.2023.
//

import Foundation


struct promtModel:Identifiable{
    var id = UUID()
    var age:Int
    var trait:String
    var story:String
    
    init(id: UUID = UUID(), age: Int, trait: String, story: String) {
        self.id = id
        self.age = age
        self.trait = trait
        self.story = story
    }
    
}


