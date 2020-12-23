//
//  ThirdViewController.swift
//  CallRoutes
//
//  Created by WeiHan on 2020/12/23.
//


import UIKit

class ThirdViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fastForward, target: self, action: #selector(barButtonTapped(_:)))
    }

    // MARK: - Actions

    @objc func barButtonTapped(_ sender: Any) {
        updateStatusBar(hidden: true, animation: .slide)
//        statusBarStyle = .darkContent
    }
}
