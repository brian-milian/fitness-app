//
//  Weight.swift
//  fitness-app
//
//  Created by csuftitan on 4/27/26.
//

import UIKit

class Weight: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let weight = weightTextField.text ?? ""
            UserDefaults.standard.set(weight, forKey: "userWeight")
        }
    
}
