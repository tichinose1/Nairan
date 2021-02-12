//
//  ImagePicker.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/12.
//

import SwiftUI
import PhotosUI

struct ImagePickerView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> some UIViewController {
        let configuration = PHPickerConfiguration()
        return PHPickerViewController(configuration: configuration)
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
