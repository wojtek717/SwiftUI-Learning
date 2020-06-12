//
//  HikeDetails.swift
//  SwiftUi-List
//
//  Created by Wojciech Konury on 12/06/2020.
//  Copyright © 2020 Wojciech Konury. All rights reserved.
//

import SwiftUI

struct HikeDetails: View {
    let hike: Hike
    
    init(hike: Hike) {
        self.hike = hike
    }
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 30) {
                Image(hike.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.horizontal)
                VStack(spacing: 10) {
                    Text(hike.name)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                    Text(String(format: "%.2f miles", hike.miles))
                        .font(.system(size: 20))
                }
            }
            Spacer()
        }
        .navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetails_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetails(hike: Hike(name: "Smooth path", imageURL: "im3", miles: 3.2))
    }
}


