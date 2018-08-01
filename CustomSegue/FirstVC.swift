//
//  ViewController.swift
//  CustomSegue
//
//  Created by Mike Milord on 28/06/2018.
//  Copyright © 2018 First Republic. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    @IBAction func pressAddItemButton(_ sender: UIButton) {
        print("was called")
        
        performSegue(withIdentifier: "idFirstSegue", sender: self)
        
        
    }
    
    

    
    @IBAction func returnFromSegueActions(sender: UIStoryboardSegue){
        
    }
    
//    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
//        if unwindSegue.identifier == "idFirstSegueUnwind" {
//            print("unwing")
//
//            _ = UnwindLeftRightPushSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination) {
//
//                print("unwinding segue")
//
//            }
//        }
//    }
    

    

}

