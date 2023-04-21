//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Sang hun Lee on 2023/04/18.
//

import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.makeModule(
  name: "ThirdPartyLib",
  product: .framework,
  packages: [],
  dependencies: [
    .SPM.RxSwift,
    .SPM.RxCocoa,
    .SPM.RxRelay
  ]
)
