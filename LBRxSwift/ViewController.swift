//
//  ViewController.swift
//  LBRxSwift
//
//  Created by Wira on 2/6/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpData()
        setUpUI()
    }
    
    func setUpData(){
        
    }
    
    func setUpUI(){
        
    }


    //MARK: action function
    @IBAction func onClickUpdate(_ sender: Any) {
        let updateVC = storyboard?.instantiateViewController(withIdentifier: "updateView") as! UpdateViewController

        updateVC.selectedCharacter
            .subscribe(onNext: { [weak self] character in
                self?.messageLabel.text = "Hello \(character)"
            }).disposed(by: disposeBag)
        
        navigationController?.pushViewController(updateVC, animated: true)
    }
    
    
}

