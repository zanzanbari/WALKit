# WALKit

🐶 WAL Design System Kit  



## How to Use?

#### Font System

```swift
let walLabel: UILabel = {
    let label = UILabel()
    label.font = WALFont.body6.font
    label.text = "왈소리 만들기"
    return label
}()
```

#### Color System

```swift
let walLabel: UILabel = {
    let label = UILabel()
    label.textColor = .orange100
    label.text = "왈소리 색깔"
    return label
}()
```


## Installation


- **Using [Swift Package Manager](https://swift.org/package-manager)**:

    ```swift
    import PackageDescription

    let package = Package(
      name: "WAL",
      dependencies: [
        .Package(url: "https://github.com/zanzanbari/WALKit.git", majorVersion: 1.0.0),
      ]
    )
    ```

## License

**WALKit** is under MIT license. 
