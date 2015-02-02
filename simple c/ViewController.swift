//
//  ViewController.swift
//  simple c
//
//  Created by David Wagner on 02/02/2015.
//  Copyright (c) 2015 David Wagner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let kIterations = 10000000
    
    @IBOutlet weak var swiftLabel: UILabel!
    @IBOutlet weak var cLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        swiftLabel.text = ""
        cLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func time_it<T>(thing : () -> T ) -> String {
        let start = NSDate()
        let result = thing()
        let stop = NSDate()
        let interval = stop.timeIntervalSinceDate(start)
        
        return "\(result)\n\(interval) seconds"
    }

    @IBAction func handleSwiftTapped(sender: UIButton) {
        swiftLabel.text = time_it {
            do_swift_thing(self.kIterations)
        }
    }

    @IBAction func handleCTapped(sender: UIButton) {
        cLabel.text = time_it {
            do_c_thing(Int32(self.kIterations))
        }
    }
}

