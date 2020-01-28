//
//  ViewController.swift
//  CentralStore
//
//  Created by Saim Zahid on 2020-01-28.
//  Copyright © 2020 Saim Zahid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func readStory(_ sender: Any) {
        /// Here you will do the whole responder chain, I'm not sure if setting the view model and that should happen async or not.
        let storyViewStore = CentralStore.shared.getStoryViewStoreProtocol()
        storyViewStore.setStoryId(360) {
            /// While this is happening you could show a loader but since this demo is so fast im not doing that
            self.performSegue(withIdentifier: "showReaderWithStory", sender: self)
        }
    }
    
}

