ALTER TABLE manhwaDataset
Drop COLUMN F18,F19,F20, F21

SELECT *
FROM manhwaDataset


--to run the query for the completed manhwas under 100 chapters

SELECT Title,Genres, Chapters, Publish_Time
FROM manhwaDataset
WHERE Chapters <= 100 AND status = 'Finished'
AND Chapters != 0



SELECT a.Title,a.Genres,a.Score,a.authors
FROM manhwaDataset AS a
WHERE EXISTS (
      SELECT 1
        FROM manhwaDataset b
        WHERE a.authors = b.authors
          AND a.title <> b.title)

