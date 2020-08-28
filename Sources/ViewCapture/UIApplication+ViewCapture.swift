//
//  File.swift
//  
//
//  Created by Rob Caraway on 8/16/20.
//
#if !os(macOS)
import UIKit

public extension UIApplication {
    
    class func takeSnapshotOfViews() -> [String : UIView]? {
        UIApplication.shared.keyWindow?.rootViewController?.takeSnapshotOfViews()
    }
    
    class func getViewStores() -> [ViewStore]? {
        UIApplication.shared.keyWindow?.rootViewController?.getViewStores()
    }
    
    class func layoutViews(from stores: [ViewStore]) {
        UIApplication.shared.keyWindow?.rootViewController?.layoutViews(from: stores)
    }
    
    class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        print("✅ TapFunnels: 👷‍♂️ topViewController() began")
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        
        if let tab = base as? UITabBarController {
            let moreNavigationController = tab.moreNavigationController
            
            if let top = moreNavigationController.topViewController, top.view.window != nil {
                return topViewController(base: top)
            } else if let selected = tab.selectedViewController {
                return topViewController(base: selected)
            }
        }
        
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        print("✅ TapFunnels: 👷‍♂️ topViewController() returning base controller: \(String(describing: base))")
        return base
    }
}
#endif
