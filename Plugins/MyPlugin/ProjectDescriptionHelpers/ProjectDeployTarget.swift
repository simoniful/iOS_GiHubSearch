//
//  ProjectDeployTarget.swift
//  MyPlugin
//
//  Created by Sang hun Lee on 2023/04/21.
//

import Foundation
import ProjectDescription

public enum ProjectDeployTarget: String {
  case dev = "DEV"
  case stage = "STAGE"
  case prod = "PROD"
  
  public var configurationName: ConfigurationName {
    ConfigurationName.configuration(self.rawValue)
  }
}
