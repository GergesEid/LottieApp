//
//  LottieAnimation.swift
//  LottieApp
//
//  Created by Gerges on 16/04/2022.
//

import UIKit
import Lottie

extension UIViewController {
    
    func startAnimationLaoder (jsonName: String) {
        // Create Animation object
        let jsonName = jsonName
        let animation = Animation.named(jsonName)
        // Load animation to AnimationView
        let animationView = AnimationView(animation: animation)
        // Set animation view content mode
        animationView.contentMode = .scaleToFill
        // Add animationView as subview
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            animationView.heightAnchor.constraint(equalToConstant: 100),
            animationView.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        // Speed up animation
        animationView.animationSpeed = 1
        // Set animation loop mode
        animationView.loopMode = .loop
        // Play the animation
        animationView.play() { (bool) in
            print("It's Done")
        }
        // add tag to could remove animationView later
        animationView.tag = 20
    }

    // remove and stop animation
    func stopAnimationLaoder () {
        if let removable = view.viewWithTag(20){
           removable.removeFromSuperview()
        }
    }
}

