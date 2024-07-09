CREATE DATABASE NFTDesignConnect
GO

USE NFTDesignConnect
GO

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255),
    email VARCHAR(255),
	phone VARCHAR(255),
	facebook VARCHAR(255),
	avatar VARCHAR(255),
	description VARCHAR(255),
    password VARCHAR(255),
    role VARCHAR(50),
    created_at datetime DEFAULT GETDATE(),
	fullname VARCHAR(255),
);

CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Specifications (
    specifications_id INT PRIMARY KEY,
    floors INT,
    area DECIMAL(10, 2),
    length DECIMAL(10, 2),
    frontage DECIMAL(10, 2)
);

CREATE TABLE Style (
    style_id INT PRIMARY KEY,
    name VARCHAR(100)
);


CREATE TABLE NFTs (
    nft_id INT PRIMARY KEY,
    name VARCHAR(255),
    designer_id INT,
    category_id INT,
    specifications_id INT,
    style_id INT,
    price DECIMAL(10, 2),
    created_at datetime DEFAULT GETDATE(),
    FOREIGN KEY (designer_id) REFERENCES Users(user_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (specifications_id) REFERENCES Specifications(specifications_id),
    FOREIGN KEY (style_id) REFERENCES Style(style_id)
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    nft_id INT,
    user_id INT,
    rating INT,
    comment TEXT,
    created_at datetime DEFAULT GETDATE(),
    FOREIGN KEY (nft_id) REFERENCES NFTs(nft_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    nft_id INT,
    user_id INT,
    price DECIMAL(10, 2),
    transaction_date DATE,
    FOREIGN KEY (nft_id) REFERENCES NFTs(nft_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Favorites (
    favorite_id INT PRIMARY KEY,
    nft_id INT,
    user_id INT,
    created_at datetime DEFAULT GETDATE(),
    FOREIGN KEY (nft_id) REFERENCES NFTs(nft_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
