//
//  CameraView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/13.
//

import SwiftUI
import UIKit

struct CameraView: UIViewControllerRepresentable {

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
            defer {
                picker.dismiss(animated: true, completion: nil)
            }
            guard let uiImage = info[.originalImage] as? UIImage else { return }

            // TODO: 何回も撮影すると同じ画像が使われる？
            let image = Image(uiImage: uiImage)
            parent.advices.append(
                Advice(oid: "9999", title: "今撮りました", image: image, detail: "hoge")
            )
        }
    }
}
