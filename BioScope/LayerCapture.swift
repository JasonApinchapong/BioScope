//
//  LayerCapture.swift
//  BioScope
//
//  Created by Jason Apinchapong on 4/26/18.
//  Copyright © 2018 Timothy DenOuden. All rights reserved.
//
//  A Concept class made to take the photos at diferent focal lengths

import UIKit

class LayerCapture : Capture {
    var image: UIImage
    
    init(title: String, zoom: Int, image: UIImage, lensType: Char) {
        self.image = image
        super.init(title: title, zoom: zoom)
        
        super.lensZoom = 0 // Changes lens zoom starting it at 0 allowing it to increment up
        self.lensType = lensType // Added this to detect which lens type to change the layering style
    }
    
    override public func squarePreviewWith(width: CGFloat) -> UIImage {
        lensType = 4 // A test to check to see if the if statement runs below
        if lensType = 4 { // if statement will run if using a 4x lens
            for i in 1...5 {
                if let preview = previewImage {
                    println("Hi") // debug
                    return preview
                }
                else {
                    previewImage = ImageUtils.resize(image: image, newWidth: width * 2, lensZoom)
                    println("hello") // debug
                    return previewImage!
                }
                lensZoom += 20 //Increments the zoom up
            }
        }
        /* Same concept as above but will be implemented based on lens type
        else if lensType = 6 {
            
        }
         */
    }
    
}
