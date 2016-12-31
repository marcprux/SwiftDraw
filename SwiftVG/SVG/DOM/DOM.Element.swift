//
//  DOM.Element.swift
//  SwiftVG
//
//  Created by Simon Whitty on 31/12/16.
//  Copyright © 2016 WhileLoop Pty Ltd. All rights reserved.
//

extension DOM {
    class Element { }
    
    class GraphicsElement : Element {
        var stroke: Color? = nil
        var fill: Color? = nil
        var strokeWidth: Float? = nil
        var transform: [Transform]? = nil
    }
    
    class Line : GraphicsElement {
        var x1: Coordinate
        var y1: Coordinate
        var x2: Coordinate
        var y2: Coordinate
        
        init(x1: Coordinate, y1: Coordinate, x2: Coordinate, y2: Coordinate) {
            self.x1 = x1
            self.y1 = y1
            self.x2 = x2
            self.y2 = y2
            super.init()
        }
    }
    
    class Circle : GraphicsElement {
        var cx: Coordinate
        var cy: Coordinate
        var r: Coordinate
        
        init(cx: Coordinate, cy: Coordinate, r: Coordinate) {
            self.cx = cx
            self.cy = cy
            self.r = r
            super.init()
        }
    }
    
    class Ellipse : GraphicsElement {
        var cx: Coordinate
        var cy: Coordinate
        var rx: Coordinate
        var ry: Coordinate
        
        init(cx: Coordinate, cy: Coordinate, rx: Coordinate, ry: Coordinate) {
            self.cx = cx
            self.cy = cy
            self.rx = rx
            self.ry = ry
            super.init()
        }
    }
    
    class Rect : GraphicsElement {
        var x: Coordinate
        var y: Coordinate
        var width: Coordinate
        var height: Coordinate
        
        var rx: Coordinate? = nil
        var ry: Coordinate? = nil
        
        init(x: Coordinate, y: Coordinate, width: Coordinate, height: Coordinate) {
            self.x = x
            self.y = y
            self.width = width
            self.height = height
            super.init()
        }
    }
    
    class Polyline : GraphicsElement {
        var points: [Point]
        
        init(points: [Point]) {
            self.points = points
            super.init()
        }
    }
    
    class Polygon : GraphicsElement {
        var points: [Point]
        var fillRule: FillRule? = nil
        
        init(points: [Point]) {
            self.points = points
            super.init()
        }
    }
    
    class Group : GraphicsElement {
        var childElements = [GraphicsElement]()
    }
}
