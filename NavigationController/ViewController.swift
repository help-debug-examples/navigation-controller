//
//  ViewController.swift
//  NavigationController
//
//  Created by Derrick Showers on 12/18/16.
//  Copyright © 2016 Derrick Showers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc private func dismissViewController() {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func didTapGoButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: String(describing: "Destination.storyboard"), bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: DestinationViewController.self))

        let navigationController = UINavigationController(rootViewController: viewController)
        let closeButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: viewController, action: #selector(dismissViewController))
        viewController.navigationItem.leftBarButtonItem = closeButton
        self.present(navigationController, animated: true, completion: nil)
    }

}

