//
//  ViewController.swift
//  Test-444-1
//
//  Created by Rebecca  Slatkin on 1/13/20.
//  Copyright © 2020 June Life. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberTaps = 0
    @IBOutlet weak var numberOfTapsValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func userDidPressButton(_ sender: UIButton) {
        self.numberTaps+=1
        if (sender.backgroundColor == .yellow) {
            sender.backgroundColor = .orange
        } else {
            sender.backgroundColor = .yellow
        }
        updateNumberTapsLabel()
    }
    
    func updateNumberTapsLabel() {
        self.numberOfTapsValueLabel.text = "\(self.numberTaps)"
    }
}

