//
//  ViewController.swift
//  UIViewProject
//
//  Created by 1 on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var changeColorView: UIView!
    
    @IBOutlet weak var valueOfRedLabel: UILabel!
    @IBOutlet weak var valueOfGreenLabel: UILabel!
    @IBOutlet weak var valueOfBluelabel: UILabel!
    
    @IBOutlet weak var redLightSlider: UISlider!
    @IBOutlet weak var greenLightSlider: UISlider!
    @IBOutlet weak var blueLightSlider: UISlider!
    
   override func viewDidLoad() {
        super.viewDidLoad()
        changeColorView.layer.cornerRadius = 10
        redLightSlider.value = 0.0
        greenLightSlider.value = 0.0
        blueLightSlider.value = 0.0
    }

    @IBAction func changeColor() {
        valueOfRedLabel.text = String(format: "%.02f", redLightSlider.value)
        valueOfGreenLabel.text = String(format: "%.02f", greenLightSlider.value)
        valueOfBluelabel.text = String(format: "%.02f", blueLightSlider.value)
        
        changeColorView.backgroundColor = UIColor(red: CGFloat(redLightSlider.value), green: CGFloat(greenLightSlider.value), blue: CGFloat(blueLightSlider.value), alpha: 1)
        
    }
    
}

