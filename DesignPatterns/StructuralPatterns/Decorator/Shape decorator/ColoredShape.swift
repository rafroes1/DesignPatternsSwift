//
//  ColoredShape.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 27/11/23.
//

import Foundation

class ColoredShape : decShape
{
  var shape: decShape
  var color: String

  init(_ shape: decShape, _ color: String)
  {
    self.shape = shape
    self.color = color
  }

  var description: String
  {
    return "\(shape.description) has color \(color)"
  }
}
