//
//  UpdateViewController.swift
//  LBRxSwift
//
//  Created by Wira on 2/6/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class UpdateViewController: UIViewController {
    
    // MARK: observerable
    private let selectedCharacterVar = BehaviorRelay<String>(value: "user")

    var selectedCharacter:Observable<String> {
        return selectedCharacterVar.asObservable()
    }
    
    private let isRefreshData = BehaviorRelay<Bool>(value: false)
    var onRefreshData:Observable<Bool> {
        return isRefreshData.asObservable()
    }

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
    
    @IBAction func onClickCharacter(_ sender: UIButton) {
        guard let characterName = sender.titleLabel?.text else {return}
        selectedCharacterVar.accept(characterName)
        
        if (sender.titleLabel?.text == "🐔Chicken"){
            isRefreshData.accept(true)
        } else {
            isRefreshData.accept(false)
        }
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
