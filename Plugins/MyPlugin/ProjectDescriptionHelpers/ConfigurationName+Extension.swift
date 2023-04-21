//
//  ConfigurationName+Extension.swift
//  MyPlugin
//
//  Created by Sang hun Lee on 2023/04/21.
//

import Foundation
import ProjectDescription

// MARK: - Util
public extension ConfigurationName {
  static var dev: ConfigurationName { configuration(ProjectDeployTarget.dev.rawValue) }
  static var stage: ConfigurationName { configuration(ProjectDeployTarget.stage.rawValue) }
  static var prod: ConfigurationName { configuration(ProjectDeployTarget.prod.rawValue) }
}
