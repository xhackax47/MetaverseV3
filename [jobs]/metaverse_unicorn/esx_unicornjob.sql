SET @job_name = 'unicorn';
SET @society_name = 'society_unicorn';
SET @job_Name_Caps = 'Unicorn';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_unicorn_fridge', 'Unicorn (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  (@job_name, @job_Name_Caps, 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'barman', 'Barman', 25, '{}', '{}'),
  (@job_name, 1, 'dancer', 'Danseur', 50, '{}', '{}'),
  (@job_name, 2, 'viceboss', 'Co-gérant', 75, '{}', '{}'),
  (@job_name, 3, 'boss', 'Gérant', 100, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `weight`) VALUES  
    ('jager', 'Jägermeister', 1),
    ('vodka', 'Vodka', 1),
    ('rhum', 'Rhum', 1),
    ('whisky', 'Whisky', 1),
    ('tequila', 'Tequila', 1),
    ('martini', 'Martini blanc', 1),
    ('soda', 'Soda', 1),
    ('jusfruit', 'Jus de fruits', 1),
    ('icetea', 'Ice Tea', 1),
    ('energy', 'Energy Drink', 1),
    ('drpepper', 'Dr. Pepper', 1),
    ('limonade', 'Limonade', 1),
    ('bolcacahuetes', 'Bol de cacahuètes', 1),
    ('bolnoixcajou', 'Bol de noix de cajou', 1),
    ('bolpistache', 'Bol de pistaches', 1),
    ('bolchips', 'Bol de chips', 1),
    ('saucisson', 'Saucisson', 1),
    ('grapperaisin', 'Grappe de raisin', 1),
    ('jagerbomb', 'Jägerbomb', 1),
    ('golem', 'Golem', 1),
    ('whiskycoca', 'Whisky-coca', 1),
    ('vodkaenergy', 'Vodka-energy', 1),
    ('vodkafruit', 'Vodka-jus de fruits', 1),
    ('rhumfruit', 'Rhum-jus de fruits', 1),
    ('teqpaf', "Teq'paf", 1),
    ('rhumcoca', 'Rhum-coca', 1),
    ('mojito', 'Mojito', 1),
    ('ice', 'Glaçon', 1),
    ('mixapero', 'Mix Apéritif', 1),
    ('metreshooter', 'Mètre de shooter', 1),
    ('jagercerbere', 'Jäger Cerbère', 1),
    ('menthe', 'Feuille de menthe', 1)
;
