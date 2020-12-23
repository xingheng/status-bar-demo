//
//  NavigationController.swift
//  CallRoutes
//
//  Created by WeiHan on 2020/12/23.
//

import UIKit

class NavigationController: UINavigationController, UINavigationControllerDelegate {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    required override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        commonInit()
    }

    private func commonInit() {
        delegate = self
        navigationBar.isTranslucent = false
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {

        if (viewControllers.count >= 1) {
            viewController.hidesBottomBarWhenPushed = true
        }

        super.pushViewController(viewController, animated: animated)
    }

    // MARK: - UINavigationControllerDelegate

    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool)
    {
        print("\(#function): \(viewController)")
    }

    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool)
    {
        print("\(#function): \(viewController)")
    }

    override var childForStatusBarHidden: UIViewController? {
        return visibleViewController
    }

    override var childForStatusBarStyle: UIViewController? {
        return visibleViewController
    }
}
