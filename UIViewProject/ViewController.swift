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
    
    private var colorOfView: UIColor?
    
    private var colorRed: CGFloat = 0.0
    private var colorGreen: CGFloat = 0.0
    private var colorBlue: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColorView.layer.cornerRadius = 10
        
    }

    @IBAction func changeColor() {
        colorRed = CGFloat(redLightSlider.value)
        colorGreen = CGFloat(greenLightSlider.value)
        colorBlue = CGFloat(blueLightSlider.value)
        
        valueOfRedLabel.text = String(redLightSlider.value)
        valueOfGreenLabel.text = String(greenLightSlider.value)
        valueOfBluelabel.text = String(blueLightSlider.value)
        
        colorOfView = UIColor(red: colorRed, green: colorGreen, blue: colorBlue, alpha: 1.0)
        changeColorView.backgroundColor = colorOfView
        
    }
    
}

