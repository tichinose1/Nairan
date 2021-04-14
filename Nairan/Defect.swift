//
//  Advice.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/20.
//

import Foundation

struct Defect {
    var title: String
    var imageURL: URL
    var detail: String
}

extension Defect {
    static var items: [Defect] = [
        Defect(title: "リビングの壁①",
               imageURL: URL(string: "https://www.jyutakusindan.com/wp-content/uploads/sites/9/2016/11/2b530e80c7d0de90885e285c5d798063.png")!,
               detail: "壁が汚れている"
        ),
        Defect(title: "リビングの床①",
               imageURL: URL(string: "https://stat.ameba.jp/user_images/20121223/14/mikami2345/4d/f8/j/o0420031512342471305.jpg?caw=800")!,
               detail: "床が傾いている"
        ),
        Defect(title: "寝室の壁①",
               imageURL: URL(string: "https://homedoctor.co.jp/servise/img/nairan3.jpg")!,
               detail: "穴があいている"
        )
    ]
}
