//
//  Animation.swift
//  SpringViewAnimations
//
//  Created by Dmitry Parhomenko on 02.04.2024.
//

import Foundation

struct Animations {
    
    let present: String
    let curve: String
    let forse: Double
    let duration: Double
    let delay: Double

    static func getAnimations() -> [Animations] {
        
        var animations: [Animations] = []
        let dataStore = DataStore.shared
        
        let presents = dataStore.animations.shuffled()
        let curves = dataStore.curves.shuffled()
        let randomForse = getRandom()
        let randonDuration = getRandom()
        let randomDelay = getRandom()
        
        let interationCount = min(
            presents.count,
            curves.count
        )
        
        func getRandom() -> Double {
            Double.random(in: 0.1...3.0)
        }
        
        for index in 0..<interationCount {
            let animation = Animations(
                present: presents[index],
                curve: curves[index],
                forse: randomForse,
                duration: randonDuration,
                delay: randomDelay
            )
            animations.append(animation)
        }
        
        return animations
    }
}
