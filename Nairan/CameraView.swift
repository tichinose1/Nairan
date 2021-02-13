//
//  CameraView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/13.
//

import SwiftUI
import UIKit

struct CameraView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> some UIViewController {
        let controller = UIImagePickerController()
        controller.sourceType = .camera
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
