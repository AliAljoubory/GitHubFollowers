//
//  GFAlertViewController.swift
//  GitHub Followers
//
//  Created by Ali Aljoubory on 19/04/2020.
//  Copyright © 2020 Ali Aljoubory. All rights reserved.
//

import UIKit

class GFAlertViewController: UIViewController {
    
    let containerView = GFAlertContainerView()
    
    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let alertbutton = GFButton(backgroundColour: .systemPink, title: "OK")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    let padding: CGFloat = 20
    
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        
        addSubviews()
        configureContainerView()
        configureTitleLabel()
        configureAlertButton()
        configureMessageLabel()
    }
    
    func addSubviews() {
        view.addSubview(containerView)
        containerView.addSubviews(titleLabel, messageLabel, alertbutton)
    }
    
    func configureContainerView() {
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 220),
            containerView.widthAnchor.constraint(equalToConstant: 280)
        ])
    }
    
    func configureTitleLabel() {
        titleLabel.text = alertTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func configureAlertButton() {
        alertbutton.setTitle(self.buttonTitle ?? "OK", for: .normal)
        alertbutton.addTarget(self, action: #selector(dismissAlert), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            alertbutton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
            alertbutton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            alertbutton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            alertbutton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    func configureMessageLabel() {
        messageLabel.text = message ?? "Unable to complete request"
        messageLabel.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: alertbutton.topAnchor, constant: -12)
        ])
    }
    
    @objc func dismissAlert() {
        self.dismiss(animated: true)
    }
}
