//
//  NoteListViewController.swift
//  BeeNote
//
//  Created by Elvis Cheng (ESD - Software Trainee, Digital Solutions) on 12/8/2024.
//

import UIKit
import SnapKit

class NoteListViewController: UIViewController {
    
    lazy var makeNoteBtn = UIBarButtonItem(
        image: UIImage(systemName: "plus"),
        style: .plain,
        target: self,
        action: #selector(makeNote)
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Notes"
        navigationItem.rightBarButtonItem = makeNoteBtn
    }
    
    @objc func makeNote() {
        let vc = MakeNoteViewController()
        present(vc, animated: true)
    }

}

