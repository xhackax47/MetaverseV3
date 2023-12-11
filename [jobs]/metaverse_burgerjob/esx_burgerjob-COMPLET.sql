

INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_burgershot', 'Burgershot', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_burgershot', 'Burgershot', 1),
  ('society_burgershot_fridge', 'Burgershot (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_burgershot', 'Burgershot', 1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('burgershot', 'Burgershot')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('burgershot', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
  ('burgershot', 1, 'employed', 'Employé', 40, '{}', '{}'),
  ('burgershot', 2, 'viceboss', 'Co-gérant', 75, '{}', '{}'),
  ('burgershot', 3, 'boss', 'Patron', 100, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES  
    ('steakc', 'Steak cru', 1, 1, 1),
    ('salads', 'Salade sale', 1, 1, 1),
    ('tomater', 'Tomate entière', 1, 1, 1),
    ('fromage', 'Morceau de fromage', 1, 1, 1),
    ('steakcui', 'Steak cuit', 1, 1, 1),
    ('saladp', 'Feuille de salade', 1, 1, 1),
    ('tomatec', 'Rondelle de tomate', 1, 1, 1),
    ('patate', 'Pomme de terre', 1, 1, 1),
    ('patatefrie', 'Pomme de terre frit', 1, 1, 1),
    ('frites', 'Barquette de frites', 2, 1, 1),
    ('burger', 'Hamburger', 2, 1, 1),
    ('soda', 'Soda', 2, 1, 1),
    ('jusfruit', 'Jus de fruits', 2, 1, 1),
    ('icetea', 'Ice Tea', 2, 1, 1),
    ('energy', 'Energy Drink', 2, 1, 1),
    ('drpepper', 'Dr. Pepper', 2, 1, 1),
    ('limonade', 'Limonade', 2, 1, 1),
    ('caisseketchup', 'Caisse de Ketchup', 10, 1, 1),
    ('sachetketchup', 'Sachet de Ketchup', 1, 1, 1)
;
