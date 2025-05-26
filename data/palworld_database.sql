-- Active: 1748177038597@@127.0.0.1@3306@palworld_database
CREATE TABLE combat_attribute (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Clé primaire
    pal_id INT NOT NULL,               -- Identifiant du Pal
    attack_power FLOAT,                -- Puissance d'attaque
    defense_power FLOAT,               -- Puissance de défense
    speed FLOAT,                       -- Vitesse
    critical_rate FLOAT,               -- Taux de critique
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Date de création
);
CREATE TABLE job_skill (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Clé primaire
    skill_name VARCHAR(100) NOT NULL,  -- Nom de la compétence
    description TEXT,                  -- Description de la compétence
    cooldown_time FLOAT,               -- Temps de recharge
    mana_cost INT,                     -- Coût en mana
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Date de création
);

CREATE TABLE hidden_attribute (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Clé primaire
    pal_id INT NOT NULL,               -- Identifiant du Pal
    attribute_name VARCHAR(100),       -- Nom de l'attribut caché
    value FLOAT,                       -- Valeur de l'attribut
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Date de création
);

CREATE TABLE refresh_area (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Clé primaire
    area_name VARCHAR(100) NOT NULL,   -- Nom de la zone
    respawn_time INT,                  -- Temps de réapparition (en secondes)
    resource_type VARCHAR(100),        -- Type de ressource
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Date de création
);

CREATE TABLE ordinary_boss_attribute (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Clé primaire
    boss_name VARCHAR(100) NOT NULL,   -- Nom du boss
    health_points INT,                 -- Points de vie
    attack_power FLOAT,                -- Puissance d'attaque
    defense_power FLOAT,               -- Puissance de défense
    special_ability VARCHAR(100),      -- Capacité spéciale
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Date de création
);

CREATE TABLE tower_boss_attribute (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Clé primaire
    boss_name VARCHAR(100) NOT NULL,   -- Nom du boss
    floor_level INT,                   -- Niveau de l'étage
    health_points INT,                 -- Points de vie
    attack_power FLOAT,                -- Puissance d'attaque
    defense_power FLOAT,               -- Puissance de défense
    special_ability VARCHAR(100),      -- Capacité spéciale
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Date de création
);

