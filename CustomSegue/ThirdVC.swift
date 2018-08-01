//
//  ThirdVC.swift
//  CustomSegue
//
//  Created by Mike Milord on 28/06/2018.
//  Copyright © 2018 First Republic. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let swipDown = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeDown(_:)))
        swipDown.direction = .down
        self.view.addGestureRecognizer(swipDown)
    }
    
    @objc private func handleSwipeDown(_ swipe: UISwipeGestureRecognizer){
        
        print("swipe down")
        
        self.performSegue(withIdentifier: "unwindSwipeUpSegue", sender: self)
        
    }



}
