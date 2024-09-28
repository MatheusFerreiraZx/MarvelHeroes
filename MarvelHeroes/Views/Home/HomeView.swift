//
//  HomeView.swift
//  MarvelHeroes
//
//  Created by Matheus Ferreira on 28/09/24.
//

import UIKit

class HomeView: UIView {
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    
    private var menuButton: UIButton = {
        let button = UIButton()
        button.setImage(.menuIcon, for: .normal)
        return button
    }()
    
    private lazy var logoImageView = UIImageView(image: UIImage(named: "MarvelIcon"))
    
    private var searchButton: UIButton = {
        let button = UIButton()
        button.setImage(.searchIcon, for: .normal)
        return button
    }()
    
    private let welcomeMessage: UILabel = {
        let label = UILabel()
        label.text = "Bem vindo ao Marvel Heroes!"
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .gray
        return label
    }()
    
    private let chooseCharacterLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 32, weight: .heavy)
        label.textColor = .black
        label.numberOfLines = 0
        
        let attributedString = NSMutableAttributedString(string: "Escolha seu\n", attributes: [.font: label.font!, .foregroundColor: label.textColor!])
        attributedString.append(NSAttributedString(string: "personagem", attributes: [.font: label.font!, .foregroundColor: UIColor.black]))
        
        label.attributedText = attributedString
        return label
    }()
    
    private let categoryStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var categoryIcon1: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "HeroIcon"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var categoryIcon2: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "VillainsIcon"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var categoryIcon3: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "AntiHeroIcon"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var categoryIcon4: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "AlienIcon"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var categoryIcon5: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "HumanIcon"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let heroesTitle: UILabel = {
        let label = UILabel()
        label.text = "Heróis"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .red
        return label
    }()
    
    private let heroesCarousel = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    private let villainsTitle: UILabel = {
        let label = UILabel()
        label.text = "Vilões"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .red
        return label
    }()
    
    private let villainsCarousel = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    private let antiHeroesTitle: UILabel = {
        let label = UILabel()
        label.text = "Anti-heróis"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .red
        return label
    }()
    
    private let antiHeroesCarousel = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    private let humansTitle: UILabel = {
        let label = UILabel()
        label.text = "Humanos"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .red
        return label
    }()
    
    private let humansCarousel = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("(init(coder:)) has not been implemented")
    }
    
    private func setupUI() {
        backgroundColor = .white
        
        logoImageView.contentMode = .scaleAspectFit
        
        categoryStackView.addArrangedSubview(categoryIcon1)
        categoryStackView.addArrangedSubview(categoryIcon2)
        categoryStackView.addArrangedSubview(categoryIcon3)
        categoryStackView.addArrangedSubview(categoryIcon4)
        categoryStackView.addArrangedSubview(categoryIcon5)
        
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        contentView.addSubview(menuButton)
        contentView.addSubview(logoImageView)
        contentView.addSubview(searchButton)
        contentView.addSubview(welcomeMessage)
        contentView.addSubview(chooseCharacterLabel)
        contentView.addSubview(categoryStackView)
        contentView.addSubview(heroesTitle)
        contentView.addSubview(heroesCarousel)
        contentView.addSubview(villainsTitle)
        contentView.addSubview(villainsCarousel)
        contentView.addSubview(antiHeroesTitle)
        contentView.addSubview(antiHeroesCarousel)
        contentView.addSubview(humansTitle)
        contentView.addSubview(humansCarousel)
    }
    
    private func setupConstraints() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        welcomeMessage.translatesAutoresizingMaskIntoConstraints = false
        chooseCharacterLabel.translatesAutoresizingMaskIntoConstraints = false
        heroesTitle.translatesAutoresizingMaskIntoConstraints = false
        heroesCarousel.translatesAutoresizingMaskIntoConstraints = false
        villainsTitle.translatesAutoresizingMaskIntoConstraints = false
        villainsCarousel.translatesAutoresizingMaskIntoConstraints = false
        antiHeroesTitle.translatesAutoresizingMaskIntoConstraints = false
        antiHeroesCarousel.translatesAutoresizingMaskIntoConstraints = false
        humansTitle.translatesAutoresizingMaskIntoConstraints = false
        humansCarousel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            menuButton.topAnchor
                .constraint(equalTo: contentView.topAnchor, constant: 4),
            menuButton.leadingAnchor
                .constraint(equalTo: contentView.leadingAnchor),
            menuButton.widthAnchor.constraint(equalToConstant: 50),
            menuButton.heightAnchor.constraint(equalToConstant: 40),
            
            logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            logoImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 70),
            logoImageView.heightAnchor.constraint(equalToConstant: 40),
            
            searchButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            searchButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            searchButton.widthAnchor.constraint(equalToConstant: 50),
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            
            welcomeMessage.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40),
            welcomeMessage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            chooseCharacterLabel.topAnchor.constraint(equalTo: welcomeMessage.bottomAnchor, constant: 10),
            chooseCharacterLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            categoryStackView.topAnchor.constraint(equalTo: chooseCharacterLabel.bottomAnchor, constant: 20),
            categoryStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            categoryStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
                
            heroesTitle.topAnchor.constraint(equalTo: categoryStackView.bottomAnchor, constant: 35),
            heroesTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            heroesCarousel.topAnchor.constraint(equalTo: heroesTitle.bottomAnchor, constant: 10),
            heroesCarousel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            heroesCarousel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            heroesCarousel.heightAnchor.constraint(equalToConstant: 150),
            
            villainsTitle.topAnchor.constraint(equalTo: heroesCarousel.bottomAnchor, constant: 20),
            villainsTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            villainsCarousel.topAnchor.constraint(equalTo: villainsTitle.bottomAnchor, constant: 10),
            villainsCarousel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            villainsCarousel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            villainsCarousel.heightAnchor.constraint(equalToConstant: 150),
            
            antiHeroesTitle.topAnchor.constraint(equalTo: villainsCarousel.bottomAnchor, constant: 20),
            antiHeroesTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            antiHeroesCarousel.topAnchor.constraint(equalTo: antiHeroesTitle.bottomAnchor, constant: 10),
            antiHeroesCarousel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            antiHeroesCarousel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            antiHeroesCarousel.heightAnchor.constraint(equalToConstant: 150),
            
            humansTitle.topAnchor.constraint(equalTo: antiHeroesCarousel.bottomAnchor, constant: 20),
            humansTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            humansCarousel.topAnchor.constraint(equalTo: humansTitle.bottomAnchor, constant: 10),
            humansCarousel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            humansCarousel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            humansCarousel.heightAnchor.constraint(equalToConstant: 150),
            humansCarousel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }
}
