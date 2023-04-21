//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Sang hun Lee on 2023/04/18.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
  name: "App",
  platform: .iOS,
  product: .app,
  dependencies: [
    .Projcet.Feature
  ],
  resources: ["Resources/**"],
  infoPlist: .file(path: "Support/Info.plist")
)
