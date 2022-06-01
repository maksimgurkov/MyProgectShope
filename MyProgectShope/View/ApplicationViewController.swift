//
//  ApplicationViewController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 31.05.2022.
//

import UIKit

class ApplicationViewController: UIViewController {
    
    private lazy var infoLabel: UILabel = {
        let infoLabel = UILabel()
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.text = "Введите необходимые данные для специалиста."
        infoLabel.numberOfLines = 0
        infoLabel.font = infoLabel.font.withSize(20)
        infoLabel.textAlignment = .center
        return infoLabel
    }()
    
    private lazy var cityTextField: UITextField = {
        let cityTextField = UITextField()
        cityTextField.placeholder = "Название города"
        cityTextField.borderStyle = .roundedRect
        cityTextField.translatesAutoresizingMaskIntoConstraints = false
        return cityTextField
    }()
    
    private lazy var streetTextField: UITextField = {
        let streetTextField = UITextField()
        streetTextField.placeholder = "Название улицы"
        streetTextField.borderStyle = .roundedRect
        streetTextField.translatesAutoresizingMaskIntoConstraints = false
        return streetTextField
    }()
    
    private lazy var phoneTextField: UITextField = {
        let phoneTextField = UITextField()
        phoneTextField.placeholder = "Телефон"
        phoneTextField.borderStyle = .roundedRect
        phoneTextField.translatesAutoresizingMaskIntoConstraints = false
        return phoneTextField
    }()
    
    private lazy var saveButton: UIButton = {
        let saveButton = UIButton()
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.setTitle("Отправить заявку", for: .normal)
        saveButton.backgroundColor = .orange
        saveButton.layer.cornerRadius = 8
        saveButton.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        return saveButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(infoLabel)
        view.addSubview(cityTextField)
        view.addSubview(streetTextField)
        view.addSubview(phoneTextField)
        view.addSubview(saveButton)
        
        constrain()
        
    }
    
    private func alertController() {
        let alert = UIAlertController(title: "Информация",
                                     message: "Заявка успешно отправлена, дождитесь ответа от специалиста",
                                     preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "ok", style: .default)
        alert.addAction(actionAlert)
        present(alert, animated: true)
    }
    
   @objc func actionButton() {
        alertController()
    }

}

extension ApplicationViewController {
    
    private func constrain() {
        
        NSLayoutConstraint.activate([
            
            infoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            infoLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            infoLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            cityTextField.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 50),
            cityTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            cityTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            streetTextField.topAnchor.constraint(equalTo: cityTextField.bottomAnchor, constant: 20),
            streetTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            streetTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            phoneTextField.topAnchor.constraint(equalTo: streetTextField.bottomAnchor, constant: 20),
            phoneTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            phoneTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            saveButton.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 40),
            saveButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            saveButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        ])
        
    }
    
}
