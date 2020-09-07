//
//  MainViewController.swift
//  Mix Color
//
//  Created by Fuhrer_SS on 07.09.2020.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit

protocol NewBackgrounColorDelegate {
    func transferColor(color: UIColor)
}

class MainViewController: UIViewController {

   
    @IBAction func editColorButton(_ sender: Any) {
        performSegue(withIdentifier: "editSegue", sender: nil)
    }
    
    var redAlphaValue = CGFloat(0.0)
    var greenAlphaValue = CGFloat(0.0)
    var blueAlphaValue = CGFloat(0.0)
    
    
    // MARK: - Navigation
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorEditorVC = segue.destination as! ViewController
        colorEditorVC.delegate = self
        colorEditorVC.redValueColor = redAlphaValue
        colorEditorVC.greenValueColor = greenAlphaValue
        colorEditorVC.blueValueColor = blueAlphaValue
    }
    
}

//MARK: - Method
extension MainViewController: NewBackgrounColorDelegate {
    func transferColor(color: UIColor) {
        self.view.backgroundColor = color
    }
}
