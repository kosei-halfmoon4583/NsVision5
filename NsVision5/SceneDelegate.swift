//
//  SceneDelegate.swift
//  AIBVision5
//
//  Created by 綿貫直志 on 2025/10/06.
//  Copyright © 2025 Google Inc. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // print("🔴 SceneDelegate: scene willConnectTo が呼ばれました!")
        guard let windowScene = (scene as? UIWindowScene) else {
            // print("⚠️ windowSceneの取得に失敗")
            return
        }
        // print("✅ windowScene取得成功")
        
        window = UIWindow(windowScene: windowScene)
         
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let initialVC = storyboard.instantiateInitialViewController() {
            // print("✅ 初期ViewControllerの取得成功")
            window?.rootViewController = initialVC
        } else {
            // print("⚠️ 初期ViewControllerの取得に失敗")
        }
        // 必要に応じて初期ViewControllerを設定
        window?.makeKeyAndVisible()
        // print("✅ windowをキー化完了")
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {}
    func sceneDidBecomeActive(_ scene: UIScene) {}
    func sceneWillResignActive(_ scene: UIScene) {}
    func sceneWillEnterForeground(_ scene: UIScene) {}
    func sceneDidEnterBackground(_ scene: UIScene) {}
}
