//
//  ViewController.swift
//  homework 12(part 1)
//
//  Created by Shirayo on 20.02.2020.
//  Copyright © 2020 Shirayo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorViews: [UIView]!
    var counter1: Bool = false
    var counter2: Bool = false

    let defaultColors: [UIColor] = [.systemRed, .systemBlue, .systemBlue, .systemGreen, .systemGreen]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1DidClick(_ button: UIButton) {
        counter1 = !counter1
        if counter1 {               //но я его ещё не придумал(
            setCornerRadiusTo(20)
        } else {
            setCornerRadiusTo(0)
        }
    }
    
    @IBAction func button2DidClick(_ button: UIButton) {
        counter2 = !counter2
        if counter2 {
            setViewsColorTo(.black)
        } else {
            setDefaultColors()
        }
    }
    
    func setCornerRadiusTo(_ number: CGFloat) {
        for view in colorViews {
            view.layer.cornerRadius = number
        }
    }
    
    func setViewsColorTo(_ color: UIColor) {
        for view in colorViews {
            view.backgroundColor = color
        }
    }
    
    func setDefaultColors() {
        for i in 0..<colorViews.count {
            colorViews[i].backgroundColor = defaultColors[i]
        }
    }
}

