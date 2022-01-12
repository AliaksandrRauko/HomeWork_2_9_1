//
//  ViewController.swift
//  HomeWork_2_9_1
//
//  Created by Aliaksandr Rauko on 11.01.22.
//

import Spring

struct Animation {
    let animation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

class SpringAnimationViewController: UIViewController {
    
    @IBOutlet weak var presentLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var springAnimationView: SpringView!
    private var animation: Animation!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        animation = getAnimation()
        setSettingsAnimation(animation: animation)
    }
    
    @IBAction func springRunAction(_ sender: SpringButton) {
        
        if sender.titleLabel?.text != "Run" {
            setSettingsAnimation(animation: animation)
        }
        
        springAnimationView.animate()
        animation = getAnimation()
        sender.setTitle("Run \(animation.animation)", for: .normal)
    }
    
}

extension SpringAnimationViewController {
    
    private func getAnimation() -> Animation {

        Animation(
            animation:Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1..<2),
            duration: Double.random(in: 0.5..<2),
            delay: Double.random(in: 0.1..<0.5)
        )
    }
    
    private func setSettingsAnimation(animation: Animation) {
        
        presentLabel.text = animation.animation
        curveLabel.text = animation.curve
        forceLabel.text = string(value: animation.force)
        durationLabel.text = string(value: animation.duration)
        delayLabel.text = string(value: animation.delay)
        
        springAnimationView.animation = animation.animation
        springAnimationView.curve = animation.curve
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        
    }
    
    private func string(value: Double) -> String {
        String(format: "%.2f", value)
    }
}
