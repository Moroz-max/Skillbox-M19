//
//  SearchTableViewCell.swift
//  Skillbox-M19
//
//  Created by Максим Морозов on 23.12.2023.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    
    private lazy var filmImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1)
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var filmLabel: UILabel = {
        let label = UILabel()
        label.text = "Название фильма"
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(filmImageView)
        contentView.addSubview(filmLabel)
        setupConstraints()
    }
    
//    func configure(_ model: model) {
//           
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        filmImageView.snp.makeConstraints { make in
            make.left.equalTo(contentView.snp.left).offset(20)
            make.top.equalTo(contentView.snp.top).offset(10)
            make.bottom.equalTo(contentView.snp.bottom).offset(-10)
            make.width.equalTo(60)
            make.height.equalTo(90)
        }
        filmLabel.snp.makeConstraints { make in
            make.left.equalTo(filmImageView.snp.right).offset(20)
            make.centerY.equalTo(filmImageView.snp.centerY)
            make.right.equalTo(contentView.snp.right)
        }
    }
    
    
    
}
