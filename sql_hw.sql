-- CREATE DATABASE url_shortener_johnny_lamb

-- \connect url_shortener_johnny_lamb;

CREATE TABLE urls (
    id SERIAL PRIMARY KEY,
    original_url text,
    count INTEGER DEFAULT 0
);

INSERT INTO urls (original_url, count) VALUES
('www.google.com', 1),
('www.wikipedia.com', 2),
('www.linkedin.com', 3),
('www.facebook.com', 5),
('www.twitter.com', 8);

SELECT * FROM urls;

SELECT original_url FROM urls;

SELECT * FROM urls WHERE original_url='www.google.com';

SELECT * FROM urls WHERE id=2;

UPDATE urls SET count = 10 WHERE id = 1;

-- DELETE FROM urls WHERE original_url='www.google.com';

DELETE FROM urls WHERE id=2;

INSERT INTO urls (original_url,count) VALUES('wsfsdfsdf',123123);

SELECT * FROM urls;

SELECT * FROM urls ORDER BY id;

DROP TABLE urls;
