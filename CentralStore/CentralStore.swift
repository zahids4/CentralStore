//
//  CentralStore.swift
//  CentralStore
//
//  Created by Saim Zahid on 2020-01-28.
//  Copyright © 2020 Saim Zahid. All rights reserved.
//

import Foundation


final class CentralStore {
    private init() {}
    static let shared = CentralStore()
    
    /// Instances for all modular stores
    private let storyViewStoreProtocol: StoryViewStoreProtocol = StoryViewStore()
    
    func getStoryViewStoreProtocol() -> StoryViewStoreProtocol {
        return storyViewStoreProtocol
    }
}
