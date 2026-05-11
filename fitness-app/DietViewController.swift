//
//  DietViewController.swift
//  fitness-app
//
//  Created by csuftitan on 4/26/26.
//

import UIKit

class DietViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func dietSelected(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let accountVC = storyboard.instantiateViewController(
            withIdentifier: "AccountCompleteViewController"
        ) as! AccountCompleteViewController

        accountVC.modalPresentationStyle = .fullScreen
        present(accountVC, animated: true, completion: nil)
    }
}
