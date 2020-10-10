//
//  ViewController.swift
//  Multiple View
//
//  Created by Devita setyaningrum on 07/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrAnimal = [AnimalItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func initAnimal() {
        arrAnimal.append(AnimalItem(animalName: "Panda", animalType: "Mamalia", animalImg: "Panda"))
        arrAnimal.append(AnimalItem(animalName: "Kupu-kupu", animalType: "Serangga", animalImg: "Kupu"))
        arrAnimal.append(AnimalItem(animalName: "Kucing", animalType: "Mamalia", animalImg: "Cat"))
        arrAnimal.append(AnimalItem(animalName: "Kelinci", animalType: "Mamalia", animalImg: "Kelinci"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! AnimalItemViewController
        
        initAnimal()
        if segue.identifier == "segue1"{
            destination.img = arrAnimal[0].animalImg
            destination.name = arrAnimal[0].animalName
            destination.type = arrAnimal[0].animalType
        } else if segue.identifier == "segue2"{
            destination.img = arrAnimal[1].animalImg
            destination.name = arrAnimal[1].animalName
            destination.type = arrAnimal[1].animalType
        } else if segue.identifier == "segue3"{
            destination.img = arrAnimal[2].animalImg
            destination.name = arrAnimal[2].animalName
            destination.type = arrAnimal[2].animalType
        } else if segue.identifier == "segue4"{
            destination.img = arrAnimal[3].animalImg
            destination.name = arrAnimal[3].animalName
            destination.type = arrAnimal[3].animalType
        }
    }
}

