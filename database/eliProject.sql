
BEGIN TRANSACTION;




DROP TABLE IF EXISTS messages;

CREATE TABLE messages(
        message_id Serial NOT NULL,
        name VARCHAR(255),
        date DATE,
        email  VARCHAR(255),
        phone_number VARCHAR(255),
        message VARCHAR(255),
        CONSTRAINT pk_messages_message_id PRIMARY KEY (message_id)
);

CREATE TABLE pictures(
        picture_id Serial NOT NULL,
        file_name VARCHAR(255),
        title VARCHAR(255),
        location VARCHAR(255),
        date DATE,
        category VARCHAR(255),
        CONSTRAINT pk_pictures_picture_id PRIMARY KEY (picture_id)
);


INSERT INTO pictures (file_name, date, location, category, title) VALUES ('african', 'NOW()', 'Africa', 'People', 'Surprised');
INSERT INTO pictures (file_name, date, location, category, title) VALUES ('lightning', 'NOW()', 'Lakewood, OH', 'Nature', 'When Lightning Strikes');
INSERT INTO pictures (file_name, date, location, category, title) VALUES ('mountains', 'NOW()', 'Mount Everest', 'Nature', 'Big Ol Mountain');
INSERT INTO pictures (file_name, date, location, category, title) VALUES ('night_sky', 'NOW()', 'Ethiopia', 'Nature', 'Serenity');
INSERT INTO pictures (file_name, date, location, category, title) VALUES ('river', '2014-10-12', 'Europe', 'Nature', 'Beauty');
INSERT INTO pictures (file_name, date, location, category, title) VALUES ('rough_ocean', '2015-5-15', 'Indian Ocean', 'Nature', 'Rough Life');
INSERT INTO pictures (file_name, date, location, category, title) VALUES ('skateboard', '2017-3-20', 'WestLake, OH', 'Action', 'Dudeeeee');
INSERT INTO pictures (file_name, date, location, category, title) VALUES ('desert', 'NOW()', 'Sahara Desert', 'Nature', 'HOT');
INSERT INTO pictures (file_name, date, location, category, title) VALUES ('winterLandscape', 'NOW()', 'That One Place', 'Nature', 'COLD');
COMMIT;


ROLLBACK;