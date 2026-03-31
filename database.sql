-- SQL schema for zones table
CREATE TABLE zones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- SQL schema for kills table
CREATE TABLE kills (
    id INT PRIMARY KEY AUTO_INCREMENT,
    player_id INT NOT NULL,
    zone_id INT NOT NULL,
    kill_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (zone_id) REFERENCES zones(id)
);

-- SQL schema for player statistics table
CREATE TABLE player_statistics (
    player_id INT PRIMARY KEY,
    kills INT DEFAULT 0,
    deaths INT DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (player_id) REFERENCES players(id)
);