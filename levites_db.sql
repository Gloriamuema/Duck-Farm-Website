-- Create database
CREATE DATABASE IF NOT EXISTS levites_farm;
USE levites_farm;

-- Table for farm information
CREATE TABLE farm_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    farm_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    county VARCHAR(50),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO farm_info (farm_name, location, county, description)
VALUES (
    'Levites Farm',
    'Masii',
    'Machakos County',
    'Levites Farm is a duck farm in Kenya dedicated to sustainable duck rearing for meat and eggs.'
);

-- Table for duck breeds
CREATE TABLE duck_breeds (
    id INT AUTO_INCREMENT PRIMARY KEY,
    breed_name VARCHAR(50) NOT NULL,
    description TEXT,
    male_weight_kg DECIMAL(4,1),
    female_weight_kg DECIMAL(4,1),
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO duck_breeds (breed_name, description, male_weight_kg, female_weight_kg, image_url)
VALUES
('Pekin Duck', 'Known for calm nature and delicious meat.', 4.5, 3.8, 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=800&q=80'),
('Khaki Campbell', 'Excellent egg layers producing up to 300 eggs yearly.', 2.6, 2.3, 'https://images.unsplash.com/photo-1604424480377-1d1e0c6d11e1?auto=format&fit=crop&w=800&q=80'),
('Muscovy Duck', 'Strong and healthy ducks ideal for free-range systems.', 5.5, 3.0, 'https://images.unsplash.com/photo-1615198759968-7f52c4dbf06e?auto=format&fit=crop&w=800&q=80');

-- Table for team members
CREATE TABLE team (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(100),
    bio TEXT,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO team (name, role, bio, image_url)
VALUES
('Gloria Muema', 'Farm Manager', 'Oversees operations, ensures animal welfare, and manages daily farm activities.', 'https://images.unsplash.com/photo-1607746882042-944635dfe10e?auto=format&fit=crop&w=800&q=80'),
('Daniel Muli', 'Head of Breeding', 'Focuses on genetic improvement and maintaining healthy breeding lines.', 'https://images.unsplash.com/photo-1568605114967-8130f3a36994?auto=format&fit=crop&w=800&q=80'),
('Mary Wambua', 'Veterinary Officer', 'Ensures all ducks are healthy and vaccinated regularly for disease prevention.', 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?auto=format&fit=crop&w=800&q=80');

-- Table for contact form submissions
CREATE TABLE contact_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
