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
    
    var redValueColor = CGFloat(0.0)
    var greenValueColor = CGFloat(0.0)
    var blueValueColor = CGFloat(0.0)
    
    var delegate: MainViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mixColorsView.layer.cornerRadius = 10
        
        valueSliderRed.minimumTrackTintColor = .red
        valueSliderGreen.minimumTrackTintColor = .green
        valueSliderBlue.minimumTrackTintColor = .blue
        
        valueSliderRed.value = Float(redValueColor)
        valueSliderGreen.value = Float(greenValueColor)
        valueSliderBlue.value = Float(blueValueColor)
        
        valueAlphaRedColor.text = String(format: "%.2f", valueSliderRed.value)
        valueAlphaGreenColor.text = String(format: "%.2f", valueSliderGreen.value)
        valueAlphaBlueColor.text = String(format: "%.2f", valueSliderBlue.value)
        
        colorAssignmentRGB()
        
    }
    
    @IBAction func changedRedColor() {
        let sliderValue = CGFloat(valueSliderRed.value)
        valueAlphaRedColor.text = String(format: "%.2f",sliderValue)
        mixColorsView.backgroundColor = mixColorsView.backgroundColor?.withAlphaComponent(sliderValue)
        colorAssignmentRGB()
    }
    
    @IBAction func changedGreenColor() {
        let sliderValue = CGFloat(valueSliderGreen.value)
        valueAlphaGreenColor.text = String(format: "%.2f",sliderValue)
        mixColorsView.backgroundColor = mixColorsView.backgroundColor?.withAlphaComponent(sliderValue)
        colorAssignmentRGB()
    }
    
    @IBAction func changedBlueColor() {
        let sliderValue = CGFloat(valueSliderBlue.value)
        valueAlphaBlueColor.text = String(format: "%.2f",sliderValue)
        mixColorsView.backgroundColor = mixColorsView.backgroundColor?.withAlphaComponent(sliderValue)
        colorAssignmentRGB() 
    }
    
    @IBAction func doneButton() {
        delegate.transferColor(color: mixColorsView.backgroundColor ?? UIColor.clear)
        delegate.redAlphaValue = CGFloat(valueSliderRed.value)
        delegate.greenAlphaValue = CGFloat(valueSliderGreen.value)
        delegate.blueAlphaValue = CGFloat(valueSliderBlue.value)
        dismiss(animated: true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let mainVC = segue.destination as! MainViewController
        mainVC.redAlphaValue = CGFloat(valueSliderRed.value)
        mainVC.greenAlphaValue = CGFloat(valueSliderGreen.value)
        mainVC.blueAlphaValue = CGFloat(valueSliderBlue.value)
    }
    
    func colorAssignmentRGB() {
        mixColorsView.backgroundColor = UIColor(red: CGFloat(valueSliderRed.value),
                                             green: CGFloat(valueSliderGreen.value),
                                             blue: CGFloat(valueSliderBlue.value),
                                             alpha: mixColorsView.alpha)
    }
}





