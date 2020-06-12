//
//  Task.swift
//  SwiftUi Simple TaskList
//
//  Created by Wojciech Konury on 12/06/2020.
//  Copyright © 2020 Wojciech Konury. All rights reserved.
//

import Foundation
import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let title: String
    var isDone: Bool
}
