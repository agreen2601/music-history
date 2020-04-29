-- 1
SELECT * FROM Genre;

-- 2
INSERT INTO Artist (ArtistName, YearEstablished)
VALUES ('Curtis Mayfield', 1970);

-- 3
INSERT INTO Album (Title, ReleaseDate, AlbumLength, LABEL, ArtistId)
VALUES ("Flashback", 1970, 2000, "Curtis's Label", 28);

-- 4
INSERT INTO Song (Title, SongLength, ReleaseDate, ArtistId, AlbumId)
VALUES ("Pusherman", 200, 1970, 28, 23);

INSERT INTO Song (Title, SongLength, ReleaseDate, ArtistId, AlbumId)
VALUES ("Superfly", 250, 1970, 28, 23);

INSERT INTO Song (Title, SongLength, ReleaseDate, ArtistId, AlbumId)
VALUES ("Freddie's Dead", 200, 1970, 28, 23);

-- 5
SELECT s.Title, a.Title, ar.ArtistName
FROM Song s
LEFT JOIN Album a on s.AlbumId = a.AlbumId
LEFT JOIN Artist ar on s.ArtistId = ar.ArtistId
WHERE ArtistName = "Curtis Mayfield";

-- 6
SELECT COUNT(s.Title), a.Title
FROM Song s
JOIN Album a on s.AlbumId = a.AlbumId
GROUP BY(s.AlbumId);

-- 7
SELECT COUNT(s.Title), a.ArtistName
FROM Song s
JOIN Artist a on s.ArtistId = a.ArtistId
GROUP BY(s.ArtistId);

-- 8
SELECT COUNT(s.Title), g.Label
FROM Song s
JOIN Genre g on s.GenreId = g.GenreId
GROUP BY(s.GenreId);

-- 9
SELECT MAX(a.AlbumLength), a.Title
FROM Album a;

-- 10
SELECT MAX(s.SongLength), s.Title
FROM Song s;

-- 11
SELECT MAX(s.SongLength), s.Title, a.Title
FROM Song s
JOIN Album a on s.AlbumId = a.AlbumId;
