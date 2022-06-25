//
//  TopButtonsNavigation.swift
//  ussd-project
//
//  Created by Mac on 6/25/22.
//

import UIKit

class TopButtonsNavigation: UIViewController {
    
    var backColor: UIColor
    
    init(backColor: UIColor) {
        self.backColor = backColor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private let topLabel     = UILabel()
    
    let tcell        = UIButton()
    let megafon      = UIButton()
    let babilon      = UIButton()
    let zmobile      = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        view.backgroundColor = backColor
    }
    
    
    private func configureUI() {
        
        view.addSubview(topLabel)
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let buttons: [UIButton] = [tcell, megafon, babilon, zmobile]
        
        for b in buttons {
        
            view.addSubview(b)
            b.translatesAutoresizingMaskIntoConstraints = false
            b.setTitleColor(UIColor.blue, for: .normal)
            b.layer.cornerRadius = 12
            b.titleLabel?.numberOfLines = 1
            b.titleLabel?.adjustsFontSizeToFitWidth = true
            b.titleLabel?.lineBreakMode = .byClipping
            b.titleEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
            b.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            b.titleLabel?.adjustsFontSizeToFitWidth = true
            b.clipsToBounds = true
        }
        
        
        tcell.setTitle("Tcell", for: .normal)
        tcell.setTitleColor(#colorLiteral(red: 0.4675523639, green: 0.1589771807, blue: 0.4816157222, alpha: 1), for: .normal)
        tcell.layer.borderColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        
        megafon.setTitle("Megafon", for: .normal)
        megafon.setTitleColor(#colorLiteral(red: 0.01582424715, green: 0.724273622, blue: 0.3367923498, alpha: 1), for: .normal)
        megafon.layer.borderColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)

        babilon.setTitle("Babilom-m", for: .normal)
        babilon.setTitleColor( #colorLiteral(red: 0.9818231463, green: 0.9049935937, blue: 0.05490861088, alpha: 1) , for: .normal)
        babilon.layer.borderColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)

        zmobile.setTitle("ZET-MOBILE", for: .normal)
        zmobile.setTitleColor( #colorLiteral(red: 0.03529412299, green: 0.03529411927, blue: 0.03529411927, alpha: 1) , for: .normal)
        zmobile.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        //topLabel.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)

        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            topLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1),
            
            tcell.leadingAnchor.constraint(equalTo: topLabel.leadingAnchor, constant: 5),
            tcell.topAnchor.constraint(equalTo: topLabel.topAnchor, constant: 5),
            tcell.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -5),
            tcell.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.23),
            
            megafon.leadingAnchor.constraint(equalTo: tcell.trailingAnchor, constant:  5),
            megafon.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -5),
            megafon.topAnchor.constraint(equalTo: topLabel.topAnchor, constant: 5),
            megafon.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.23),
            
            babilon.leadingAnchor.constraint(equalTo: megafon.trailingAnchor, constant: 5),
            babilon.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -5),
            babilon.topAnchor.constraint(equalTo: topLabel.topAnchor, constant: 5),
            babilon.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.23),
            
            zmobile.leadingAnchor.constraint(equalTo: babilon.trailingAnchor, constant: 5),
            zmobile.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -5),
            zmobile.topAnchor.constraint(equalTo: topLabel.topAnchor, constant: 5),
            zmobile.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.23),
        ])
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let buttons: [UIButton] = [tcell, megafon, babilon, zmobile]
        for b in buttons {
            b.layer.cornerRadius = 0.5 * b.frame.height
            b.clipsToBounds = true
        }
        
    }

}
