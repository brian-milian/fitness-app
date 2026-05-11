//
//  GoalViewController.swift
//  fitness-app
//
//  Created by csuftitan on 4/26/26.
//

import UIKit

class GoalViewController: UIViewController {

    @IBAction func goalSelected(_ sender: UIButton) {
        // To make sure our button is tapped
        // Print statements for the terminal
        print("Goal button tapped")
        print("Tag:", sender.tag)

        switch sender.tag {
        case 0:
            UserDefaults.standard.set("loseFat", forKey: "userGoal")
        case 1:
            UserDefaults.standard.set("gainMuscle", forKey: "userGoal")
        case 2:
            UserDefaults.standard.set("maintain", forKey: "userGoal")
        default:
            print("Unknown tag")
        }

        performSegue(withIdentifier: "goToWeight", sender: sender)
    }
}
