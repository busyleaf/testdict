//
//  TestDefinitionViewController.swift
//  TestAstroDictionary
//
//  Created by Robert Snipes on 7/14/17.
//  Copyright © 2017 snyps. All rights reserved.
//

import UIKit

class TestDefinitionViewController: UIViewController {

    @IBOutlet weak var defSign: UILabel!
    @IBOutlet weak var defLabel: UILabel!

    
    //Variable is assigned value in different file
    var sign = "☯️"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set label with variable
        defSign.text = sign
        
        switch sign {
        case "Aries": defLabel.text = "Aries is spontaneous"
        defSign.text = "♈️"
            break
        case "Taurus": defLabel.text = "Taurus is plodding"
        defSign.text = "♉️"
            break
        case "Gemini": defLabel.text = "Gemini is showy"
        defSign.text = "♊️"
            break
        case "Cancer": defLabel.text = "Cancer is loving"
        defSign.text = "♋️"
            break
        case "Leo": defLabel.text = "Leo is courageous"
        defSign.text = "♌️"
            break
        case "Virgo": defLabel.text = "Virgo is organized"
        defSign.text = "♍️"
            break
        case "Libra": defLabel.text = "Libra is social"
        defSign.text = "♎️"
            break
        case "Scorpio": defLabel.text = "Scorpio is secretive"
        defSign.text = "♏️"
            break
        case "Sagitarious": defLabel.text = "Sagitarious is cunning"
        defSign.text = "♐️"
            break
        case "Capricorn": defLabel.text = "Capricorn is perseverant"
        defSign.text = "♑️"
            break
        case "Aquarius": defLabel.text = "Aquarius is looney"
        defSign.text = "♒️"
            break
        case "Pisces": defLabel.text = "Pisces is inert"
        defSign.text = "♓️"
            break
        default:
            break
        }
    }

    
    
}
