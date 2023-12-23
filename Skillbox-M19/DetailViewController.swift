//
//  DetailViewController.swift
//  Skillbox-M19
//
//  Created by Максим Морозов on 23.12.2023.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {

    private lazy var filmImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1)
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var kinopoiskLabel: UILabel = {
        let label = UILabel()
        label.text = "Kinopoisk"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var kinopoiskRating: UILabel = {
        let label = UILabel()
        label.text = "8.5"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var IMDBLabel: UILabel = {
        let label = UILabel()
        label.text = "IMDB"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var IMDBRating: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "8.6"
        return label
    }()
    
    private lazy var filmRUTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Название фильма"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    private lazy var filmENTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14)
        label.text = "Film title english"
        return label
    }()
    
    private lazy var filmDescriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "TEST DESCRIPTION TEST DESCRIPTION TEST DESCRIPTION TEST DESCRIPTION TEST DESCRIPTION TEST DESCRIPTION TEST DESCRIPTION TEST DESCRIPTION TEST DESCRIPTION TEST DESCRIPTION TEST DESCRIPTION "
        return label
    }()
    
    private lazy var releaseDateLabel: UILabel = {
        let label = UILabel()
        label.text = "Год производства"
        label.textColor = .lightGray
        return label
    }()
    
    private lazy var yearLabel: UILabel = {
        let label = UILabel()
        label.text = "2023"
        return label
    }()
    
    private lazy var durationTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Продолжительность"
        label.textColor = .lightGray
        return label
    }()
    
    private lazy var durationTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "203 мин."
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(filmImageView)
        view.addSubview(kinopoiskLabel)
        view.addSubview(kinopoiskRating)
        view.addSubview(IMDBLabel)
        view.addSubview(IMDBRating)
        view.addSubview(filmRUTitleLabel)
        view.addSubview(filmENTitleLabel)
        view.addSubview(filmDescriptionLabel)
        view.addSubview(releaseDateLabel)
        view.addSubview(yearLabel)
        view.addSubview(durationTitleLabel)
        view.addSubview(durationTimeLabel)
    }
    
    private func setupConstraints() {
        filmImageView.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(220)
            make.top.equalTo(view.snp.topMargin).offset(20)
            make.left.equalTo(view.snp.leftMargin).offset(20)
        }
        kinopoiskLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.topMargin).offset(10)
            make.left.equalTo(filmImageView.snp.right)
            make.right.equalTo(view.snp.rightMargin)
            make.height.equalTo(20)
        }
        kinopoiskRating.snp.makeConstraints { make in
            make.top.equalTo(kinopoiskLabel.snp.bottom).offset(25)
            make.left.equalTo(filmImageView.snp.right)
            make.right.equalTo(view.snp.rightMargin)
            make.height.equalTo(20)
        }
        IMDBLabel.snp.makeConstraints { make in
            make.top.equalTo(kinopoiskRating.snp.bottom).offset(25)
            make.left.equalTo(filmImageView.snp.right)
            make.right.equalTo(view.snp.rightMargin)
            make.height.equalTo(20)
        }
        IMDBRating.snp.makeConstraints { make in
            make.top.equalTo(IMDBLabel.snp.bottom).offset(25)
            make.left.equalTo(filmImageView.snp.right)
            make.right.equalTo(view.snp.rightMargin)
            make.height.equalTo(20)
        }
        filmRUTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(filmImageView.snp.bottom).offset(20)
            make.left.equalTo(view.snp.leftMargin)
            make.right.equalTo(view.snp.rightMargin)
            make.height.equalTo(30)
        }
        filmENTitleLabel.snp.makeConstraints { make in
            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
            make.top.equalTo(filmRUTitleLabel.snp.bottom).offset(10)
            make.height.equalTo(30)
        }
        filmDescriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(filmENTitleLabel.snp.bottom).offset(20)
            make.left.equalTo(view.snp.leftMargin)
            make.right.equalTo(view.snp.rightMargin)
        }
        releaseDateLabel.snp.makeConstraints { make in
            make.top.equalTo(filmDescriptionLabel.snp.bottom).offset(20)
            make.left.equalTo(view.snp.leftMargin)
            make.right.equalTo(view.snp.rightMargin)
        }
        yearLabel.snp.makeConstraints { make in
            make.top.equalTo(releaseDateLabel.snp.bottom).offset(10)
            make.left.equalTo(view.snp.leftMargin)
            make.right.equalTo(view.snp.rightMargin)
        }
        durationTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(yearLabel.snp.bottom).offset(20)
            make.left.equalTo(view.snp.leftMargin)
            make.right.equalTo(view.snp.rightMargin)
        }
        durationTimeLabel.snp.makeConstraints { make in
            make.top.equalTo(durationTitleLabel.snp.bottom).offset(10)
            make.left.equalTo(view.snp.leftMargin)
            make.right.equalTo(view.snp.rightMargin)
        }
        
        
    }
    


}
