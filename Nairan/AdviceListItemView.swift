//
//  AdviceListItemView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/08.
//

import SwiftUI

struct AdviceListItemView: View {

    var advice: Advice
    var image: Image

    var body: some View {
        HStack {
            image.resizable().scaledToFit().frame(width: 88.0, height: 88.0)
            Text(advice.title)
        }
    }
}

struct AdviceListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceListItemView(
            advice: Advice.advices[0],
            image: Image("advice01")
        )
        .previewLayout(.sizeThatFits)
    }
}
