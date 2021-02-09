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
            oid: "1",
            title: "汚れがあります",
            image: URL(string: "https://www.apple.com/jp/")!,
            detail: "hogehoge"
        ),
        Advice(
            oid: "2",
            title: "ひび割れしています",
            image: URL(string: "https://www.apple.com/jp/")!,
            detail: "hogehoge"
        )
    ]

    var body: some View {
        NavigationView {
            List(advices) { advice in
                AdviceListItemView(advice: advice)
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
