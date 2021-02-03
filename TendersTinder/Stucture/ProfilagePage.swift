//
//  ProfilagePage.swift
//  TendersTinder
//
//  Created by Florian  on 01/02/2021.
//

import UIKit

struct Profilage {
    var name : String
    var age : Int
    var genre : Genre
    var imageString : String

    var descriptif : String{
        return "\(genre.rawValue) agé de \(age) ans"
    }
    
    var colorGenre: UIColor {
        switch genre{
        case .male : return UIColor.systemTeal
        case .femelle : return UIColor.systemRed
        }
    }
    
    var shadowColor : CGColor {
        return colorGenre.cgColor
    }
    
    func setImageProfil() -> UIImage? {
        return UIImage(named: imageString)
    }
}

enum Genre: String {
    case male
    case femelle
    
}
