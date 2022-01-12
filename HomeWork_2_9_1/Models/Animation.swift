//
//  Animation.swift
//  HomeWork_2_9_1
//
//  Created by Aliaksandr Rauko on 12.01.22.
//

struct Animation1 {
    let animation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

extension Animation1 {
    
    static func getAnimation() -> Animation1 {
        
        Animation1(
            animation: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1..<2),
            duration: Double.random(in: 0.5..<2),
            delay: Double.random(in: 0.1..<0.5)
        )
    }
}
