# iOS8SwiftNSUserDefaults

```swift
func getUserName() -> String? {
  let defaults = NSUserDefaults.standardUserDefaults()
  if let name = defaults.stringForKey(kUserNameKey) {
    return name
  }
  return nil
}

func writeUserName(name: String) {
  let defaults = NSUserDefaults.standardUserDefaults()
  defaults.setObject(name, forKey: kUserNameKey)
}
```
![](http://i.imgur.com/4vRcCrK.png)

# Reference

- [NSUserDefaults — A Swift Introduction](http://www.codingexplorer.com/nsuserdefaults-a-swift-introduction/)
