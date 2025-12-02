//
//  ImageDownloadViewModel.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 05/11/25.
//

import Foundation
import UIKit

@MainActor
class ImageDownloadViewModel: ObservableObject {
    @Published var images: [UIImage?] = Array(repeating: nil, count: 110)
    
    private var imageurls: [URL] = Array(1...110).map { URL(string: "https://picsum.photos/id/\($0)/300")! }
    
    func downloadAllImages() async {
        await withTaskGroup(of: (Int, UIImage?).self, body: { group in
            for (index, url) in imageurls.enumerated() {
                group.addTask(operation: {
                    let image = await self.downloadImage(at: url)
                    return (index, image)
                })
            }
            
            for await (index, image) in group {
                images[index] = image
            }
        })
    }
    
    private func downloadImage(at url: URL) async -> UIImage? {
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return UIImage(data: data)
        } catch {
            print("error downloading image: \(error.localizedDescription)")
            return nil
        }
    }
}
