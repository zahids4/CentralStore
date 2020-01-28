//
//  StoryViewStore.swift
//  CentralStore
//
//  Created by Saim Zahid on 2020-01-28.
//  Copyright © 2020 Saim Zahid. All rights reserved.
//

import Foundation

protocol StoryViewStoreProtocol {
    func setStoryId(_ id: Int, closure: @escaping () -> ())
    func getStoryViewModel() -> StoryViewModel
}

final class StoryViewStore: StoryViewStoreProtocol {
    private var storyId = Int()
    private var storyViewModel: StoryViewModel!
    
    func setStoryId(_ id: Int, closure: @escaping () -> ()) {
        /// Set View Model from Story Id
        self.storyId = id
        /// Create story View model, more often then not a API call will be made here but for demonstration im manually setting it.
        let viewModel = StoryViewModel(id: storyId, name: "After")
        setStoryViewModel(viewModel) {
            closure()
        }
    }
    
    func getStoryViewModel() -> StoryViewModel {
        return storyViewModel
    }
    
    private func setStoryViewModel(_ viewModel: StoryViewModel,  closure: @escaping () -> ()) {
        self.storyViewModel = viewModel
        closure()
    }
}
