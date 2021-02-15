//
//  ContentView.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/06.
//

import SwiftUI

struct ContentView: View {
    @State private var isImagePickerPresented = false
    @State private var isCameraPresented = false
    @State private var image: Image = Image("advice01")

    var body: some View {
        NavigationView {
            List(Advice.advices) { advice in
                AdviceListItemView(advice: advice, image: image)
            }
            .navigationTitle("指摘一覧")
            .navigationBarItems(trailing: HStack {
                Button(action: {
                    isImagePickerPresented = true
                }) {
                    Image(systemName: "photo.on.rectangle.angled")
                }
                .sheet(isPresented: $isImagePickerPresented) {
                    ImagePickerView()
                }
                Button(action: {
                    isCameraPresented = true
                }) {
                    Image(systemName: "camera.viewfinder")
                }
                .sheet(isPresented: $isCameraPresented) {
                    CameraView(image: self.$image)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
