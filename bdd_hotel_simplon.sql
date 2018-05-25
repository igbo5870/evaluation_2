DROP DATABASE IF EXISTS bdd_hotel_simplon;

CREATE DATABASE bdd_hotel_simplon CHARACTER SET 'utf8';

USE bdd_hotel_simplon;

CREATE TABLE IF NOT EXISTS Users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    phone VARCHAR(45) NOT NULL,
    password VARCHAR(45) NOT NULL,
    statut_users BOOLEAN, 
    PRIMARY KEY (id)
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Bed_Type (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Bathroom_Type (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
  
    PRIMARY KEY (id)
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS View (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
   
    PRIMARY KEY (id)
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Bedroom (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    area INT UNSIGNED NOT NULL,
    category BOOLEAN NULL,
    accessibilty BOOLEAN NULL,
    id_bed_type INT UNSIGNED NOT NULL,
    id_bathroom_type INT UNSIGNED NOT NULL,
    id_view INT UNSIGNED NOT NULL,
    floor INT NOT NULL,
    price INT NOT NULL,

    PRIMARY KEY (id),
    CONSTRAINT fk_bed_type_id         
        FOREIGN KEY (id_bed_type)      
        REFERENCES Bed_Type(id),
    CONSTRAINT fk_bathroom_type_id         
        FOREIGN KEY (id_bathroom_type)      
        REFERENCES Bathroom_Type(id),
    CONSTRAINT fk_view_id         
        FOREIGN KEY (id_view)      
        REFERENCES View(id)          
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Service_Category (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,

    PRIMARY KEY (id)
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Service (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    description TEXT NULL,
    id_service_category INT UNSIGNED NOT NULL,
    price INT NOT NULL,

    PRIMARY KEY (id),
    CONSTRAINT fk_service_category_id         
        FOREIGN KEY (id_service_category)      
        REFERENCES Service_Category(id)  
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS List_Service (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_service INT UNSIGNED NOT NULL,
    id_bedroom INT UNSIGNED NOT NULL,
   
    PRIMARY KEY (id),
    CONSTRAINT fk_service_id         
        FOREIGN KEY (id_service)      
        REFERENCES Service(id),  
    CONSTRAINT fk_bedroom_id         
        FOREIGN KEY (id_bedroom)      
        REFERENCES Bedroom(id)        
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Statut_Booking (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    PRIMARY KEY (id)
)
ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Booking (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT UNSIGNED NOT NULL, 
    id_list_service INT UNSIGNED NOT NULL,
    id_statut INT UNSIGNED NOT NULL,
    arrivals_date DATE,
    departure_date DATE,
   
    PRIMARY KEY (id),
    CONSTRAINT fk_user_id         
        FOREIGN KEY (id_user)      
        REFERENCES Users(id),  
    CONSTRAINT fk_list_service_id         
        FOREIGN KEY (id_list_service)      
        REFERENCES List_Service(id),  
    CONSTRAINT fk_statut_booking_id         
        FOREIGN KEY (id_statut)      
        REFERENCES Statut_Booking(id)  
    
)
ENGINE=INNODB;

