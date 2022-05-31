//
//  HomeViewController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 28.05.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.contentSize = contentSize
        scrollView.frame = view.bounds
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = .white
        contentView.frame.size = contentSize
        return contentView
    }()
    
    private lazy var imageSeles: UIImageView = {
        let imageSeles = UIImageView()
        imageSeles.image = UIImage(named: "Акция")
        imageSeles.contentMode = .scaleToFill
        imageSeles.translatesAutoresizingMaskIntoConstraints = false
        return imageSeles
    }()
    
    private lazy var specialistImage: UIImageView = {
        let specialistImage = UIImageView()
        specialistImage.translatesAutoresizingMaskIntoConstraints = false
        specialistImage.image = UIImage(named: "Замер")
        specialistImage.contentMode = .scaleToFill
        return specialistImage
    }()
    
    private lazy var specialistButton: UIButton = {
        let specialistButton = UIButton()
        specialistButton.translatesAutoresizingMaskIntoConstraints = false
        specialistButton.setTitle("Оставить заявку", for: .normal)
        specialistButton.layer.cornerRadius = 10
        specialistButton.backgroundColor = .blue
        specialistButton.addTarget(self, action: #selector(activSpecialist), for: .touchUpInside)
        return specialistButton
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 400)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(imageSeles)
        contentView.addSubview(specialistImage)
        contentView.addSubview(specialistButton)
        
        setupViewConstrain()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.title = "Главная"
    }
    
    @objc func activSpecialist() {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newVC = storyBoard.instantiateViewController(withIdentifier: "vc") as! ApplicationViewController
        self.present(newVC, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController {
    
    private func setupViewConstrain() {
        
        NSLayoutConstraint.activate([
            imageSeles.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            imageSeles.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            imageSeles.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            imageSeles.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -1050),
            
            specialistImage.topAnchor.constraint(equalTo: imageSeles.bottomAnchor, constant: 20),
            specialistImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            specialistImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            specialistImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -850),
            
            specialistButton.topAnchor.constraint(equalTo: specialistImage.bottomAnchor, constant: 0),
            specialistButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            specialistButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20)
            
        ])
        
    }
}
