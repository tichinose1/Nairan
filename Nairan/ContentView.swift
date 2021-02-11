//
//  ContentView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(Advice.advices) { advice in
                AdviceListItemView(advice: advice)
            }
            .navigationTitle("指摘一覧")
            .navigationBarItems(trailing: Button("Camera") {})
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
