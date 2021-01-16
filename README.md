# DarkLightModePreview

<img width="373" alt="Screen Shot 2021-01-15 at 16 12 13" src="https://user-images.githubusercontent.com/121539/104793037-98a94980-5755-11eb-9f3c-24e64eae0af1.png">

You can use this simple view to preview your SwiftUI views in different appearances:

```
struct Checkbox_Previews: PreviewProvider {
    static var previews: some View {
        DarkLightModePreview {
            HStack {
                CustomCheckbox(checked: false, hover: false) {}
                CustomCheckbox(checked: false, hover: true) {}
                CustomCheckbox(checked: true, hover: false) {}
                CustomCheckbox(checked: true, hover: true) {}
            }
        }
    }
}

```

### How to use
- Add this repository to Swift Package Manager
- `import DarkLightModePreview`
- Use `DarkLightModePreview` as shown above
