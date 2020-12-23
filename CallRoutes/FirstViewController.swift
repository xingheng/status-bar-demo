//
//  FirstViewController.swift
//  CallRoutes
//
//  Created by WeiHan on 2020/12/23.
//

import UIKit

class FirstViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fastForward, target: self, action: #selector(barButtonTapped(_:)))
    }

    // MARK: - Actions

    @objc func barButtonTapped(_ sender: Any) {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }
}
