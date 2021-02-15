//
//  CameraView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/13.
//

import SwiftUI
import UIKit

struct CameraView: UIViewControllerRepresentable {

    @Environment(\.presentationMode) private var presentationMode
    @Binding var image: Image
    @Binding var advices: [Advice]

    func makeUIViewController(context: Context) -> some UIViewController {
        let controller = UIImagePickerController()
        controller.sourceType = .camera
        controller.delegate = context.coordinator
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        var parent: CameraView

        init(_ parent: CameraView) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                let image = Image(uiImage: uiImage)
                parent.image = image
                parent.advices.append(
                    Advice(oid: "9999", title: "hoge", image: image, detail: "今撮りました")
                )
            }

            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
