//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Анна on 16.02.2024.
//

import UIKit

final class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
