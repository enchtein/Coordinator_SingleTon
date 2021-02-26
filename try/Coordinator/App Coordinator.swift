//
//  AppCoordinator.swift
//  try
//
//  Created by Track Ensure on 2021-02-26.
//

import Foundation
import UIKit

class AppCoordinator: NSObject {
  
  static let shared = AppCoordinator()
  
  private var currentNavigator: UINavigationController?
  
//  public private(set) var authorized: Bool = false
  
//  override init() {
//    super.init()
//
//    if let targetLang = UserDefaults.standard.object(forKey: "selectedLanguage") as? String {
//      Bundle.setLanguage(targetLang)
//    } else {
//      UserDefaults.standard.set([ApplicationLanguages.english.getCode()], forKey: "AppleLanguages")
//      Bundle.setLanguage(ApplicationLanguages.english.getCode())
//    }
//  }

  
  func start(with window: UIWindow) {
//    let loginViewController = self.instantiate(.login)
    let startVC = self.instantiate(.rootWithLeftSideMenu)
//    currentNavigator = UINavigationController(rootViewController: loginViewController)
    currentNavigator = UINavigationController(rootViewController: startVC)
//    currentNavigator?.navigationBar.isTranslucent = false
//    currentNavigator?.navigationBar.barStyle = .default
//    currentNavigator?.navigationBar.tintColor = .white
//    currentNavigator?.navigationBar.barTintColor = #colorLiteral(red: 0.1450980392, green: 0.1803921569, blue: 0.2509803922, alpha: 1)
//    currentNavigator?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
    window.rootViewController = currentNavigator
//    authorized = false
    window.makeKeyAndVisible()
//    if let _ = UserDefaults.standard.token {
//      self.activateRoot()
//    }
  }
  
//  func activateRoot() {
////    authorized = true
//    self.currentNavigator?.popToRootViewController(animated: false)
//    self.currentNavigator?.setNavigationBarHidden(true, animated: true)
//    self.push(.rootWithLeftSideMenu)
//  }
  
  func push(_ controller: AppViewController, animated: Bool = true) {
    let vc = instantiate(controller)
    currentNavigator?.pushViewController(vc, animated: animated)
  }
  
//  func present(_ controller: AppViewController, animated: Bool) {
//    let vc = instantiate(controller)
//    UIApplication.topViewController()?.present(vc, animated: animated, completion: nil)
//  }
  
  private func instantiate(_ controller: AppViewController) -> UIViewController {
//    switch controller {
//    case .login: return UIViewController()
//    case .rootWithLeftSideMenu: return SideMenuMainViewController.createFromStoryboard()
//    }
    switch controller {
    case .rootWithLeftSideMenu:
        return StartVC.createFromStoryboard()
    case .buyVC:
        return BuyViewController.createFromStoryboard()
    case .createAccountVC:
        return CreateAccountViewController.createFromStoryboard()
    }
  }
  
}
