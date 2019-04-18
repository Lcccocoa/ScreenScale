import Foundation

final class UIDesignScale {
    static let screenWidth:CGFloat = 375.0
    
    /// 按宽的比例缩放大小，输出实际数值
    ///
    /// - Parameter value: 设计大小数值
    /// - Returns: 实际大小
    public static func scale<T>(value:T) -> T where T: BinaryFloatingPoint {
        return T(floor(CGFloat(value)/screenWidth * UIScreen.main.bounds.width))
    }
}

extension CGSize {
    var scale: CGSize {
        var scale = CGSize.zero
        scale.width = UIDesignScale.scale(value: self.width)
        scale.height = floor(scale.width * (self.height/self.width))
        return scale
    }
}

extension BinaryFloatingPoint {
    var scale: CGFloat {
        return CGFloat(UIDesignScale.scale(value: self))
    }
    
}
