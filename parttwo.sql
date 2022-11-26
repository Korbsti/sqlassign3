# Jared Thompson
# Lakehead ID: 1196652
# Georgian ID:
#
# Ushno Roylee
# Lakehead ID: 1183460
# Georgian ID: 200550726
# Create the database
CREATE DATABASE assignmentthreepartb;
# Use the database
USE assignmentthreepartb;

# Create the table of personal_information with a primary key of auto increments whenever data is inputted inside of it
# And set the engine to INNODB
# And sset the variables data types to their proper types for proper optimization
CREATE TABLE personal_information (
    userid INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    street_address VARCHAR(60),
    city VARCHAR(50),
    province VARCHAR(2),
    postal_code VARCHAR(7),
    PRIMARY KEY (userid)
) ENGINE=InnoDB;

# Insert values into personal_information with their respectivie types
INSERT INTO personal_information (first_name, last_name, street_address, city, province, postal_code) VALUES
    ('Rosa','Ruffner','3846 St. Paul Street','St Catharines','ON','L2S 3A1'),
    ('Jack','Bradbury','867 rue des Églises Est', 'Ste Cecile De Masham','QC','J0X 2W0'),
    ('Eleanore', 'Sanders', '1145 47th Avenue', 'Grassland', 'AB', 'T0A 1V0');

# Create the table if donation_information
# Have a foreign key ID of userid which corresponds to personal_information
# and then list the proper data types
CREATE TABLE donation_information (
    userid INT NOT NULL,
    FOREIGN KEY (userid) REFERENCES personal_information(userid),
    donation_date DATE,
    amount DECIMAL(6, 2),
    notes VARCHAR(100),
    keep_confidential BOOLEAN
    
)ENGINE=InnoDB;

# Create the table if fundraising
# then have a primary key for campaign_id
# This is to be used to refrence it from other tables
CREATE TABLE fundraising  (
    campaign_id INT NOT NULL AUTO_INCREMENT,
    campaign_name VARCHAR(25),
    descr VARCHAR(50),
    PRIMARY KEY (campaign_id)
)ENGINE=InnoDB;

# Insert data into fundraising about all the types of campaigns, their names and the descriptions of the campaigns
INSERT INTO fundraising (campaign_name, descr) VALUES
    ('Keep It Wild' ,  'Habitat conservation in Canada’s boreal'),
    ('Nerdy about Nature' ,  'Citizen science training and outreach program'),
    ('Ripples of hope' ,  'Stream restoration'),
    ('Seeds of change' ,  'Tree planting');
    
# Create the table if payment_information
# Have a foreign key ID of userid which corresponds to personal_information
# and then list the proper data types
CREATE TABLE payment_information (
    userid INT NOT NULL,
    FOREIGN KEY (userid) REFERENCES personal_information(userid),
    credit_card_type VARCHAR(15),
    card_number VARCHAR(20),
    expiry_date VARCHAR(20),
    cvv INT(3)
)ENGINE=InnoDB;

# Create the table if contact_information
# Have a foreign key ID of userid which corresponds to personal_information
# and then list the proper data types
CREATE TABLE contact_information(
    userid INT NOT NULL,
    FOREIGN KEY (userid) REFERENCES personal_information(userid),    email VARCHAR(40),
    phone VARCHAR(13),
    mailing_signup BOOLEAN
)ENGINE=InnoDB;
# Create a table to correspond the tables fundraising and personal_information as well as the allocation amount that was specified
CREATE TABLE donors_campaigns(
    userid INT NOT NULL,
    campaign_id INT NOT NULL,
    allocation INT(3),
    
    PRIMARY KEY (userid, campaign_id)
)ENGINE=InnoDB;

ALTER TABLE donors_campaigns
ADD FOREIGN KEY (userid) REFERENCES personal_information(userid),
ADD FOREIGN KEY (campaign_id) REFERENCES fundraising(campaign_id);    

# Insert payment information with corresponding userid's that link up to personal_information

INSERT INTO payment_information (userid, credit_card_type, card_number, expiry_date, cvv) VALUES
    (1, 'VISA', '4532462633596383', '01/2025', 672),
    (2, 'MasterCard', '5477635202058042', '03/2024', 622),
    (3, 'VISA', '4916449184987034', '08/2024', 373);


# Insert donation information with corresponding userid's that link up to personal_information
INSERT INTO donation_information (userid, donation_date, amount, notes, keep_confidential) VALUES
        (1, '2022-08-14', 1000.00,'Please see ensure to apply this donation towards the campaigns as indicated below. Thanks! - Rosa',1),
        (2, '2022-07-01', 200.20, 'Keep up the good work!!', 0),
        (3, '2022-09-15', 50.00, '' ,0);

# Insert contact information with corresponding userid's that link up to personal_information
INSERT INTO contact_information (userid, email, phone, mailing_signup) VALUES
    (1, 'RoseMRuffner@pookmail.com','905-401-7824', false),
    (2, 'JackABradbury@spambob.com','819-456-6014', true),
    (3, 'EleanoreRSanders@spambob.com', '780-525-6148',true);
    

# Input values into donors_campaigns which corresponds with userid and campaign_id
# and their values which link up to fundraising and personal_information
INSERT INTO donors_campaigns (userid, campaign_id, allocation) VALUES
    (1, 1, 50),
    (1, 2, 50),
    (2, 1, 100),
    (3, 1, 25),
    (3, 2, 25),
    (3, 3, 25),
    (3, 4, 25);
