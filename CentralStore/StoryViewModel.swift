//
//  StoryViewModel.swift
//  CentralStore
//
//  Created by Saim Zahid on 2020-01-28.
//  Copyright © 2020 Saim Zahid. All rights reserved.
//

import Foundation

class StoryViewModel {
    let id: Int
    let name: String
    let description: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
        self.description = "I am a very long story"
    }
}
