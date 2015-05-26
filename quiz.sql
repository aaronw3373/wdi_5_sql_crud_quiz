DROP DATABASE IF EXISTS westeros;
CREATE DATABASE westeros;
\c westeros;

-- Question 1. Create two tables:
--   `houses` has the following columns: id (serial primary key), name (text), motto (text), and sigil (text)
--   `people` has an id ( serial primary key), name (text), title (text), quote (text), image (text) and age (integer)

-- your code starts here
CREATE TABLE houses(
id serial primary key,
name text,
motto text,
sigil text
);

CREATE TABLE people(
id serial primary key,
name text,
title text,
quote text,
image text,
age integer
);
-- your code ends here

-- Question 2. Insert the data from `westeros/houses.csv` into the `houses` table and the data from `westeros/people.csv` into the `people` table.

-- your code starts here
insert into houses(name, motto, sigil) values ('House Baratheon','Ours is the fury.','http://i.imgur.com/iJtBKIR.png');
insert into houses(name, motto, sigil) values ('House Bolton','Our blades are sharp.','http://i.imgur.com/uPoc9Jh.jpg');
insert into houses(name, motto, sigil) values ('House Lannister','Hear me roar!','http://i.imgur.com/gOwmzoU.jpg');
insert into houses(name, motto, sigil) values ('House Martell','Unbowed, Unbent, Unbroken.','http://i.imgur.com/XaIiVNI.jpg');
insert into houses(name, motto, sigil) values ('House Stark','Winter is coming.','http://i.imgur.com/zpVjXsa.jpg');
insert into houses(name, motto, sigil) values ('House Targaryen','Blood and fire.','http://i.imgur.com/4FuSpZt.jpg');



insert into people(name,title,quote,image,age) values ('Daenerys Targaryen','Queen of Meereen and Mother of Dragons','I will take what is mine with blood and fire.','http://i.imgur.com/DjHJq4E.jpg',18);
insert into people(name,title,quote,image,age) values ('Jon Snow','Lord Commander of the Nights Watch','Night gathers, and now my watch begins.','http://i.imgur.com/WadV6VI.jpg',19);
insert into people(name,title,quote,image,age) values ('Tyrion Lannister','Hand of the King and Master of Coin','A Lannister always pays his debts.','http://i.imgur.com/rNHNWca.jpg',35);
insert into people(name,title,quote,image,age) values ('Tywin Lannister','Wormchow','You cannot eat love, nor buy a horse with it, nor warm your halls on a cold night.','http://i.imgur.com/ovtHd1H.jpg',60);
insert into people(name,title,quote,image,age) values ('Arya Stark','Princess of Winterfell','...anyone can be killed.','http://i.imgur.com/Csq9exg.jpg',14);
insert into people(name,title,quote,image,age) values ('Cersei Lannister','King Mother and Lady of Casterly Rock','he gods have no mercy, thats why they’re gods.','http://i.imgur.com/jYeeCJ3.jpg',40);
insert into people(name,title,quote,image,age) values ('Robb Stark','Deceased','It was the only honorable thing to do.','http://i.imgur.com/uYC3zzt.jpg',21);

-- your code ends here

-- Question 3. Write a query to get all attributes of people greater than a certain age *or* having a specific title.

-- your code starts here

-- SELECT id,name,title,quote,image,age
-- FROM people
-- WHERE age > 20
-- OR title = 'Deceased';

-- your code ends here

-- Question 4. Change the motto of one of your houses. Look it up by its name.

-- your code starts here
UPDATE houses
SET motto = 'And Boom Goes the Dynamite'
WHERE name = 'House Stark';
-- your code ends here

-- Question 5. Kill off, er, I mean delete one of the people. Look them up by their title.

-- your code starts here
DELETE FROM people
WHERE title = 'Hand of the King and Master of Coin';
-- your code ends here

