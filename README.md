# IOSFrameworkProject
Projet Final iOS

[![Build Status](https://travis-ci.org/Digipolitan/framework-swift-template.svg?branch=master)](https://travis-ci.org/Digipolitan/framework-swift-template)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/DGFrameworkTemplate.svg)](https://img.shields.io/cocoapods/v/DGFrameworkTemplate.svg)
[![Platform](https://img.shields.io/cocoapods/p/DGFrameworkTemplate.svg?style=flat)](http://cocoadocs.org/docsets/DGFrameworkTemplate)

## Installation

Install with CocoaPods by adding the following to your Podfile:
```shell
platform :ios, '10.1'
pod 'ToastESGI', :git => 'https://github.com/PicoPark/IOSFrameworkProject.git'
```

## Features

* Xcode setup and ready to deploy Swift Framework
* [CocoaPods](https://cocoapods.org/) : The [Podfile](Podfile) and the [Podspec](ToastESGI.podspec) are created without dependencies
* [RubyGems](https://rubygems.org/) : The [Gemfile](Gemfile) contains ruby dependencies such as Fastlane, run `bundle install` to install these dependencies into your machine


## How to deploy ?

```shell
Toast.shared.warningToast(message: "Mon message toast", viewMain: self.view, duration: .long, position: .top,sound: true)
```

## License

IOSFrameworkProject is licensed under the [BSD 3-Clause license](LICENSE).