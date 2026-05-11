//
//  MealsController.swift
//  fitness-app
//
//  Created by csuftitan on 4/27/26.
//

import UIKit

class MainController: UIViewController {

    @IBOutlet weak var macroNumbersLabel: UILabel!
    @IBOutlet weak var calNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let goal = UserDefaults.standard.string(forKey: "userGoal") ?? "Maintain"

        let weightString = UserDefaults.standard.string(forKey: "userWeight") ?? "0"
        let weight = Double(weightString) ?? 0

        let gramsOfProtein = weight * 1.25
        var gramsOfFats = weight * 0.4
        var gramsOfCarbs = weight * 1.6
        let calOfProtein = gramsOfProtein * 4
        var calOfFats = gramsOfFats * 9
        var calOfCarbs = gramsOfCarbs * 4
        var totalCalories = calOfProtein + calOfFats + calOfCarbs
        
        if goal == "loseFat" {
            gramsOfFats = gramsOfFats - (gramsOfFats * 0.19)
            gramsOfCarbs = gramsOfCarbs - (gramsOfCarbs * 0.35)
            calOfFats = gramsOfFats * 9
            calOfCarbs = gramsOfCarbs * 4
            totalCalories = calOfProtein + calOfFats + calOfCarbs
        } else if goal == "gainMuscle" {
            gramsOfFats = gramsOfFats + (gramsOfFats * 0.20)
            gramsOfCarbs = gramsOfCarbs + (gramsOfCarbs * 0.55)
            calOfFats = gramsOfFats * 9
            calOfCarbs = gramsOfCarbs * 4
            totalCalories = calOfProtein + calOfFats + calOfCarbs
        } else if goal == "maintain" {
            totalCalories = calOfProtein + calOfFats + calOfCarbs
        }

        calNumberLabel.text = "\(Int(totalCalories))"
        macroNumbersLabel.text = "\(Int(gramsOfProtein)) grams of Protein\n\(Int(gramsOfFats)) grams of Fats\n\(Int(gramsOfCarbs)) grams of Carbs"
    }
    
}
