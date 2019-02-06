//
//  UpdateViewController.swift
//  LBRxSwift
//
//  Created by Wira on 2/6/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit
import RxSwift

class UpdateViewController: UIViewController {
    
    
    private let selectedCharacterVar = Variable("user")
    var selectedCharacter:Observable<String> {
        return selectedCharacterVar.asObservable()
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
        selectedCharacterVar.value = characterName
        self.navigationController?.popViewController(animated: true)
    }
    
}
