//
//  ViewController.swift
//  Colorizer
//
//  Created by J Eff on 05.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var colorView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 30
        setupAllLabels()
    }

    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value.formatted()
    }
    
    private func setupAllLabels() {
        redLabel.text = "Red: \(redSlider.value.formatted())"
    }
    
    private func setupRedSlider() {
//        redSlider.value
    }

}

