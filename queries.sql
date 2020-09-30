-- left table
SELECT victims.* FROM victims;

-- right table
SELECT victims.* FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id;

-- next table to join
SELECT victims.* FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id
INNER JOIN zombies
ON zombies.id = bitings.zombie_id;

-- select data from each table you want
SELECT victims.name, zombies.name, bitings.infected_on FROM victims
INNER JOIN bitings
ON bitings.victim_id = victims.id
INNER JOIN zombies
ON zombies.id = bitings.zombie_id;