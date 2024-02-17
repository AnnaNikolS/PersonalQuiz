//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Анна on 16.02.2024.
//

import UIKit

final class ResultViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var whoLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //MARK: - Properties 
    var answers: [Answer]!
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        var animalsDictionary: [Animal : Int] = [:]
        
        for animals in answers.map({$0.animal}) {
            animalsDictionary[animals, default: 0] += 1
        }
        
        let newSortedDictionaryAnimals = animalsDictionary.sorted { firstAnimal, secondAnimal  in firstAnimal.value > secondAnimal.value }
        if let frequentAnimal = newSortedDictionaryAnimals.first?.key {
            resultDescription(animal: frequentAnimal)
        } else { return }
    }
    
    //MARK: - 
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    private func resultDescription(animal: Animal) {
        whoLabel.text = "Вы - \(animal.rawValue)!"
        descriptionLabel.text = animal.definition
    }
}
