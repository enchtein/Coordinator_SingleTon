//
//  ViewController.swift
//  try
//
//  Created by Track Ensure on 2021-02-25.
//

import UIKit

class StartVC: UIViewController, StoryboardInitializable {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyTapped(_ sender: Any) {
        AppCoordinator.shared.push(.buyVC)
    }
    
}

