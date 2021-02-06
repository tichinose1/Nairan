//
//  ContentView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            HouseView()
            HouseView()
            HouseView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
