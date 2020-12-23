//
//  SecondViewController.swift
//  CallRoutes
//
//  Created by WeiHan on 2020/12/23.
//

import UIKit

class SecondViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fastForward, target: self, action: #selector(barButtonTapped(_:)))
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

    // MARK: - Actions

    @objc func barButtonTapped(_ sender: Any) {
        self.navigationController?.pushViewController(ThirdViewController(), animated: true)
    }
}
