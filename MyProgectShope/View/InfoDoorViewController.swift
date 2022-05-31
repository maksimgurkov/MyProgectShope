//
//  InfoDoorViewController.swift
//  MyProgectShope
//
//  Created by Максим Гурков on 24.05.2022.
//

import UIKit

class InfoDoorViewController: UIViewController {
    
    var door: Door!
    
    //MARK: - UIScrollView
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
    
    private lazy var imageDoor: UIImageView = {
        let imageDoor = UIImageView()
        imageDoor.image = UIImage(named: door.nameDoor)
        return imageDoor
    }()
    //MARK: - UILabel
    private lazy var descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.text = door.description
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = .systemFont(ofSize: 13)
        return descriptionLabel
    }()
    
    private lazy var dimensions550Label: UILabel = {
        let dimensions550Label = UILabel()
        dimensions550Label.text = "550*1900"
        dimensions550Label.numberOfLines = 0
        dimensions550Label.font = .systemFont(ofSize: 16)
        dimensions550Label.translatesAutoresizingMaskIntoConstraints = false
        return dimensions550Label
    }()
    
    private lazy var dimensions600Label: UILabel = {
        let dimensions600Label = UILabel()
        dimensions600Label.text = "600*2000"
        dimensions600Label.numberOfLines = 0
        dimensions600Label.font = .systemFont(ofSize: 16)
        dimensions600Label.translatesAutoresizingMaskIntoConstraints = false
        return dimensions600Label
    }()
    
    private lazy var dimensions700Label: UILabel = {
        let dimensions700Label = UILabel()
        dimensions700Label.text = "700*2000"
        dimensions700Label.numberOfLines = 0
        dimensions700Label.font = .systemFont(ofSize: 16)
        dimensions700Label.translatesAutoresizingMaskIntoConstraints = false
        return dimensions700Label
    }()
    
    private lazy var dimensions800Label: UILabel = {
        let dimensions800Label = UILabel()
        dimensions800Label.text = "800*2000"
        dimensions800Label.numberOfLines = 0
        dimensions800Label.font = .systemFont(ofSize: 16)
        dimensions800Label.translatesAutoresizingMaskIntoConstraints = false
        return dimensions800Label
    }()
    
    private lazy var dimensions900Label: UILabel = {
        let dimensions900Label = UILabel()
        dimensions900Label.text = "900*2000"
        dimensions900Label.numberOfLines = 0
        dimensions900Label.font = .systemFont(ofSize: 16)
        dimensions900Label.translatesAutoresizingMaskIntoConstraints = false
        return dimensions900Label
    }()
    
    private lazy var counts550Label: UILabel = {
        let counts550Label = UILabel()
        counts550Label.text = "\(0) шт."
        counts550Label.numberOfLines = 0
        counts550Label.frame = CGRect(x: 0, y: 0, width: 10, height: 20)
        counts550Label.font = .systemFont(ofSize: 16)
        counts550Label.translatesAutoresizingMaskIntoConstraints = false
        return counts550Label
    }()
    
    private lazy var counts600Label: UILabel = {
        let counts600Label = UILabel()
        counts600Label.text = "\(0) шт."
        counts600Label.numberOfLines = 0
        counts600Label.font = .systemFont(ofSize: 16)
        counts600Label.translatesAutoresizingMaskIntoConstraints = false
        return counts600Label
    }()
    
    private lazy var counts700Label: UILabel = {
        let counts700Label = UILabel()
        counts700Label.text = "\(0) шт."
        counts700Label.numberOfLines = 0
        counts700Label.font = .systemFont(ofSize: 16)
        counts700Label.translatesAutoresizingMaskIntoConstraints = false
        return counts700Label
    }()
    
    private lazy var counts800Label: UILabel = {
        let counts800Label = UILabel()
        counts800Label.text = "\(0) шт."
        counts800Label.numberOfLines = 0
        counts800Label.font = .systemFont(ofSize: 16)
        counts800Label.translatesAutoresizingMaskIntoConstraints = false
        return counts800Label
    }()
    
    private lazy var counts900Label: UILabel = {
        let counts900Label = UILabel()
        counts900Label.text = "\(0) шт."
        counts900Label.numberOfLines = 0
        counts900Label.font = .systemFont(ofSize: 16)
        counts900Label.translatesAutoresizingMaskIntoConstraints = false
        return counts900Label
    }()
    
    //MARK: - UIButton
    private lazy var priceButton: UIButton = {
        let priceButton = UIButton()
        priceButton.setTitle("Добавить в корзину", for: .normal)
        priceButton.backgroundColor = #colorLiteral(red: 0, green: 0.4780646563, blue: 0.9985368848, alpha: 1)
        priceButton.layer.cornerRadius = 10
        priceButton.addTarget(self, action: #selector(activeShopping), for: .touchUpInside)
        return priceButton
    }()
    //MARK: - UIStepper
    private lazy var count550Stepper: UIStepper = {
        let count550Stepper = UIStepper()
        count550Stepper.translatesAutoresizingMaskIntoConstraints = false
        count550Stepper.addTarget(self, action: #selector(activitiSteper(sender:)), for: .valueChanged)
        return count550Stepper
    }()
    
    private lazy var count600Stepper: UIStepper = {
        let count600Stepper = UIStepper()
        count600Stepper.translatesAutoresizingMaskIntoConstraints = false
        return count600Stepper
    }()
    
    private lazy var count700Stepper: UIStepper = {
        let count700Stepper = UIStepper()
        count700Stepper.translatesAutoresizingMaskIntoConstraints = false
        return count700Stepper
    }()
    
    private lazy var count800Stepper: UIStepper = {
        let count800Stepper = UIStepper()
        count800Stepper.translatesAutoresizingMaskIntoConstraints = false
        return count800Stepper
    }()
    
    private lazy var count900Stepper: UIStepper = {
        let count900Stepper = UIStepper()
        count900Stepper.translatesAutoresizingMaskIntoConstraints = false
        return count900Stepper
    }()
        
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 400)
    }
    
    private var shopping: [Door] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = door.nameDoor
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(imageDoor)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(priceButton)
        
        contentView.addSubview(counts550Label)
        contentView.addSubview(dimensions550Label)
        contentView.addSubview(count550Stepper)
        
        contentView.addSubview(dimensions600Label)
        contentView.addSubview(counts600Label)
        contentView.addSubview(count600Stepper)
        
        contentView.addSubview(counts700Label)
        contentView.addSubview(count700Stepper)
        contentView.addSubview(dimensions700Label)
        
        contentView.addSubview(counts800Label)
        contentView.addSubview(count800Stepper)
        contentView.addSubview(dimensions800Label)
        
        contentView.addSubview(counts900Label)
        contentView.addSubview(count900Stepper)
        contentView.addSubview(dimensions900Label)
        
        setupViewsConstrains()

    }
    
    @objc private func activeShopping() {
        if !door.flag {
            door.flag.toggle()
            priceButton.setTitle("Удалить из корзины", for: .normal)
            print("\(door.flag)")
        } else if door.flag {
            door.flag.toggle()
            priceButton.setTitle("Добавить в корзину", for: .normal)
        }
    }
    
    @objc private func activitiSteper(sender: UIStepper) {
        counts550Label.text = "\(Int(sender.value)) шт."
        door.count550Door = Int(sender.value)
    }
    
}

extension InfoDoorViewController {
    
    private func setupViewsConstrains() {
        imageDoor.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        priceButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageDoor.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            imageDoor.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -60),
            imageDoor.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 60),
            imageDoor.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -600),
            
            descriptionLabel.topAnchor.constraint(equalTo: imageDoor.bottomAnchor, constant: 20),
            descriptionLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            descriptionLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            
            priceButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            priceButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50),
            priceButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50),
            
            dimensions550Label.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30),
            dimensions550Label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            count550Stepper.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 25),
            count550Stepper.leftAnchor.constraint(equalTo: dimensions550Label.rightAnchor, constant: 62),
            counts550Label.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30),
            counts550Label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
                        
            dimensions600Label.topAnchor.constraint(equalTo: dimensions550Label.bottomAnchor, constant: 23),
            dimensions600Label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            count600Stepper.topAnchor.constraint(equalTo: count550Stepper.bottomAnchor, constant: 10),
            count600Stepper.leftAnchor.constraint(equalTo: dimensions600Label.rightAnchor, constant: 60),
            counts600Label.topAnchor.constraint(equalTo: counts550Label.bottomAnchor, constant: 23),
            counts600Label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            
            dimensions700Label.topAnchor.constraint(equalTo: dimensions600Label.bottomAnchor, constant: 23),
            dimensions700Label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            count700Stepper.topAnchor.constraint(equalTo: count600Stepper.bottomAnchor, constant: 10),
            count700Stepper.leftAnchor.constraint(equalTo: dimensions700Label.rightAnchor, constant: 60),
            counts700Label.topAnchor.constraint(equalTo: counts600Label.bottomAnchor, constant: 23),
            counts700Label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            
            dimensions800Label.topAnchor.constraint(equalTo: dimensions700Label.bottomAnchor, constant: 23),
            dimensions800Label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            count800Stepper.topAnchor.constraint(equalTo: count700Stepper.bottomAnchor, constant: 10),
            count800Stepper.leftAnchor.constraint(equalTo: dimensions800Label.rightAnchor, constant: 60),
            counts800Label.topAnchor.constraint(equalTo: counts700Label.bottomAnchor, constant: 23),
            counts800Label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            
            dimensions900Label.topAnchor.constraint(equalTo: dimensions800Label.bottomAnchor, constant: 23),
            dimensions900Label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            count900Stepper.topAnchor.constraint(equalTo: count800Stepper.bottomAnchor, constant: 10),
            count900Stepper.leftAnchor.constraint(equalTo: dimensions900Label.rightAnchor, constant: 60),
            counts900Label.topAnchor.constraint(equalTo: counts800Label.bottomAnchor, constant: 23),
            counts900Label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20)
            
        ])
        
    }
}
