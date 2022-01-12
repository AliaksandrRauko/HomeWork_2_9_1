//
//  Animation.swift
//  HomeWork_2_9_1
//
//  Created by Aliaksandr Rauko on 12.01.22.
//
import UIKit

struct Animation1 {
    
    let animation: String
    let curve: CGFloat
    let force: CGFloat
    let duration: CGFloat
    let dalay: CGFloat

}

extension Animation1 {
    
    static func getAnimation() -> [Animation] {
        
        return Animation(animation: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
                         curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
                         force: CGFloat(Double.random(in: 1..<2)),
                         duration: CGFloat(Double.random(in: 0.5..<2)),
                         dalay: CGFloat(Double.random(in: 0.1..<0.5)))
    }
}
