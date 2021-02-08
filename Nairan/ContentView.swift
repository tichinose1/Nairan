//
//  ContentView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/06.
//

import SwiftUI

struct ContentView: View {

    var advices = [
        Advice(
            title: "汚れがあります",
            image: URL(string: "https://www.apple.com/jp/")!,
            detail: "hogehoge"
        )
    ]

    var body: some View {
        NavigationView {
            List {
                AdviceListItemView(advice: advices[0])
                AdviceListItemView(advice: advices[0])
            }
            .navigationTitle("指摘一覧")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
