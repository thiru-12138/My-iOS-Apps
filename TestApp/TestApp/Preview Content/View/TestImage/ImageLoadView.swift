//
//  ImageLoadView.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 05/11/25.
//

import SwiftUI

struct ImageLoadView: View {
    @StateObject var viewmodel = ImageDownloadViewModel()
    
    var body: some View {
        ZStack {
            GeometryReader { geo in
                ScrollView {
                    LazyVGrid(columns: [.init(.adaptive( minimum: 100))], content: {
                        ForEach(viewmodel.images.indices, id: \.self) { index in
                            if let image = viewmodel.images[index] {
                                Image(uiImage: image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            } else {
                                ProgressView().frame(width: 100, height: 100)
                            }
                        }
                    })
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .task {
                await viewmodel.downloadAllImages()
            }
    }
}

#Preview {
    ImageLoadView()
}
