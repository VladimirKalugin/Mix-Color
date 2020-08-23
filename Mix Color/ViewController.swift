//
//  ViewController.swift
//  Mix Color
//
//  Created by Fuhrer_SS on 23.08.2020.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var mixColorsView: UIView!
    
    @IBOutlet var valueAlphaRedColor: UILabel!
    @IBOutlet var valueAlphaGreenColor: UILabel!
    @IBOutlet var valueAlphaBlueColor: UILabel!
    
    @IBOutlet var valueSliderRed: UISlider!
    @IBOutlet var valueSliderGreen: UISlider!
    @IBOutlet var valueSliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mixColorsView.layer.cornerRadius = 10
        
        valueSliderRed.minimumTrackTintColor = .red
        valueSliderGreen.minimumTrackTintColor = .green
        valueSliderBlue.minimumTrackTintColor = .blue
        
        mixColorsView.backgroundColor = UIColor (red: CGFloat(valueSliderRed.value),
                                                 green: CGFloat(valueSliderGreen.value),
                                                 blue: CGFloat(valueSliderBlue.value),
                                                 alpha: mixColorsView.alpha)
        
    }
    
    @IBAction func changedRedColor() {
        let sliderValue = CGFloat(valueSliderRed.value)
        valueAlphaRedColor.text = String(format: "%.2f",sliderValue)
        mixColorsView.backgroundColor = mixColorsView.backgroundColor?.withAlphaComponent(sliderValue)
        mixColorsView.backgroundColor = UIColor (red: CGFloat(valueSliderRed.value),
                                                       green: CGFloat(valueSliderGreen.value),
                                                       blue: CGFloat(valueSliderBlue.value),
                                                       alpha: mixColorsView.alpha)
    }
    
    @IBAction func changedGreenColor() {
        let sliderValue = CGFloat(valueSliderGreen.value)
        valueAlphaGreenColor.text = String(format: "%.2f",sliderValue)
        mixColorsView.backgroundColor = mixColorsView.backgroundColor?.withAlphaComponent(sliderValue)
        mixColorsView.backgroundColor = UIColor (red: CGFloat(valueSliderRed.value),
                                                 green: CGFloat(valueSliderGreen.value),
                                                 blue: CGFloat(valueSliderBlue.value),
                                                 alpha: mixColorsView.alpha)
    }
    
    @IBAction func changedBlueColor() {
        let sliderValue = CGFloat(valueSliderBlue.value)
        valueAlphaBlueColor.text = String(format: "%.2f",sliderValue)
        mixColorsView.backgroundColor = mixColorsView.backgroundColor?.withAlphaComponent(sliderValue)
        mixColorsView.backgroundColor = UIColor (red: CGFloat(valueSliderRed.value),
                                                 green: CGFloat(valueSliderGreen.value),
                                                 blue: CGFloat(valueSliderBlue.value),
                                                 alpha: mixColorsView.alpha)
    }
    
    
}

