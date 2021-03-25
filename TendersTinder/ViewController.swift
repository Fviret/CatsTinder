//
//  ViewController.swift
//  TendersTinder
//
//  Created by Florian  on 01/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLable: UILabel!
    @IBOutlet weak var profilImageView: UIImageView!
    
    var ProfilAffiches : [Profilage] = [
        Profilage(name: "miaous", age: 4, genre: .male, imageString: "one"),
        Profilage(name: "Edgar", age: 5, genre: .male, imageString: "two"),
        Profilage(name: "Daphné", age: 10, genre: .femelle, imageString: "three"),
        Profilage(name: "Red", age: 1, genre: .male, imageString: "four"),
        Profilage(name: "Lulu", age: 2, genre: .femelle, imageString: "five"),
        Profilage(name: "Perpet", age: 1, genre: .femelle, imageString: "six"),
        Profilage(name: "Bat", age: 3, genre: .male, imageString: "seven"),
        Profilage(name: "Duchesse", age: 7, genre: .femelle, imageString: "eight")]
    
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoSet()
        containerSet()
        profilImageSet()
        setProfil()
        
    }
    func logoSet(){
        logo.layer.cornerRadius = logo.frame.height / 2
        logo.layer.borderColor = UIColor.systemTeal.cgColor
        logo.layer.borderWidth = 2
    }
    
    func containerSet(){
        container.layer.cornerRadius = 20
        container.layer.shadowColor = UIColor.systemTeal.cgColor
        container.layer.shadowRadius = 8
        container.layer.shadowOpacity = 0.8
        container.layer.shadowRadius  = 8
        container.layer.shadowOffset = CGSize(width: 2, height: 5)
    }

    func profilImageSet(){
       profilImageView.layer.cornerRadius = 20
    }
    
    func setProfil(){
        let ProfilAffiche = ProfilAffiches[index]
        nameLabel.text = ProfilAffiche.name
        infoLable.text = ProfilAffiche.descriptif
        profilImageView.image = ProfilAffiche.setImageProfil()
        nameLabel.textColor = ProfilAffiche.colorGenre
        infoLable.textColor = ProfilAffiche.colorGenre
        container.layer.shadowColor = ProfilAffiche.shadowColor
        logo.layer.borderColor = ProfilAffiche.shadowColor
    }
    
    @IBAction func YesPress(_ sender: Any) {
        if index < ProfilAffiches.count - 1
        {
            index += 1
        }
        else{
            index = 0
        }
        setProfil()
        
        
    }
    @IBAction func NoPress(_ sender: Any) {
        if index == 0
        {
            index = ProfilAffiches.count - 1
        }   
        else{
            index -= 1
        }
        setProfil()
    }
    
}

