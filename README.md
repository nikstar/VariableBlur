
# VariableBlur

SwiftUI variable blur (progressive blur)  

_First of all, all hard work was done by **[jtrivedi](https://github.com/jtrivedi/VariableBlurView)** - I just made some minor adjustments._

Changes in this version:

- [x] all code is in one file
- [x] dynamically generates gradient image allowing for further adjustments
- [x] fixes crash when switching between light and dark theme
- [x] supports upside down variable blurs (clear at the top, blurred at the bottom)

Use of private API did not trigger App Store rejection for me but do tell if it does for you. 

## Install

### Recommended

Copy [VariableBlur.swift](https://github.com/nikstar/VariableBlur/blob/main/Sources/VariableBlur/VariableBlur.swift) to your project.

### SPM

To add a package dependency to your Xcode project, select File > Add Package and enter this repository's URL (<https://github.com/nikstar/VariableBlur>).

## Example

At top matching cutout safety area:

```swift
MyContentView()
    .overlay(alignment: .top) {
        GeometryReader { geom in
            VariableBlurView(maxBlurRadius: 10)
                .frame(height: geom.safeAreaInsets.top)
                .ignoresSafeArea()
        }
    }
```
