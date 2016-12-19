//
//  ViewController.swift
//  NavigationController
//
//  Created by Derrick Showers on 12/18/16.
//  Copyright © 2016 Derrick Showers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapGoButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: String(describing: "Destination"), bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: String(describing: DestinationViewController.self))

//        let navigationController = UINavigationController(rootViewController: viewController)
//        let closeButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: viewController, action: #selector(DestinationViewController.dismissViewController))
//        viewController.navigationItem.leftBarButtonItem = closeButton
//        self.present(navigationController, animated: true, completion: nil)

        navigationController?.pushViewController(viewController, animated: true)
    }

}

