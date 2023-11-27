//
//  TransparentShape.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 27/11/23.
//

import Foundation

class TransparentShape : decShape
{
  var shape: decShape
  var transparency: Float

  init(_ shape: decShape, _ transparency: Float)
  {
    self.shape = shape
    self.transparency = transparency
  }

  var description: String
  {
    return "\(shape.description) has \(transparency*100)% transparency"
  }
}

// MARK: - USAGE

/*
 let square = Square(1.23)
 print(square)

 let redSquare = ColoredShape(square, "red")
 print(redSquare)

 let redHalfTransparentSquare = TransparentShape(redSquare, 0.5)
 print(redHalfTransparentSquare)
 */
