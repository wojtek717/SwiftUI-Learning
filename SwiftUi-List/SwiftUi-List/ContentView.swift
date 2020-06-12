//
//  ContentView.swift
//  SwiftUi-List
//
//  Created by Wojciech Konury on 12/06/2020.
//  Copyright © 2020 Wojciech Konury. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let hikes = Hike.getHikes()
    
    var body: some View {
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink(destination: HikeDetails(hike: hike)){
                    HikeCell(hike: hike)
                }
            }
                
            .navigationBarTitle("Hikings")
        }
    }
}

struct HikeCell: View {
    let hike: Hike
    
    init(hike: Hike) {
        self.hike = hike
    }
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(hike.name)
                    .font(.system(size: 22))
                Text(String(hike.miles))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
