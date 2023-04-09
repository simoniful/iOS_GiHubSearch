import ProjectDescription

// MARK: - InfoPlist
let infoPlist: [String: InfoPlist.Value] = [
  "CFBundleShortVersionString": "1.0",
  "CFBundleVersion": "1",
  "UILaunchStoryboardName": "LaunchScreen",
  "NSAppTransportSecurity": [
    "NSAllowsArbitraryLoads": true
  ],
  "UISupportedInterfaceOrientations": [
    "UIInterfaceOrientationPortrait"
  ],
  "UIUserInterfaceStyle": "Light",
  "UIApplicationSceneManifest": [
    "UIApplicationSupportsMultipleScenes": true,
    "UISceneConfigurations": [
      "UIWindowSceneSessionRoleApplication": [
        [
          "UISceneConfigurationName": "Default Configuration",
          "UISceneDelegateClassName":  "$(PRODUCT_MODULE_NAME).SceneDelegate"
        ]
      ]
    ]
  ]
]

// MARK: - Project
let project = Project(
    name: "GitHubSearch",
    organizationName: "Simon",
    settings: .settings(configurations: [
        .debug(name: "Debug"),
        .release(name: "Release")
    ]),
    targets: [
        Target(
            name: "GitHubSearch",
            platform: .iOS,
            product: .app,
            bundleId: "com.simon.GitHubSearch",
            deploymentTarget : .iOS(
              targetVersion: "13.0.0",
              devices: .iphone
            ),
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Targets/GitHubSearch/Sources/**"],
            resources: ["Targets/GitHubSearch/Resources/**"],
            dependencies: [
                .external(name: "RxSwift"),
                .external(name: "RxDataSources"),
                .external(name: "RxGesture"),
                .external(name: "Kingfisher"),
                .external(name: "SnapKit"),
                .external(name: "Then"),
                .external(name: "Swinject"),
                .target(name: "Network")
            ]
        ),
        Target(
            name: "GitHubSearchTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.simon.GitHubSearchTests",
            deploymentTarget : .iOS(
              targetVersion: "13.0.0",
              devices: .iphone
            ),
            infoPlist: .default,
            sources: ["Targets/GitHubSearchTests/Sources/**"],
            resources : ["Targets/GitHubSearchTests/Resources/**"],
            dependencies: [
                .target(name: "GitHubSearch"),
                .target(name: "Domain"),
                .target(name: "Network"),
                .external(name: "RxSwift"),
                .external(name: "RxTest")
            ]
        ),
        Target(
            name: "Network",
            platform: .iOS,
            product: .staticLibrary,
            bundleId : "com.simon.Network",
            deploymentTarget : .iOS(
              targetVersion: "13.0.0",
              devices: .iphone
            ),
            infoPlist : .default,
            sources: ["Targets/Network/Sources/**"],
            dependencies: [
                .external(name: "RxAlamofire"),
                .external(name: "Moya"),
                .external(name: "RxSwift"),
                .target(name: "Domain")
            ]
        ),
        Target(
            name: "NetworkTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.simon.NetworkTests",
            deploymentTarget : .iOS(
              targetVersion: "13.0.0",
              devices: .iphone
            ),
            infoPlist: .default,
            sources: ["Targets/NetworkTests/Sources/**"],
            dependencies: [
                .target(name: "Network"),
                .external(name: "RxBlocking")
            ]
        ),
        Target(
            name: "Domain",
            platform: .iOS,
            product: .staticLibrary,
            bundleId : "com.simon.Domain",
            deploymentTarget : .iOS(
              targetVersion: "13.0.0",
              devices: .iphone
            ),
            infoPlist : .default,
            sources: ["Targets/Domain/Sources/**"],
            dependencies: [
                
            ]
        ),
        Target(
            name: "DomainTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "com.simon.DomainTests",
            deploymentTarget : .iOS(
              targetVersion: "13.0.0",
              devices: .iphone
            ),
            infoPlist: .default,
            sources: ["Targets/DomainTests/Sources/**"],
            dependencies: [
                .target(name: "Domain")
            ]
        )
    ],
    schemes: [
        .init(name: "GitHubSearch-Dev", shared: true, hidden: false,
              buildAction: .buildAction(targets: ["GitHubSearch"]),
              testAction: .targets(["GitHubSearchTests"] , configuration: "Debug"),
              runAction: .runAction(configuration: "Debug"),
              archiveAction: .archiveAction(configuration: "Debug"),
              profileAction: .profileAction(configuration: "Debug"),
              analyzeAction: .analyzeAction(configuration: "Debug")
             ),
        .init(name: "GitHubSearch-Prod", shared: true, hidden: false,
              buildAction: .buildAction(targets: ["GitHubSearch"]),
              testAction: .targets(["GitHubSearchTests"] , configuration: "Release"),
              runAction: .runAction(configuration: "Release"),
              archiveAction: .archiveAction(configuration: "Release"),
              profileAction: .profileAction(configuration: "Release"),
              analyzeAction: .analyzeAction(configuration: "Release")
             )
    ]
    
)

