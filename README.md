# ThemePod

[![CI Status](https://img.shields.io/travis/SABARI DINESH K/ThemePod.svg?style=flat)](https://travis-ci.org/SABARI DINESH K/ThemePod)
[![Version](https://img.shields.io/cocoapods/v/ThemePod.svg?style=flat)](https://cocoapods.org/pods/ThemePod)
[![License](https://img.shields.io/cocoapods/l/ThemePod.svg?style=flat)](https://cocoapods.org/pods/ThemePod)
[![Platform](https://img.shields.io/cocoapods/p/ThemePod.svg?style=flat)](https://cocoapods.org/pods/ThemePod)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Step 1: Create a theme
Declare your theme by conforming to Theme, which is just a marker protocol. You can declare whatever you like, including nested objects, all depending on your need. You can also create as many themes as you like

struct MyTheme: Theme {
  let topImage: UIImage
  let cellColor: UIColor
  let backgroundColor: UIColor
  let name: String
  let titleFont: UIFont
  let subtitleFont: UIFont
}
Then create some themes based on your templates

let dayTheme = MyTheme(topImage: UIImage(named: "day"), cellColor: .white)

let nightTheme = MyTheme(topImage: UIImage(named: "night"), cellColor: .black)



Step 2: Register your current theme
When app launches, you need to declare 1 theme as the current, it can be loaded from cache

ThemeManager.shared.currentTheme = dayTheme


Step 3: React to theme change
You can do this wherever you like. It is set using the current theme, and whenever theme changes


// ViewController.swift
override func viewDidLoad() {
  super.viewDidLoad()


  use(MyTheme.self) {
    $0.title = $1.name
    $0.tableView.backgroundColor = $1.backgroundColor
    $0.navigationController?.navigationBar.setBackgroundImage($1.topImage, for: .default)
    $0.tableView.rowHeight = $1.name == "Unicorn" ? 180 : 120
    $0.tableView.reloadData()
  }
}


// Cell.swift
override func awakeFromNib() {
  super.awakeFromNib()

  imageView.layer.cornerRadius = 5
  imageView.layer.masksToBounds = true

  use(MyTheme.self) {
    $0.titleLabel.font = $1.titleFont
    $0.subtitleLabel.font = $1.subtitleFont
    $0.container.backgroundColor = $1.cellColor
  }
}


Step 4: Change the theme
Change the current theme is as easy as assigning a new theme. All happens in real time and very fast


ThemeManager.shared.currentTheme = nightTheme

## Installation

ThemePod is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ThemePod'
```

## Author

SABARI DINESH K, sabaridinesh.ec18@bitsathy.ac.in

## License

ThemePod is available under the MIT license. See the LICENSE file for more info.
