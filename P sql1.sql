DROP DATABASE IF EXISTS classic_wheels_db;
CREATE DATABASE classic_wheels_db;
USE classic_wheels_db;

-- 2. Create Users Table
CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    phone VARCHAR(20),
    address TEXT,
    role VARCHAR(50)
);

-- 3. Create Vehicles Table
CREATE TABLE vehicles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    brand VARCHAR(255),
    type VARCHAR(50),
    price_per_day DOUBLE,
    image_url TEXT,
    description TEXT,
    features TEXT,
    available BOOLEAN DEFAULT TRUE,
    rating DOUBLE DEFAULT 5.0
);

-- 4. Create Bookings Table
CREATE TABLE bookings (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    vehicle_id BIGINT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50),
    total_price DOUBLE,
    license_number VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(id)
);

-- 5. Insert Admin
INSERT INTO users (email, password, name, role, phone, address) 
VALUES ('admin@classic.com', 'admin123', 'Super Admin', 'ADMIN', '9876543210', 'Mumbai, HQ');

-- 6. Insert Vehicles with WORKING Unsplash Links
INSERT INTO vehicles (name, brand, type, price_per_day, description, features, rating, image_url) VALUES 

-- CAR 1: Fortuner (SUV)
('Toyota Fortuner Legender', 'Toyota', 'CAR', 5500,
 'The undisputed king of the road. Powerful, spacious, and imposing.',
 'Auto,Diesel,7 Seater,4x4', 4.9,
 'https://ds-prod.citroen.in/static-assets/ds-static/s3fs-public/2025-08/C3_X_HP_section_640x1120.jpg?gaw_sY7squ.6L52gCTPirZ9kyC9VqYeY'),

-- CAR 2: BMW 5 Series (Luxury Sedan)
('BMW 5 Series', 'BMW', 'CAR', 9000,
 'Executive luxury with sporty dynamics.',
 'Auto,Leather,Sunroof,RWD', 4.9,
 'https://static.vecteezy.com/system/resources/thumbnails/053/733/179/small/every-detail-of-a-sleek-modern-car-captured-in-close-up-photo.jpg'),

-- CAR 3: Thar (Offroad)
('Mahindra Thar', 'Mahindra', 'CAR', 3500,
 'Built for the wild. Convertible top for the ultimate freedom.',
 'Manual,4x4,Convertible,Diesel', 4.8,
 'https://www.shutterstock.com/image-photo/black-luxury-car-front-view-600nw-2429457007.jpg'),

-- CAR 4: Lamborghini Huracan (Supercar)
('Lamborghini Huracan', 'Lamborghini', 'CAR', 55000,
 'Italian V10 masterpiece. 0-100 in 3 seconds.',
 'Auto,V10,Supercar,Yellow', 5.0,
 'https://www.thestreet.com/.image/w_1200,h_675,g_auto,c_fill/MjEzODEwODM4MTMyMjM4MTcz/01-2025-honda-pilot-black-edition.jpg'),

-- CAR 5: Mercedes C-Class (Premium Sedan)
('Mercedes C-Class', 'Mercedes', 'CAR', 8500,
 'Elegant, comfortable, and technologically advanced.',
 'Auto,Luxury,Ambient Light,White', 4.8,
 'https://images.unsplash.com/photo-1617788138017-80ad40651399?q=80&w=1000&auto=format&fit=crop'),

-- BIKE 1: Classic 350 (Retro)
('Royal Enfield Classic 350', 'Royal Enfield', 'BIKE', 1200,
 'Timeless retro design with a modern heart.',
 '350cc,Retro,Thump,Comfort', 4.8,
 'https://images.unsplash.com/photo-1558981403-c5f9899a28bc?q=80&w=1000&auto=format&fit=crop'),

-- BIKE 2: Hayabusa (Superbike)
('Suzuki Hayabusa', 'Suzuki', 'BIKE', 10000,
 'The ultimate speed machine. Aerodynamic perfection.',
 '1300cc,Fast,Icon,Sport', 5.0,
 'https://www.hdwallpapers.in/download/hayabusa_suzuki_blue_bike-wide.jpg'),

-- BIKE 3: Harley Davidson (Cruiser)
('Harley Davidson Fat Boy', 'Harley Davidson', 'BIKE', 8000,
 'Heavy metal thunder. Pure American muscle.',
 '1800cc,Cruiser,Chrome,Loud', 5.0,
 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT80jTEtZfVGHO1wqpED0nXdgDNf9a3M9LLOw&s'),

-- BIKE 4: Triumph Tiger (Adventure)
('Triumph Tiger 900', 'Triumph', 'BIKE', 6500,
 'Go anywhere adventure bike.',
 '900cc,Adventure,Tall,Tech', 4.9,
 'https://www.timesbull.com/wp-content/uploads/2025/10/Triumph-Bonneville-T120.jpg'),

-- BIKE 5: Ninja ZX-10R (Track)
('Kawasaki Ninja ZX-10R', 'Kawasaki', 'BIKE', 9000,
 'Born for the track. Green mean machine.',
 '1000cc,Green,Race,Fast', 5.0,
 'https://images.unsplash.com/photo-1568772585407-9361f9bf3a87?q=80&w=1000&auto=format&fit=crop');