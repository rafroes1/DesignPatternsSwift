//
//  LineToPointAdapter.swift
//  DesignPatterns
//
//  Created by Rafael Carvalho on 17/11/23.
//

import Foundation

class LineToPointAdapter: Sequence {

    private static var count = 0
    
    // hash of line -> points for line
    static var cache = [Int: [myPoint]]()
    var hash: Int

    init(_ line: myLine)
    {
      // if the line is cached, don't add it
      hash = line.hashValue
      if type(of: self).cache[hash] != nil { return }

      type(of: self).count += 1
      print("\(type(of: self).count): Generating points for \(line)")

      let left = Swift.min(line.start.x, line.end.x)
      let right = Swift.max(line.start.x, line.end.x)
      let top = Swift.min(line.start.y, line.end.y)
      let bottom = Swift.max(line.start.y, line.end.y)
      let dx = right - left
      let dy = line.end.y - line.start.y

      var points = [myPoint]()

      if dx == 0
      {
        for y in top...bottom
        {
          points.append(myPoint(left, y))
        }
      } else if dy == 0
      {
        for x in left...right
        {
          points.append(myPoint(x,top))
        }
      }

      type(of: self).cache[hash] = points
    }

    func makeIterator() -> IndexingIterator<Array<myPoint>>
    {
      return IndexingIterator(_elements: type(of: self).cache[hash]!)
    }
}

// MARK: - USAGE
///in this scenario you can only draw points, so you have to create an adaptor that receives a line an draw lines point by point using drawPoint

/*
 func drawPoint(_ p: Point)
 {
   print(".", terminator: "")
 }

 let vectorObjects = [
   VectorRectangle(1,1,10,10),
   VectorRectangle(3,3,6,6)
 ]

 func draw()
 {
   for vo in vectorObjects
   {
     for line in vo
     {
       let adapter = LineToPointAdapter(line)
       adapter.forEach{ drawPoint($0) }
     }
   }
 }
 
 draw()
 */
