//
//  SecondVC.swift
//  CustomSegue
//
//  Created by Mike Milord on 28/06/2018.
//  Copyright © 2018 First Republic. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let swipUp = UISwipeGestureRecognizer(target: self, action: #selector(handleSwip(_:)))
        swipUp.direction = .up
        self.view.addGestureRecognizer(swipUp)
    }
    
    
    @objc private func handleSwip(_ swipe:UISwipeGestureRecognizer){
        
        if swipe.direction == .up {
            print("did swip up")
            self.performSegue(withIdentifier: "idSwipeUpSegue", sender: self)
        } else if swipe.direction == .left {
            performSegue()
        }
        
        
        
    }


    @IBAction func pressedBackButton(_ sender: UIButton) {
        
        performSegue()
    }
    
    private func performSegue(){
        self.performSegue(withIdentifier: "idFirstSegueUnwind", sender: self)
    }
    

    @IBAction func returnFromSwipeUpSegue(sender: UIStoryboardSegue){
        
    }

}
