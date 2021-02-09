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
