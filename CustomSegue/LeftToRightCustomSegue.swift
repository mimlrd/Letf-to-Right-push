//
//  LeftToRightCustomSegue.swift
//  CustomSegue
//
//  Created by Mike Milord on 28/06/2018.
//  Copyright © 2018 First Republic. All rights reserved.
//

import UIKit

class LeftToRightCustomSegue: UIStoryboardSegue {
    
    override func perform() {
        
        // Assign the source and destination views to local variables.
        if let fromVC = self.source.view ,
            let toVC = self.destination.view  {
            
            // Get the screen width and height.
            let screenWidth = UIScreen.main.bounds.size.width
            let screenHeight = UIScreen.main.bounds.size.height
            
            let containerView = fromVC.superview
            
            // Specify the initial position of the destination view.
            toVC.frame = CGRect(x: -screenWidth, y: 0.0, width: screenWidth, height: screenHeight)
            // Add the destination view to the container
            // Not to the window in oredr to avoid the ugly black background
            containerView?.addSubview(toVC)
            
            // Animate the transition.
            UIView.animate(withDuration: 0.4, animations: {
                
                fromVC.frame = fromVC.frame.offsetBy(dx: screenWidth, dy: 0.0)
                toVC.frame = toVC.frame.offsetBy(dx: screenWidth, dy: 0.0)
                
                
            }) { (done) in
                
                self.source.present(self.destination as UIViewController, animated: false, completion: {
                    print("finished")
                })

            }
            
        }
        
        
        
    }
}

class UnwindLeftRightPushSegue: UIStoryboardSegue{
    
    
    override func perform() {
        
        
        // Assign the source and destination views to local variables.
        if let fromVC = self.source.view ,
            let toVC = self.destination.view  {
            
            // Get the screen width and height.
            let screenWidth = UIScreen.main.bounds.size.width
            //let screenHeight = UIScreen.main.bounds.size.height
            
            let containerView = fromVC.superview

            containerView?.addSubview(toVC)
            
            // Animate the transition.
            UIView.animate(withDuration: 0.4, animations: {
                
                fromVC.frame = fromVC.frame.offsetBy(dx: -screenWidth, dy: 0.0)
                toVC.frame = toVC.frame.offsetBy(dx: -screenWidth, dy: 0.0)
                
                
            }) { (done) in
                
                self.source.dismiss(animated: true, completion: nil)
                
            }
            
        }
        
        
    }
    
}
