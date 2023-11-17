//
//  Circle.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 17/11/23.
//

import Foundation

class Circle: Shape {
    var radius: Float
    var renderer: Renderer
    
    init(_ renderer: Renderer, _ radius: Float) {
        self.renderer = renderer
        self.radius = radius
    }
    
    func draw() {
        renderer.renderCircle(radius)
    }
    
    func resize(_ factor: Float) {
        radius *= factor
    }
}


// MARK: - USAGE

/*
 let raster = RasterRenderer()
 let vector = VectorRenderer()
 let circle = Circle(vector, 5) ///can change to raster or vector, the renderer is the one that deals with how to draw the circle and it is injected
 circle.draw()
 circle.resize(2)
 circle.draw()
 */
