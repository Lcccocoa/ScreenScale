# ScreenScale
按照设计的比例适配UI

设计稿UI 针对的屏幕宽度定义在
```swift
static let screenWidth:CGFloat = 375.0
```

例如:
在设计稿中居左10px. 设计稿仅针对一种屏幕给出效果(如4.7寸屏),
为了再3.5寸 5.5寸上适配, 需要对居左距离进行等比缩放.

使用如下方法进行等比缩放
```swift
print("\(10.0.scale)")
print("\(Float(20.0).heightScale(width: Float(10.0)))")
print(CGSize(width: 10, height: 20).scale)
```
