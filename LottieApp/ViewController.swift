//
//  ViewController.swift
//  LottieApp
//
//  Created by Gerges on 16/04/2022.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    @IBOutlet weak var lottieAnimationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonAction(_ sender: Any) {
//        startAnimationCat(file: "cute-cat", viewForAnimation: lottieAnimationView)
        startAnimationLaoder(jsonName: "infinity-loader")
    }
    
    @IBAction func stopButtonAction(_ sender: Any) {
//        stopAnimationCat(file: "lottieAnimationView", viewForAnimation: lottieAnimationView)
        stopAnimationLaoder()
    }
    
}

extension ViewController {
    /// Start Animation Lottie
    func startAnimationCat (file: String, viewForAnimation: AnimationView) {
        viewForAnimation.isHidden = false
        let path = Bundle.main.path(forResource: file,
                                    ofType: "json") ?? ""
        viewForAnimation.animation = Animation.filepath(path)
        viewForAnimation.loopMode = .playOnce
        viewForAnimation.animationSpeed = 2
        viewForAnimation.play  { (bool) in
            print("Animation Done")
        }
    }
    
    func stopAnimationCat (file: String, viewForAnimation: AnimationView) {
        viewForAnimation.stop()
        viewForAnimation.isHidden = true
    }
}
