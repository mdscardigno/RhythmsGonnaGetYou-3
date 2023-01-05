createdb RhythmsGonnaGetYouDb

pgcli RhythmsGonnaGetYouDb
--Creating Tables
CREATE TABLE "Bands" (
  "Id" SERIAL PRIMARY KEY,
  "Name" TEXT,
  "CountryOfOrigin" TEXT,
  "NumberOfMembers" INT,
  "Website" TEXT,
  "Genre" TEXT,
  "IsSigned" BOOL,
  "ContactName" TEXT
);

CREATE TABLE "Albums" (
  "Id" SERIAL PRIMARY KEY,
  "Title" TEXT,
  "IsExplicit" BOOL,
  "ReleaseDate" DATE,
  "BandId" INT NULL REFERENCES "Bands" ("Id")
);

CREATE TABLE "Songs" (
  "Id" SERIAL PRIMARY KEY,
  "TrackNumber" INT,
  "Title" TEXT,
  "Duration" INT,
  "AlbumId" INT NULL REFERENCES "Albums" ("Id")
);

--Adding Bands
INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('ColdPlay', 'United Kingdom', 5, 'https://www.coldplay.com', 'Alternative Rock Pop', true, 'Phil Harvey');

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('Aerosmith', 'United States of America', 8, 'https://www.aerosmith.com', 'Rock', true, 'Larry Rudolph');

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('Guns N'' Roses', 'United States of America', 6, 'https://www.gunsnroses.com', 'Rock', true, 'Alan Niven');

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName") 
VALUES ('The Cure', 'United Kingdom', 5, 'https://www.thecure.com/bio/', 'Gothic Rock', true, 'Chris Parry');

INSERT INTO "Bands" ("Name", "CountryOfOrigin", "NumberOfMembers", "Website", "Genre", "IsSigned", "ContactName")
VALUES ('New Order', 'United Kingdom', 6, 'http://www.neworder.com', 'Rock', true, 'Rob Gretton');


Entity Relationships Requirements:
--A Band has many Albums
--Album belongs to one Band
--An Album has many Songs
--A Song belongs to one Album.

--Adding Albums

INSERT INTO "Albums"("Title", "IsExplicit", "ReleaseDate", "BandId") 
VALUES ('Parachutes', false, '2000-06-12', 1);

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES ('The Music of the Spheres', false, '2015-12-04', 2);

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES ('X&Y', false, '2005-09-10', 3);

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES ('Aerosmith', false, '1973-12-01', 4);

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate", "BandId")
VALUES ('Get A Grip', false, '1993-12-01', 5);

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('I Don''t want to Miss a Thing', false, '1998-08-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Permanent Vacation', false, '1987-05-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Greatest Hits', false, '2020-06-10');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Appetite for Destruction', false, '1987-02-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('G N'' R Lies', false, '1988-10-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Galore', false, '1997-05-12');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Kiss me, kiss me, kiss me', false, '1987-05-01')

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Disintegration', false, '1989-05-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Power, Corruptions & Lies', false, '1983-07-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Brotherhood', false, '1986-05-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('New Order 511', false, '2002-11-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('A Rush Of Blood', true, '2002-10-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Viva La Vida', false, '2008-05-01');

INSERT INTO "Albums" ("Title", "IsExplicit", "ReleaseDate")
VALUES ('Substance', false, '1987-12-01');

--Adding Songs

--Parachutes
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration", "AlbumId")
VALUES (5, 'Yellow', (4*60 + 26), 1);--'00:04:26' duration in seconds is 266

--Music of the Spheres
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (5, 'Let Someone Go', (4*60+1));--'00:04:01' duration in seconds is 241

--Music of the Spheres
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (10, 'My Universe', (3*60 + 46));--'00:03:46' duration in seconds is 226

--X&Y
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (4, 'Fix You', (4*60+55));--'00:04:55' duration in seconds is 295

--X&Y
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (5, 'Talk', (5*60+11));--'00:05:11' duration in seconds is 311

--A Rush of Blood to the Head
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (1, 'The Scientist', (4*60+15));--'00:04:15' duration in seconds is 255

--A Rush of Blood to the Head
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (1, 'Clocks', (5*60+7));--'00:05:07' duration in seconds is 307

--A Rush of Blood to the Head
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (1, 'In My Place', (4*60+15));--'00:04:15' duration in seconds is 255

--Viva La Vida
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (3, 'Lost!', (3*60+56));--'00:03:56' duration in seconds is 236

--Viva La Vida
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (7, 'Viva La Vida', (4*60+2));--'00:04:02' duration in seconds is 242

--X&Y
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (7, 'Speed of Sound', (4*60+47));--'00:04:47' duration in seconds is 287

--Viva La Vida
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (1, 'Life in Technicolor', (2*60+29));--'00:02:29' duration in seconds is 149

--Mylo Xykoto
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (7, 'Every Teardrop is a Waterfall', (4*60));--'00:04:00' duration in seconds is 240

--Mylo Xykoto
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (11, 'Don''t Let It Break Your Heart', (3*60*54));--'00:03:54' duration in seconds is 234

--Get A Grip 1993
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (9, 'Cryin''', (5*60+8));--'00:05:08' duration in seconds is 308

--Get A Grip 1993
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (11, 'Crazy', (5*60+16));--'00:05:16' duration in seconds is 316

--Permanent Vacation 1987
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (5, 'Dude Looks Like A Lady', (4*60+25));--'00:04:25' duration in seconds is 265

--Permanent Vacation 1987
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (18, 'Angel', (5*60+8));--'00:05:08' duration in seconds is 308

--Appetite for Destruction 1987
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (1, 'Welcome to the Jungle', (5*60+3));--'00:05:03' duration in seconds is 303

--Appetite for Destruction 1987
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (9, 'Sweet Child O'' Mine', (5*60+56));--'00:05:56' duration in seconds is 356

--Appetite for Destruction 1987
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (6, 'Paradise City', (6*60+45));--'00:06:45' duration in seconds is 405

--G N' R Lies 1988
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (1, 'Patience', (5*60));--'00:05:00' duration in seconds is 300

--G N' R Lies 1988
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (7, 'You Could Be Mine', (4*60+55));--'00:04:55' duration in seconds is 295

--Galore 1997
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (2, 'Catch', (2*60+45));--'00:02:45' duration in seconds is 165

--Galore 1997
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (8, 'Pictures of You', (4*60+48));--'00:04:48' duration in seconds is 288

--Galore 1997
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (3, 'Just Like Heaven', (3*60+32));--'00:03:32' duration in seconds is 212

--Galore 1997
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (5, 'Lullaby', (4*60+10));--'00:04:10' Duration in seconds is 250

--Galore 1997
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (6, 'Fascination Street', (4*60+20));--'00:04:20' duration in seconds is 260

--Galore 1997
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES (7, 'Love Song', (3*60+28));--'00:03:28' duration in seconds is 208

--Galore 1997
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES(10, 'Close to Me', (4*60+21));--'00:04:21' duration in seconds is 261

--Galore 1997
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES(13, 'A Letter to Elise', (5*60+11));--'00:05:11' duration in seconds is 311

--Power of Corruption and Lies 1983
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES(1, 'Age of Consent', (5*60+15));--'00:05:15' duration in seconds is 315

--Substance 1987
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES(3, 'Temptation', (6*60+59));--'00:06:59' duration in seconds is 419

--Substance 1987
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES(4, 'Blue Monday', (7*60+29));--'00:07:29' duration in seconds is 449

--Substance 1987
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES(11, 'Bizarre Love Triangle', (6*60+42));--'00:06:42' duration in seconds is 402

--Substance 1987
INSERT INTO "Songs" ("TrackNumber", "Title", "Duration")
VALUES(12, 'True Faith', (5*60+55));--'00:05:55' duration in seconds is 355

--Let a band go
UPDATE "Bands" SET "IsSigned" = false WHERE "Name" = 'The Killers';

--Re-sign a band
UPDATE "Bands" SET "IsSigned" = true WHERE "Name" = 'The Killers';


--Previous homework

--Given a band name view all their albums
SELECT "Title", "IsExplicit", "ReleaseDate" FROM "ALBUM"
JOIN "Bands" ON "BandId"."Id" = "Album"."BandId";

--View all Albums and their associated songs ordered by release date
SELECT * FROM "Songs" JOIN "Album" ON "AlbumId" = "Song"."AlbumId" ORDER BY "ReleaseDate" DESC;

--View all bands that are signed
SELECT * FROM "Bands" WHERE "IsSigned" = true;

--View all bands that are not signed
SELECT * FROM "Bands" WHERE "IsSigned" = false;
