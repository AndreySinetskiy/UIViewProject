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
        
        setColor()
        
       setValue(for: valueOfRedLabel, valueOfGreenLabel, valueOfBluelabel )
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        setColor()
        switch sender {
        case redLightSlider:
            valueOfRedLabel.text = string(from: redLightSlider)
        case greenLightSlider:
            valueOfGreenLabel.text = string(from: greenLightSlider)
        default :
            valueOfBluelabel.text =  string(from: blueLightSlider)
           
        }
    }
    
    private func setColor() {
        changeColorView.backgroundColor = UIColor(red: CGFloat(redLightSlider.value), green: CGFloat(greenLightSlider.value), blue: CGFloat(blueLightSlider.value), alpha: 1)
        
    }
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case valueOfRedLabel:
                valueOfRedLabel.text = string(from: redLightSlider)
            case greenLightSlider:
                valueOfGreenLabel.text = string(from: greenLightSlider)
            default :
                valueOfBluelabel.text =  string(from: blueLightSlider)
                
            }
        }
    }
}

