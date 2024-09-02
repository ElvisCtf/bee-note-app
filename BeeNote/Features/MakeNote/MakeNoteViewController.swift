//
//  MakeNoteViewController.swift
//  BeeNote
//
//  Created by Elvis Cheng on 12/8/2024.
//

import UIKit

class MakeNoteViewController: UIViewController {
    
    lazy var closeBtn = UIBarButtonItem(
        image: UIImage(systemName: "xmark"),
        style: .plain,
        target: self,
        action: #selector(back)
    )
    
    lazy var textbox: UITextView = {
        let tv = UITextView()
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = closeBtn
        initUI()
    }
    
    func initUI() {
        view.addSubview(textbox)
        textbox.snp.makeConstraints {
            $0.top.bottom.equalTo(view.safeAreaLayoutGuide)
            $0.left.right.equalToSuperview()
        }
    }
    
    @objc func back() {
        dismiss(animated: true)
    }

}
