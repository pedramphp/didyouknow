//
//  FactBook.swift
//  FunFacts
//
//  Created by Pedramrazi, Mahdi on 2/21/16.
//  Copyright © 2016 Mexo Inc. All rights reserved.
//

// import Foundation framework
// classes methods properties available in our project
import Foundation

// Data model
struct FactBook {
    // immutable and unchangable array
    let factsArray = [
        "Ants stretch when they wake up in the morning.",
        "Ostritches can run faster than horses.",
        "Olympic gold medals are actually mostly made of silver.",
        "You are born with 300 bones; by the time you are an adult you will have 206.",
        "It takes about 8 minutes for light from the Sun to reach the Earth.",
        "Some bamboo plants can grow almost a meter in just one day.",
        "Some penguins can leap 2-3 meters out of the water.",
        "The state of Florida is bigger than England.",
        "On average, it takes 66 days to form a new habit.",
        "Mammoths still walked the Earth when the Great Pyramid was being built."
    ]
    
    func randomFact() -> String {
        
        let unsignedArrayCount = UInt32(factsArray.count)
        
        let unsignedRandomArray = arc4random_uniform(unsignedArrayCount)
        
        let randomNumber = Int(unsignedRandomArray)

        return factsArray[randomNumber]
        
    }
}
