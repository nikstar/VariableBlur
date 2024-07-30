
![VariableBlur](https://github.com/user-attachments/assets/accdd9d2-4c8a-4970-bce0-00842a47ff87)

# VariableBlur

SwiftUI variable blur (progressive blur)  

_First of all, all hard work was done by **[jtrivedi](https://github.com/jtrivedi/VariableBlurView)** - I just made some minor adjustments._

Changes in this version:

- [x] all code is in **one file**
- [x] dynamically generates gradient image allowing for further adjustments
- [x] fixes crash when switching between light and dark mode
- [x] supports upside down variable blurs (clear at the top, blurred at the bottom)

Use of private API did not trigger App Store rejection for me but do tell if it does for you. 


## Install

### Recommended

Copy [VariableBlur.swift](https://github.com/nikstar/VariableBlur/blob/main/Sources/VariableBlur/VariableBlur.swift) to your project.

### SPM

To add a package dependency to your Xcode project, select File > Add Package and enter this repository's URL (<https://github.com/nikstar/VariableBlur>).

## Example

Used to create image on top of this page:

```swift
ZStack(alignment: .top) {
    Color.white
    Color.blue.opacity(0.3)
    Image("im")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding(.horizontal, 50)
    Text("VariableBlur")
        .font(.largeTitle.monospaced().weight(.bold))
        .padding(.top, 230)
        .foregroundStyle(.white.opacity(0.9))
}
.overlay(alignment: .top) {
    VariableBlurView(maxBlurRadius: 20, direction: .blurredTopClearBottom)
        .frame(height: 200)
}
.ignoresSafeArea()
```

Blur matching status bar/cutout safe area:

```swift
ContentView()
    .overlay(alignment: .top) {
        GeometryReader { geom in
            VariableBlurView(maxBlurRadius: 10)
                .frame(height: geom.safeAreaInsets.top)
                .ignoresSafeArea()
        }
    }
```
