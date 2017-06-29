extension Float {
    var designWidth: Float {
        return Float(375.0)
    }
    var widthScale: Float {
        return floor( (self/designWidth) * Float(UIScreen.main.bounds.size.width) )
    }
    func heightScale(width: Float) -> Float {
        return width.widthScale * (self/width)
    }
}

extension CGSize {
    var screenScale : CGSize {
        return CGSize(width: CGFloat(Float(self.width).widthScale), height: CGFloat(Float(self.height).heightScale(width: Float(self.width))))
    }
}
