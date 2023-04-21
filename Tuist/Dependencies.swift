//
//  Dependencies.swift
//  ProjectDescriptionHelpers
//
//  Created by Sang hun Lee on 2023/04/20.
//

import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
  swiftPackageManager: SwiftPackageManagerDependencies(
    [
      .remote(
        url: "https://github.com/ReactiveX/RxSwift.git",
        requirement: .upToNextMajor(from: "6.5.0")
      )
    ],
    baseSettings: .settings(
      configurations: [
        .debug(name: .dev),
        .debug(name: .stage),
        .release(name: .prod)
        
      ])
  ),
  platforms: [.iOS]
)
