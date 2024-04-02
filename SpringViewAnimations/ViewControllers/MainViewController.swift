//
//  ViewController.swift
//  SpringViewAnimations
//
//  Created by Dmitry Parhomenko on 02.04.2024.
//

import UIKit
import SpringAnimation


final class MainViewController: UIViewController {
    
    
    @IBOutlet var springView: SpringView!
    
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forseLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var actionButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func animationButton(_ sender: SpringButton) {
        sender.animation = "pop"
        sender.animate()
        springView.animation = "squeezeDown"
        springView.delay = 1
        springView.animate()
        
    }
}

