//
//  ColorizedViewController.swift
//  Colorizer
//
//  Created by J Eff on 24.02.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setNew(color as: UIColor)
}

final class ColorizedViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.incomingColor = view.backgroundColor
        settingsVC.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension ColorizedViewController: SettingsViewControllerDelegate {
    func setNew(color: UIColor) {
        self.view.backgroundColor = color
    }
}
