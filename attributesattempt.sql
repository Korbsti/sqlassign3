ALTER TABLE my_contacts
ADD COLUMN (
	attribute1 VARCHAR(20),
    attribute2 VARCHAR(20),
    attribute3 VARCHAR(20)
);

UPDATE my_contacts SET
attribute1 = SUBSTRING_INDEX(attributes, ';',1),
attributes = SUBSTR(attributes, LENGTH(attribute1)+3)
WHERE LENGTH (attributes) > 0;

UPDATE my_contacts SET
attribute2 = SUBSTRING_INDEX(attributes, ';',1),
attributes = SUBSTR(attributes, LENGTH(attribute2)+3)
WHERE LENGTH (attributes) > 0;

UPDATE my_contacts SET
attribute3 = SUBSTRING_INDEX(attributes, ';',1),
attributes = SUBSTR(attributes, LENGTH(attribute3)+3)
WHERE LENGTH (attributes) > 0;

ALTER TABLE my_contacts
DROP COLUMN attributes;

CREATE TABLE attributes AS
		SELECT attribute1 AS attribute
		FROM my_contacts
		WHERE attribute1 IS NOT NULL
    UNION
		SELECT attribute2 AS attribute
		FROM my_contacts
		WHERE attribute2 IS NOT NULL
	UNION
		SELECT attribute3 AS attribute
		FROM my_contacts
		WHERE attribute3 IS NOT NULL
ORDER BY attribute;

ALTER TABLE attributes
ADD COLUMN ID INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (ID);

ALTER TABLE my_contacts
ADD COLUMN ID INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (ID);

CREATE TABLE contact_attributes (
    attributes_id INT NOT NULL,
    my_contacts_id INT NOT NULL,
    PRIMARY KEY (attributes_id,my_contacts_id),
    FOREIGN KEY (attributes_id) REFERENCES attributes(ID),
    FOREIGN KEY (my_contacts_id) REFERENCES my_contacts(ID)
    );
    
INSERT INTO contact_attributes (attributes_id)
SELECT ID FROM attributes;

INSERT INTO contact_attributes (contact_id)
SELECT ID FROM my_contacts;



    


