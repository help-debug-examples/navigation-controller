//
//  DestinationViewController.swift
//  NavigationController
//
//  Created by Derrick Showers on 12/18/16.
//  Copyright © 2016 Derrick Showers. All rights reserved.
//

import Foundation
import UIKit

class DestinationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
    }

    @objc func dismissViewController() {
        dismiss(animated: true, completion: nil)
    }

}
