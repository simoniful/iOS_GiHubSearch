//
//  aa.swift
//  MyPlugin
//
//  Created by Sang hun Lee on 2023/04/21.
//

import ProjectDescription

public extension TargetDependency {
  enum Projcet {}
}

public extension TargetDependency.Projcet {
  static let Feature = TargetDependency.project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
  static let Service = TargetDependency.project(target: "Service", path: .relativeToRoot("Projects/Service"))
  static let ThirdPartyLib = TargetDependency.project(target: "ThirdPartyLib", path: .relativeToRoot("Projects/ThirdPartyLib"))
}
