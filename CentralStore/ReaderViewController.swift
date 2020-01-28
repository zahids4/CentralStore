//
//  ReaderViewController.swift
//  CentralStore
//
//  Created by Saim Zahid on 2020-01-28.
//  Copyright © 2020 Saim Zahid. All rights reserved.
//

import UIKit

class ReaderViewController: UIViewController {
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var viewModel: StoryViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyViewStore = CentralStore.shared.getStoryViewStoreProtocol()
        /// Grab fully built view model from the store, this avoids needing an init or prepareForSegue
        viewModel = storyViewStore.getStoryViewModel()
        
        idLabel.text = "ID: \(viewModel.id)"
        nameLabel.text = "Name: \(viewModel.name)"
        descriptionLabel.text = "Description: \(viewModel.description)"
    }

}
