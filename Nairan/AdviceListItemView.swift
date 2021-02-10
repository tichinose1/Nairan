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
            Image("advice01")
            Text(advice.title)
        }
    }
}

struct AdviceListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceListItemView(
            advice: Advice.advices[0]
        )
        .previewLayout(.sizeThatFits)
    }
}
