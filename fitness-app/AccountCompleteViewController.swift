//
//  AccountCompleteViewController.swift
//  fitness-app
//
//  Created by csuftitan on 4/27/26.
//

import UIKit

class AccountCompleteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextSelected(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let tabBarController = storyboard.instantiateViewController(
            withIdentifier: "TabBarController"
        ) as! TabBarController

        tabBarController.modalPresentationStyle = .fullScreen
        present(tabBarController, animated: true)
    }
}
