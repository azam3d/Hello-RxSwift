//
//  ViewController.swift
//  Hello RxSwift
//
//  Created by Muhammad Azam Bin Baderi on 1/13/17.
//  Copyright © 2017 Muhammad Azam Bin Baderi. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var speakerListTableView: UITableView!
    
    let speakerListViewModel = SpeakerListViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        speakerListViewModel.data
            .bindTo(speakerListTableView.rx.items(cellIdentifier: "SpeakerCell")) { _, speaker, cell in
                cell.textLabel?.text = speaker.name
                cell.detailTextLabel?.text = speaker.twitterHandle
                cell.imageView?.image = speaker.image
            }
            .addDisposableTo(disposeBag)
        
        speakerListTableView.rx.modelSelected(Speaker.self)
            .subscribe() { speaker in
                print("You selected \(speaker)")
            }
            .addDisposableTo(disposeBag)
    }
}
