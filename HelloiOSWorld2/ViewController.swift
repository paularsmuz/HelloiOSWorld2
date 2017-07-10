//
//  ViewController.swift
//  HelloiOSWorld2
//
//  Created by Павел Музычкин on 08.07.17.
//  Copyright © 2017 MPA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var greetingLabel: UILabel!

    @IBOutlet weak var nameInput: UITextField!

    @IBOutlet weak var nameLabel: UILabel!


    @IBAction func greetingButtonPress(_ sender: Any) {
        
        // выполнить в конце метода
        defer {
            // скрыть клавиатуру (активное поле отвечает первым)
            nameInput.resignFirstResponder()
        }
        
    // проверяем есть ли что-либо в поле ввода
        guard let name = nameInput.text,
        name.isEmpty == false else {
            return
        }
        
                
        nameLabel.text = "Привет,  \(name)!"
    }

}

