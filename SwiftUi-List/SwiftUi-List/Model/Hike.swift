//
//  Hike.swift
//  SwiftUi-List
//
//  Created by Wojciech Konury on 12/06/2020.
//  Copyright © 2020 Wojciech Konury. All rights reserved.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func getHikes() -> [Hike] {
        return [
            Hike(name: "Plat trail", imageURL: "im1", miles: 5.2),
            Hike(name: "Dragon mountain", imageURL: "im2", miles: 31.2),
            Hike(name: "Smooth path", imageURL: "im3", miles: 3.2)]
    }
}
