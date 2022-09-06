-- Create an "animals" table with columns for: [species, name, age, was fed (yes/no), their favorite food]

CREATE TABLE "animals" (
    id INTEGER PRIMARY KEY,
    species TEXT,
    name TEXT,
    age INTEGER,
    fed INTEGER,
    fav_food TEXT
);

-- Populate the table with some animals you like

INSERT INTO animals (species, name, age, fed, fav_food) VALUES ('lion', 'Simba', 5, 1, 'meat');
INSERT INTO animals (species, name, age, fed, fav_food) VALUES ('monkey', 'Abu', 3, 0, 'banana');
INSERT INTO animals (species, name, age, fed, fav_food) VALUES ('chameleon', 'Pascal', 4, 1, 'worms');
INSERT INTO animals (species, name, age, fed, fav_food) VALUES ('crab', 'Sebastian', 10, 0, 'shrimps');

SELECT * FROM animals;

-- Update some properties of the animal 
UPDATE animals SET name='Krabs' WHERE species="crab";


-- Remove one of the animals 

DELETE FROM animals WHERE name = 'Pascal';

-- Remove the column for their favourite_food, you don't need that information anymore

ALTER TABLE animals DROP COLUMN fav_food;

-- Start tracking where the animals are from. Call it origin

ALTER TABLE animals ADD origin TEXT;

-- add a city for a couple animals.

UPDATE animals SET origin = 'Pride Lands' WHERE species = 'lion';

UPDATE animals SET origin = 'Agrabah' WHERE species = 'monkey';

UPDATE animals SET origin = 'Bikini Bottom' WHERE species = 'crab'


-- Can you feed all the animals using just one command?

UPDATE animals SET fed = 1;