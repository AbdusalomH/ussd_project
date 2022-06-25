//
//  MainVC.swift
//  ussd-project
//
//  Created by Mac on 6/24/22.
//

import UIKit

final class MainVC: UIViewController {
    
    
    let topButtonNavigation = TopButtonsNavigation(backColor: #colorLiteral(red: 0.4789686203, green: 0.3041149378, blue: 0.8477831483, alpha: 1))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        configureTopButtonNavigation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.hidesBackButton = true
        navigationController?.navigationBar.tintColor = .black
        
        configureNavigatioBar()
    }
    

    private func configureNavigatioBar() {
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.backgroundColor =  #colorLiteral(red: 0.4789686203, green: 0.3041149378, blue: 0.8477831483, alpha: 1)
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
    }
    
    private func configureTopButtonNavigation() {
        
        addChild(topButtonNavigation)
        view.addSubview(topButtonNavigation.view)
        topButtonNavigation.didMove(toParent: self)
        
        topButtonNavigation.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            topButtonNavigation.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topButtonNavigation.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topButtonNavigation.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topButtonNavigation.view.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.12)

        ])
    }
}
