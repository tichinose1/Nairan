//
//  Advice.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/08.
//

import Foundation

struct Advice {
    var oid: String
    var title: String
    var image: URL
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
            image: URL(string: "https://www.apple.com/jp/")!,
            detail: "1"
        ),
        Advice(
            oid: "2",
            title: "ひび割れしています",
            image: URL(string: "https://www.apple.com/jp/")!,
            detail: "2"
        ),
        Advice(
            oid: "3",
            title: "溝があります",
            image: URL(string: "https://www.apple.com/jp/")!,
            detail: "3"
        ),
        Advice(
            oid: "4",
            title: "剥がれています",
            image: URL(string: "https://www.apple.com/jp/")!,
            detail: "3"
        )
    ]
}
