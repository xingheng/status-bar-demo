//
//  BaseViewController.swift
//  CallRoutes
//
//  Created by WeiHan on 2020/12/29.
//

import UIKit

class BaseViewController: UIViewController {
    private var applyTraitCollection: ((UITraitCollection?) -> Void)?

    private var statusBarHidden: Bool = false
    private var statusBarUpdateAnimation: UIStatusBarAnimation = .none
    open var statusBarStyle: UIStatusBarStyle = .default {
        didSet {
            setNeedsStatusBarAppearanceUpdate()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print("\(#function): \(self)")
        title = String(describing: type(of: self))
    }

    deinit {
        print("\(#function): \(self)")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(#function): \(self): \(animated)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(#function): \(self): \(animated)")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(#function): \(self): \(animated)")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(#function): \(self): \(animated)")
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        print("\(#function): \(String(describing: previousTraitCollection))")

        if let apply = applyTraitCollection {
            apply(traitCollection)
        }
    }

    override var description: String {
        return String(format: "%@<%p>", String(describing: type(of: self)), self)
    }

    // MARK: - Status Bar

    override var prefersStatusBarHidden: Bool {
        return statusBarHidden
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle
    }

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return statusBarUpdateAnimation
    }

    override func setNeedsStatusBarAppearanceUpdate() {
        super.setNeedsStatusBarAppearanceUpdate()

        print("\(#function)")
    }

    // MARK: - Public

    open func updateStatusBar(hidden: Bool, animation: UIStatusBarAnimation) {
        statusBarHidden = hidden
        statusBarUpdateAnimation = animation
        setNeedsStatusBarAppearanceUpdate()
    }

}
