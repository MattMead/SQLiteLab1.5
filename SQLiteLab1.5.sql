--1
SELECT MAX(total)
FROM Invoice;

--2
SELECT total
FROM Invoice
ORDER BY total DESC
LIMIT 1;

--3
SELECT MediaType.name, COUNT(*) as Total
FROM Track, MediaType
WHERE Track.MediaTypeID = MediaType.MediaTypeId
GROUP BY MediaType.name;

--4
SELECT MediaType.name, COUNT(*) as Total
FROM Track, MediaType
WHERE Track.MediaTypeID = MediaType.MediaTypeId
GROUP BY MediaType.name
ORDER BY Total DESC;

--5
SELECT MediaType.name, COUNT(*) as Total
FROM Track, MediaType
WHERE Track.MediaTypeID = MediaType.MediaTypeId
GROUP BY MediaType.name
HAVING Total > 200
ORDER BY Total DESC;

--6
SELECT COUNT(*) TotalTracks, COUNT(DISTINCT Artist.Name) TotalArtists
FROM Track, Album, Artist
WHERE Track.AlbumID = Album.AlbumID
AND Album.ArtistId = Artist.ArtistId
AND Artist.Name LIKE 'A%';

--7 Not sure what to do here
SELECT FirstName||" "|| LastName FullName, BirthDate
FROM Employee;


