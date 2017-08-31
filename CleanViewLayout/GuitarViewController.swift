//
//  GuitarViewController.swift
//  CleanViewLayout
//
//  Created by VinayGanesh on 8/30/17.
//  Copyright © 2017 VinayGanesh. All rights reserved.
//

import UIKit

protocol GuitarViewControllerDisplayable: Equatable {
    var name: String { get }
    var brand: String { get }
    var frets: Int { get }
    var fretboard: String { get }
    var strings: Int { get }
    var body: String { get }
    var inlays: String { get }
    var headStock: String { get }
}

func ==<T: GuitarViewControllerDisplayable>(lhs: T, rhs: T) -> Bool {
    return lhs.name == rhs.name &&
        lhs.brand == rhs.brand &&
        lhs.frets == rhs.frets &&
        lhs.fretboard == rhs.fretboard &&
        lhs.strings == rhs.strings &&
        lhs.body == rhs.body &&
        lhs.inlays == rhs.inlays &&
        lhs.headStock == rhs.headStock
}

class GuitarViewController<Displayable: GuitarViewControllerDisplayable>: UIViewController {
    let displayable: Displayable
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFontWeightRegular)
        nameLabel.textColor = .black
        return nameLabel
    }()
    
    private let brandLabel: UILabel = {
        let brandLabel = UILabel()
        brandLabel.translatesAutoresizingMaskIntoConstraints = false
        brandLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFontWeightRegular)
        brandLabel.textColor = .black
        return brandLabel
    }()
    
    private let fretsLabel: UILabel = {
        let fretsLabel = UILabel()
        fretsLabel.translatesAutoresizingMaskIntoConstraints = false
        fretsLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFontWeightRegular)
        fretsLabel.textColor = .black
        return fretsLabel
    }()
    
    private let fretBoardLabel: UILabel = {
        let fretBoardLabel = UILabel()
        fretBoardLabel.translatesAutoresizingMaskIntoConstraints = false
        fretBoardLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFontWeightRegular)
        fretBoardLabel.textColor = .black
        return fretBoardLabel
    }()
    
    private let stringsLabel: UILabel = {
        let stringsLabel = UILabel()
        stringsLabel.translatesAutoresizingMaskIntoConstraints = false
        stringsLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFontWeightRegular)
        stringsLabel.textColor = .black
        return stringsLabel
    }()
    
    private let bodyLabel: UILabel = {
        let bodyLabel = UILabel()
        bodyLabel.translatesAutoresizingMaskIntoConstraints = false
        bodyLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFontWeightRegular)
        bodyLabel.textColor = .black
        return bodyLabel
    }()
    
    private let inalysLabel: UILabel = {
        let inalysLabel = UILabel()
        inalysLabel.translatesAutoresizingMaskIntoConstraints = false
        inalysLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFontWeightRegular)
        inalysLabel.textColor = .black
        return inalysLabel
    }()
    
    private let headStockLabel: UILabel = {
        let headStockLabel = UILabel()
        headStockLabel.translatesAutoresizingMaskIntoConstraints = false
        headStockLabel.font = UIFont.systemFont(ofSize: 25, weight: UIFontWeightRegular)
        headStockLabel.textColor = .black
        return headStockLabel
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        return stackView
    }()
    
    private func initView() {
        
        // set the background color for the viewController
        view.backgroundColor = .white
        
        // set the values of from the displayable protocol
        nameLabel.text = displayable.name
        brandLabel.text = displayable.brand
        fretsLabel.text = String(displayable.frets)
        fretBoardLabel.text = displayable.fretboard
        stringsLabel.text = String(displayable.strings)
        bodyLabel.text = displayable.body
        headStockLabel.text = displayable.headStock
        
    
        // add the labels to the stackview
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(brandLabel)
        stackView.addArrangedSubview(fretsLabel)
        stackView.addArrangedSubview(fretBoardLabel)
        stackView.addArrangedSubview(stringsLabel)
        stackView.addArrangedSubview(bodyLabel)
        stackView.addArrangedSubview(headStockLabel)
        view.addSubview(stackView)
        
        // add constraints
        let yAnchor = stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        let leading = stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let trailing = stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        
        NSLayoutConstraint.activate([yAnchor, leading, trailing])
    }
    
    init(displayable: Displayable) {
        self.displayable = displayable
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
}
