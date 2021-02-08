//
//  AdviceListItemView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/08.
//

import SwiftUI

struct AdviceListItemView: View {
    var body: some View {
        HStack {
            Image(systemName: "house")
            Text("指摘")
        }
    }
}

struct AdviceListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceListItemView()
            .previewLayout(.sizeThatFits)
    }
}
