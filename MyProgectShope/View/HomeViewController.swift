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
        imageSeles.layer.cornerRadius = 20
        imageSeles.contentMode = .scaleToFill
        imageSeles.translatesAutoresizingMaskIntoConstraints = false
        return imageSeles
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 400)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(imageSeles)
        
        setupViewConstrain()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.navigationItem.title = "Главная"
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
            imageSeles.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -1050)
            
        ])
        
    }
}
