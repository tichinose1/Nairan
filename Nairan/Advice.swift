//
//  Advice.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/08.
//

import SwiftUI

struct Advice {
    var oid: String
    var title: String
    var image: Image
    var detail: String
}

extension Advice: Identifiable {

    var id: String {
        oid
    }
}

extension Advice {

    static var advices = [
        Advice(
            oid: "1",
            title: "汚れがあります",
            image: Image("advice01"),
            detail: "1"
        ),
        Advice(
            oid: "2",
            title: "ひび割れしています",
            image: Image("advice01"),
            detail: "2"
        ),
        Advice(
            oid: "3",
            title: "溝があります",
            image: Image("advice01"),
            detail: "3"
        ),
        Advice(
            oid: "4",
            title: "剥がれています",
            image: Image("advice01"),
            detail: "3"
        )
    ]
}
