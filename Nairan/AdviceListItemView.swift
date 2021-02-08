//
//  AdviceListItemView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/08.
//

import SwiftUI

struct AdviceListItemView: View {

    var advice: Advice

    var body: some View {
        HStack {
            Image(systemName: "house")
            Text(advice.title)
        }
    }
}

struct AdviceListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceListItemView(
            advice: Advice(
                title: "汚れがあります",
                image: URL(string: "https://www.apple.com/jp/")!,
                detail: "hogehoge"
            )
        )
        .previewLayout(.sizeThatFits)
    }
}
