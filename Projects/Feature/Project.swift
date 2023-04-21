//
//  Projects.swift
//  ProjectDescriptionHelpers
//
//  Created by Sang hun Lee on 2023/04/18.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
  name: "Feature",
  product: .staticFramework,
  dependencies: [
    .Projcet.Service
  ],
  resources: ["Resources/**"]
)
