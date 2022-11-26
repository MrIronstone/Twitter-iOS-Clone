//
//  ProfileHeader.swift
//  Twitter Clone
//
//  Created by admin on 26.09.2022.
//

import UIKit

class ProfileTableViewHeader: UIView {
    
    private let profileAvatarImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 40
        imageView.image = UIImage(named: "person")
        return imageView
    }()
    
    private let profileHeaderImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "header")
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        addSubview(profileHeaderImageView)
        addSubview(profileAvatarImageView)
        
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configureConstraints() {
        let profileHeaderImageViewConstraints = [
            profileHeaderImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileHeaderImageView.topAnchor.constraint(equalTo: topAnchor),
            profileHeaderImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            profileHeaderImageView.heightAnchor.constraint(equalToConstant: 180)
        ]
        
        let profileAvatarImageViewConstraints = [
            profileAvatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            profileAvatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: -180),
            profileAvatarImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 180),
            profileAvatarImageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(profileHeaderImageViewConstraints)
        NSLayoutConstraint.activate(profileAvatarImageViewConstraints)
    }
}
