-- Full build: table, data, views and 75 analysis queries
DROP TABLE IF EXISTS smoking_survey;
CREATE TABLE IF NOT EXISTS smoking_survey (
    "respondent_id" INTEGER PRIMARY KEY,
    "gender" TEXT,
    "age" INTEGER,
    "marital_status" TEXT,
    "highest_qualification" TEXT,
    "nationality" TEXT,
    "ethnicity" TEXT,
    "gross_income" TEXT,
    "region" TEXT,
    "smoke" TEXT,
    "amt_weekends" REAL,
    "amt_weekdays" REAL,
    "type" TEXT,
    "avg_daily_cigarettes" REAL,
    "estimated_weekly_cigarettes" REAL,
    "age_group" TEXT,
    "income_band_order" INTEGER
);

BEGIN TRANSACTION;
INSERT INTO smoking_survey VALUES (1, 'Male', '38', 'Divorced', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (2, 'Female', '42', 'Single', 'No Qualification', 'British', 'White', 'Under 2,600', 'The North', 'Yes', 12.0, 12.0, 'Packets', 12.0, 84.0, '35-44', '1');
INSERT INTO smoking_survey VALUES (3, 'Male', '40', 'Married', 'Degree', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (4, 'Female', '40', 'Married', 'Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (5, 'Female', '39', 'Married', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (6, 'Female', '37', 'Married', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (7, 'Male', '53', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'The North', 'Yes', 6.0, 6.0, 'Packets', 6.0, 42.0, '45-54', '8');
INSERT INTO smoking_survey VALUES (8, 'Male', '44', 'Single', 'Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (9, 'Male', '40', 'Single', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 8.0, 8.0, 'Hand-Rolled', 8.0, 56.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (10, 'Female', '41', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 15.0, 12.0, 'Packets', 13.5, 90.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (11, 'Male', '72', 'Widowed', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (12, 'Male', '49', 'Married', 'No Qualification', 'British', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '9');
INSERT INTO smoking_survey VALUES (13, 'Male', '29', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (14, 'Female', '79', 'Widowed', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (15, 'Male', '25', 'Single', 'Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (16, 'Female', '27', 'Single', 'Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (17, 'Female', '30', 'Single', 'Degree', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (18, 'Male', '47', 'Divorced', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (19, 'Female', '69', 'Single', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (20, 'Male', '55', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (21, 'Female', '34', 'Married', 'GCSE/CSE', 'British', 'White', '2,600 to 5,200', 'The North', 'Yes', 6.0, 12.0, 'Packets', 9.0, 72.0, '25-34', '2');
INSERT INTO smoking_survey VALUES (22, 'Female', '36', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 5.0, 2.0, 'Packets', 3.5, 20.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (23, 'Female', '56', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '55-64', '2');
INSERT INTO smoking_survey VALUES (24, 'Male', '71', 'Divorced', 'No Qualification', 'English', 'White', 'Unknown', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (25, 'Female', '38', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (26, 'Female', '79', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (27, 'Female', '58', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 25.0, 20.0, 'Packets', 22.5, 150.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (28, 'Female', '69', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (29, 'Male', '83', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (30, 'Female', '73', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (31, 'Female', '42', 'Married', 'GCSE/O Level', 'British', 'White', 'Refused', 'The North', 'Yes', 40.0, 15.0, 'Packets', 27.5, 155.0, '35-44', '9');
INSERT INTO smoking_survey VALUES (32, 'Female', '31', 'Married', 'GCSE/CSE', 'English', 'White', 'Under 2,600', 'The North', 'Yes', 15.0, 15.0, 'Both/Mainly Packets', 15.0, 105.0, '25-34', '1');
INSERT INTO smoking_survey VALUES (33, 'Male', '26', 'Single', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (34, 'Female', '27', 'Separated', 'Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (35, 'Female', '57', 'Married', 'Higher/Sub Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (36, 'Female', '30', 'Married', 'ONC/BTEC', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (37, 'Female', '22', 'Single', 'A Levels', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (38, 'Female', '78', 'Widowed', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '65+', '1');
INSERT INTO smoking_survey VALUES (39, 'Female', '49', 'Married', 'ONC/BTEC', 'English', 'Mixed', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (40, 'Male', '74', 'Married', 'Other/Sub Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (41, 'Male', '85', 'Widowed', 'Degree', 'Scottish', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (42, 'Male', '75', 'Married', 'Other/Sub Degree', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (43, 'Female', '80', 'Widowed', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (44, 'Female', '37', 'Married', 'Degree', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (45, 'Female', '33', 'Single', 'Degree', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (46, 'Male', '41', 'Divorced', 'A Levels', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (47, 'Female', '81', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (48, 'Female', '76', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 6.0, 6.0, 'Packets', 6.0, 42.0, '65+', '2');
INSERT INTO smoking_survey VALUES (49, 'Female', '58', 'Married', 'A Levels', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (50, 'Male', '59', 'Married', 'Other/Sub Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'Yes', 25.0, 25.0, 'Packets', 25.0, 175.0, '55-64', '5');
INSERT INTO smoking_survey VALUES (51, 'Female', '40', 'Divorced', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 4.0, 4.0, 'Packets', 4.0, 28.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (52, 'Female', '54', 'Divorced', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (53, 'Male', '49', 'Married', 'Degree', 'Scottish', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (54, 'Female', '79', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (55, 'Male', '28', 'Married', 'Other/Sub Degree', 'British', 'White', '20,800 to 28,600', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (56, 'Male', '44', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (57, 'Female', '42', 'Single', 'GCSE/CSE', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (58, 'Female', '36', 'Single', 'GCSE/CSE', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (59, 'Male', '89', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (60, 'Female', '64', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (61, 'Female', '76', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (62, 'Female', '76', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (63, 'Female', '61', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (64, 'Female', '81', 'Widowed', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (65, 'Female', '20', 'Single', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '18-24', '2');
INSERT INTO smoking_survey VALUES (66, 'Female', '82', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (67, 'Female', '23', 'Single', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'The North', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (68, 'Male', '41', 'Married', 'GCSE/O Level', 'English', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (69, 'Female', '31', 'Single', 'A Levels', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (70, 'Female', '44', 'Married', 'A Levels', 'English', 'White', '20,800 to 28,600', 'The North', 'Yes', 5.0, 0.0, 'Packets', 2.5, 10.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (71, 'Female', '42', 'Married', 'Degree', 'Scottish', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (72, 'Male', '67', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '65+', '3');
INSERT INTO smoking_survey VALUES (73, 'Male', '53', 'Married', 'Degree', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (74, 'Male', '76', 'Married', 'No Qualification', 'English', 'Black', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (75, 'Male', '40', 'Married', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 30.0, 30.0, 'Hand-Rolled', 30.0, 210.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (76, 'Male', '44', 'Married', 'A Levels', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (77, 'Female', '31', 'Separated', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (78, 'Male', '43', 'Divorced', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (79, 'Female', '36', 'Separated', 'A Levels', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (80, 'Female', '34', 'Divorced', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (81, 'Female', '18', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 10.0, 3.0, 'Packets', 6.5, 35.0, '18-24', '2');
INSERT INTO smoking_survey VALUES (82, 'Male', '56', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (83, 'Female', '73', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (84, 'Female', '22', 'Single', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '18-24', '2');
INSERT INTO smoking_survey VALUES (85, 'Female', '33', 'Single', 'GCSE/CSE', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (86, 'Male', '27', 'Single', 'ONC/BTEC', 'British', 'White', '15,600 to 20,800', 'The North', 'Yes', 10.0, 0.0, 'Packets', 5.0, 20.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (87, 'Female', '33', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (88, 'Female', '63', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (89, 'Female', '64', 'Married', 'A Levels', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (90, 'Male', '54', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (91, 'Female', '34', 'Married', 'Degree', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (92, 'Male', '78', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (93, 'Female', '54', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (94, 'Male', '56', 'Separated', 'GCSE/CSE', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (95, 'Male', '78', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (96, 'Female', '37', 'Married', 'A Levels', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (97, 'Male', '54', 'Married', 'Degree', 'British', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (98, 'Female', '40', 'Married', 'GCSE/O Level', 'British', 'White', '20,800 to 28,600', 'The North', 'Yes', 15.0, 15.0, 'Hand-Rolled', 15.0, 105.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (99, 'Female', '64', 'Divorced', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (100, 'Female', '42', 'Married', 'GCSE/O Level', 'Other', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (101, 'Female', '34', 'Married', 'Higher/Sub Degree', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (102, 'Female', '64', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (103, 'Female', '50', 'Divorced', 'Other/Sub Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (104, 'Female', '31', 'Married', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (105, 'Female', '37', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (106, 'Male', '81', 'Married', 'Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (107, 'Male', '57', 'Separated', 'No Qualification', 'Welsh', 'White', '5,200 to 10,400', 'The North', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (108, 'Female', '59', 'Married', 'Higher/Sub Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (109, 'Male', '66', 'Married', 'Degree', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (110, 'Male', '57', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (111, 'Female', '78', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (112, 'Male', '49', 'Married', 'Degree', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (113, 'Female', '62', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (114, 'Female', '17', 'Single', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (115, 'Female', '36', 'Single', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (116, 'Female', '31', 'Single', 'No Qualification', 'English', 'White', 'Refused', 'The North', 'Yes', 7.0, 7.0, 'Packets', 7.0, 49.0, '25-34', '9');
INSERT INTO smoking_survey VALUES (117, 'Female', '61', 'Married', 'Higher/Sub Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'Yes', 25.0, 25.0, 'Packets', 25.0, 175.0, '55-64', '5');
INSERT INTO smoking_survey VALUES (118, 'Male', '71', 'Widowed', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'The North', 'Yes', 40.0, 40.0, 'Packets', 40.0, 280.0, '65+', '5');
INSERT INTO smoking_survey VALUES (119, 'Female', '75', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 12.0, 12.0, 'Packets', 12.0, 84.0, '65+', '3');
INSERT INTO smoking_survey VALUES (120, 'Female', '43', 'Married', 'Higher/Sub Degree', 'English', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (121, 'Female', '68', 'Widowed', 'No Qualification', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (122, 'Female', '65', 'Widowed', 'Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (123, 'Female', '85', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (124, 'Female', '35', 'Separated', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 20.0, 20.0, 'Both/Mainly Hand-Rolled', 20.0, 140.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (125, 'Female', '52', 'Married', 'Higher/Sub Degree', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (126, 'Female', '28', 'Single', 'ONC/BTEC', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (127, 'Male', '52', 'Single', 'ONC/BTEC', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (128, 'Male', '67', 'Widowed', 'No Qualification', 'Irish', 'White', '5,200 to 10,400', 'The North', 'Yes', 25.0, 25.0, 'Hand-Rolled', 25.0, 175.0, '65+', '3');
INSERT INTO smoking_survey VALUES (129, 'Female', '35', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 30.0, 30.0, 'Both/Mainly Hand-Rolled', 30.0, 210.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (130, 'Female', '68', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (131, 'Female', '34', 'Married', 'Higher/Sub Degree', 'Other', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (132, 'Female', '57', 'Divorced', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'Yes', 20.0, 12.0, 'Hand-Rolled', 16.0, 100.0, '55-64', '2');
INSERT INTO smoking_survey VALUES (133, 'Male', '37', 'Married', 'Higher/Sub Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'Yes', 8.0, 8.0, 'Hand-Rolled', 8.0, 56.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (134, 'Female', '37', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (135, 'Male', '43', 'Divorced', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (136, 'Male', '59', 'Widowed', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (137, 'Female', '28', 'Single', 'Degree', 'Scottish', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (138, 'Female', '60', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (139, 'Male', '16', 'Single', 'GCSE/O Level', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (140, 'Male', '37', 'Single', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'Yes', 40.0, 40.0, 'Hand-Rolled', 40.0, 280.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (141, 'Male', '34', 'Married', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (142, 'Female', '73', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (143, 'Male', '24', 'Single', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (144, 'Female', '36', 'Single', 'Higher/Sub Degree', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (145, 'Male', '39', 'Separated', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 20.0, 20.0, 'Both/Mainly Packets', 20.0, 140.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (146, 'Female', '74', 'Married', 'No Qualification', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (147, 'Female', '32', 'Married', 'GCSE/CSE', 'English', 'White', 'Under 2,600', 'The North', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '25-34', '1');
INSERT INTO smoking_survey VALUES (148, 'Female', '30', 'Married', 'Degree', 'Other', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (149, 'Female', '68', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (150, 'Female', '49', 'Married', 'No Qualification', 'Refused', 'Refused', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '9');
INSERT INTO smoking_survey VALUES (151, 'Female', '47', 'Married', 'Higher/Sub Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (152, 'Male', '30', 'Single', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 30.0, 30.0, 'Hand-Rolled', 30.0, 210.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (153, 'Male', '60', 'Divorced', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 15.0, 8.0, 'Hand-Rolled', 11.5, 70.0, '55-64', '4');
INSERT INTO smoking_survey VALUES (154, 'Male', '72', 'Single', 'Other/Sub Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (155, 'Male', '73', 'Married', 'Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (156, 'Female', '48', 'Widowed', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 20.0, 4.0, 'Packets', 12.0, 60.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (157, 'Male', '53', 'Divorced', 'Degree', 'English', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (158, 'Male', '17', 'Single', 'GCSE/O Level', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (159, 'Female', '58', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (160, 'Female', '34', 'Married', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (161, 'Male', '44', 'Single', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (162, 'Male', '23', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (163, 'Male', '49', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (164, 'Male', '30', 'Married', 'Degree', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (165, 'Female', '61', 'Widowed', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (166, 'Male', '38', 'Separated', 'A Levels', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 9.0, 9.0, 'Hand-Rolled', 9.0, 63.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (167, 'Male', '30', 'Single', 'Degree', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (168, 'Female', '44', 'Married', 'A Levels', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (169, 'Male', '91', 'Widowed', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (170, 'Male', '40', 'Divorced', 'GCSE/O Level', 'British', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (171, 'Female', '63', 'Married', 'Degree', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (172, 'Female', '61', 'Divorced', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'Yes', 30.0, 30.0, 'Packets', 30.0, 210.0, '55-64', '2');
INSERT INTO smoking_survey VALUES (173, 'Female', '40', 'Married', 'Higher/Sub Degree', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (174, 'Female', '57', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'The North', 'Yes', 15.0, 15.0, 'Both/Mainly Packets', 15.0, 105.0, '55-64', '1');
INSERT INTO smoking_survey VALUES (175, 'Female', '41', 'Married', 'Degree', 'British', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (176, 'Female', '32', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 7.0, 5.0, 'Hand-Rolled', 6.0, 39.0, '25-34', '2');
INSERT INTO smoking_survey VALUES (177, 'Male', '76', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (178, 'Female', '35', 'Divorced', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 2.0, 2.0, 'Packets', 2.0, 14.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (179, 'Male', '70', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (180, 'Female', '75', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (181, 'Female', '74', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (182, 'Male', '49', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (183, 'Female', '56', 'Married', 'GCSE/O Level', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (184, 'Male', '60', 'Married', 'Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (185, 'Female', '72', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (186, 'Male', '17', 'Single', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (187, 'Female', '23', 'Single', 'Degree', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '6');
INSERT INTO smoking_survey VALUES (188, 'Male', '79', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (189, 'Female', '65', 'Separated', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (190, 'Female', '57', 'Married', 'Degree', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (191, 'Female', '37', 'Married', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (192, 'Male', '79', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (193, 'Female', '71', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (194, 'Female', '87', 'Widowed', 'No Qualification', 'Refused', 'Refused', 'Unknown', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (195, 'Male', '59', 'Married', 'Degree', 'English', 'White', '28,600 to 36,400', 'The North', 'Yes', 40.0, 40.0, 'Packets', 40.0, 280.0, '55-64', '7');
INSERT INTO smoking_survey VALUES (196, 'Male', '21', 'Single', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 20.0, 8.0, 'Packets', 14.0, 80.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (197, 'Female', '66', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (198, 'Male', '58', 'Married', 'Higher/Sub Degree', 'Welsh', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (199, 'Male', '38', 'Married', 'GCSE/O Level', 'English', 'White', 'Above 36,400', 'The North', 'Yes', 30.0, 15.0, 'Both/Mainly Packets', 22.5, 135.0, '35-44', '8');
INSERT INTO smoking_survey VALUES (200, 'Male', '61', 'Widowed', 'Other/Sub Degree', 'Scottish', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (201, 'Male', '37', 'Separated', 'Degree', 'English', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (202, 'Female', '38', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (203, 'Male', '34', 'Married', 'Degree', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (204, 'Female', '34', 'Married', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (205, 'Female', '20', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (206, 'Female', '77', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '65+', '3');
INSERT INTO smoking_survey VALUES (207, 'Female', '31', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 20.0, 15.0, 'Hand-Rolled', 17.5, 115.0, '25-34', '2');
INSERT INTO smoking_survey VALUES (208, 'Male', '28', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 2.0, 2.0, 'Packets', 2.0, 14.0, '25-34', '2');
INSERT INTO smoking_survey VALUES (209, 'Female', '36', 'Married', 'GCSE/CSE', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (210, 'Female', '16', 'Single', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'The North', 'Yes', 12.0, 12.0, 'Packets', 12.0, 84.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (211, 'Male', '42', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (212, 'Female', '47', 'Married', 'Higher/Sub Degree', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (213, 'Male', '42', 'Married', 'GCSE/CSE', 'British', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (214, 'Female', '67', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (215, 'Female', '72', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (216, 'Male', '40', 'Divorced', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 25.0, 30.0, 'Packets', 27.5, 200.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (217, 'Female', '34', 'Single', 'Degree', 'English', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (218, 'Male', '75', 'Married', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (219, 'Female', '35', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (220, 'Female', '40', 'Separated', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (221, 'Female', '46', 'Married', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (222, 'Male', '23', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '5');
INSERT INTO smoking_survey VALUES (223, 'Male', '42', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (224, 'Male', '63', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (225, 'Female', '33', 'Married', 'A Levels', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (226, 'Female', '31', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (227, 'Male', '54', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (228, 'Female', '33', 'Single', 'ONC/BTEC', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (229, 'Female', '24', 'Single', 'Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'Yes', 12.0, 8.0, 'Hand-Rolled', 10.0, 64.0, '18-24', '5');
INSERT INTO smoking_survey VALUES (230, 'Female', '80', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (231, 'Female', '77', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (232, 'Male', '51', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (233, 'Male', '16', 'Single', 'GCSE/O Level', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (234, 'Male', '27', 'Single', 'ONC/BTEC', 'English', 'White', 'Refused', 'The North', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '25-34', '9');
INSERT INTO smoking_survey VALUES (235, 'Female', '75', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (236, 'Female', '24', 'Single', 'Degree', 'Other', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (237, 'Male', '78', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 50.0, 50.0, 'Both/Mainly Packets', 50.0, 350.0, '65+', '3');
INSERT INTO smoking_survey VALUES (238, 'Female', '20', 'Single', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (239, 'Male', '18', 'Single', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (240, 'Female', '25', 'Separated', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (241, 'Female', '55', 'Separated', 'No Qualification', 'English', 'Mixed', '5,200 to 10,400', 'The North', 'Yes', 10.0, 7.0, 'Both/Mainly Hand-Rolled', 8.5, 55.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (242, 'Female', '29', 'Married', 'Higher/Sub Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 10.0, 5.0, 'Packets', 7.5, 45.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (243, 'Female', '67', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (244, 'Female', '79', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (245, 'Male', '44', 'Single', 'No Qualification', 'British', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (246, 'Male', '47', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (247, 'Female', '41', 'Divorced', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (248, 'Female', '31', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 5.0, 0.0, 'Packets', 2.5, 10.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (249, 'Male', '32', 'Married', 'Other/Sub Degree', 'Scottish', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (250, 'Female', '68', 'Widowed', 'No Qualification', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (251, 'Female', '84', 'Widowed', 'No Qualification', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (252, 'Male', '67', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (253, 'Male', '49', 'Married', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (254, 'Male', '69', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 6.0, 8.0, 'Hand-Rolled', 7.0, 52.0, '65+', '3');
INSERT INTO smoking_survey VALUES (255, 'Male', '64', 'Married', 'Higher/Sub Degree', 'English', 'White', '28,600 to 36,400', 'The North', 'Yes', 16.0, 18.0, 'Packets', 17.0, 122.0, '55-64', '7');
INSERT INTO smoking_survey VALUES (256, 'Male', '62', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (257, 'Male', '52', 'Divorced', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (258, 'Male', '45', 'Married', 'ONC/BTEC', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (259, 'Female', '28', 'Divorced', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (260, 'Female', '36', 'Single', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (261, 'Female', '73', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (262, 'Male', '48', 'Widowed', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (263, 'Male', '67', 'Widowed', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 10.0, 10.0, 'Both/Mainly Hand-Rolled', 10.0, 70.0, '65+', '4');
INSERT INTO smoking_survey VALUES (264, 'Female', '38', 'Divorced', 'GCSE/O Level', 'British', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (265, 'Female', '40', 'Divorced', 'GCSE/CSE', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 5.0, 0.0, 'Packets', 2.5, 10.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (266, 'Male', '43', 'Single', 'Other/Sub Degree', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (267, 'Female', '30', 'Single', 'Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (268, 'Female', '70', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (269, 'Female', '82', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (270, 'Female', '78', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (271, 'Male', '21', 'Single', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'The North', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (272, 'Male', '67', 'Widowed', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (273, 'Male', '16', 'Single', 'GCSE/O Level', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (274, 'Female', '21', 'Single', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 40.0, 15.0, 'Packets', 27.5, 155.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (275, 'Male', '68', 'Separated', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 8.0, 8.0, 'Packets', 8.0, 56.0, '65+', '3');
INSERT INTO smoking_survey VALUES (276, 'Male', '41', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (277, 'Male', '33', 'Single', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (278, 'Female', '28', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (279, 'Female', '75', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '65+', '2');
INSERT INTO smoking_survey VALUES (280, 'Female', '21', 'Single', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 5.0, 10.0, 'Packets', 7.5, 60.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (281, 'Female', '69', 'Divorced', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (282, 'Female', '38', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (283, 'Female', '33', 'Single', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 10.0, 4.0, 'Packets', 7.0, 40.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (284, 'Female', '47', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (285, 'Female', '44', 'Single', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 35.0, 35.0, 'Hand-Rolled', 35.0, 245.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (286, 'Female', '74', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (287, 'Female', '29', 'Married', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (288, 'Female', '23', 'Married', 'A Levels', 'Other', 'Asian', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (289, 'Female', '72', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (290, 'Female', '31', 'Widowed', 'No Qualification', 'English', 'Asian', '5,200 to 10,400', 'The North', 'Yes', 10.0, 8.0, 'Packets', 9.0, 60.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (291, 'Female', '48', 'Married', 'No Qualification', 'British', 'Asian', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (292, 'Female', '29', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (293, 'Male', '72', 'Married', 'Other/Sub Degree', 'English', 'Black', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (294, 'Female', '52', 'Married', 'No Qualification', 'English', 'White', 'Unknown', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '10');
INSERT INTO smoking_survey VALUES (295, 'Female', '68', 'Single', 'Degree', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (296, 'Male', '48', 'Married', 'Other/Sub Degree', 'British', 'Chinese', '15,600 to 20,800', 'The North', 'Yes', 40.0, 40.0, 'Both/Mainly Packets', 40.0, 280.0, '45-54', '5');
INSERT INTO smoking_survey VALUES (297, 'Female', '55', 'Married', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (298, 'Female', '23', 'Married', 'ONC/BTEC', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 7.0, 7.0, 'Packets', 7.0, 49.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (299, 'Female', '66', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (300, 'Female', '33', 'Single', 'ONC/BTEC', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (301, 'Female', '37', 'Married', 'GCSE/CSE', 'British', 'White', 'Under 2,600', 'The North', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '35-44', '1');
INSERT INTO smoking_survey VALUES (302, 'Male', '42', 'Married', 'Degree', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (303, 'Female', '46', 'Married', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (304, 'Male', '57', 'Married', 'Other/Sub Degree', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (305, 'Female', '36', 'Married', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (306, 'Female', '51', 'Married', 'GCSE/O Level', 'Scottish', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (307, 'Female', '18', 'Single', 'GCSE/O Level', 'British', 'White', 'Refused', 'The North', 'Yes', 8.0, 8.0, 'Hand-Rolled', 8.0, 56.0, '18-24', '9');
INSERT INTO smoking_survey VALUES (308, 'Female', '69', 'Married', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (309, 'Male', '30', 'Single', 'Degree', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (310, 'Male', '51', 'Married', 'Higher/Sub Degree', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (311, 'Female', '63', 'Married', 'No Qualification', 'British', 'Asian', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (312, 'Female', '31', 'Single', 'Degree', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (313, 'Male', '58', 'Single', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (314, 'Male', '50', 'Married', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'The North', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (315, 'Female', '67', 'Divorced', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '65+', '2');
INSERT INTO smoking_survey VALUES (316, 'Male', '20', 'Single', 'A Levels', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (317, 'Female', '45', 'Single', 'Degree', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (318, 'Female', '26', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (319, 'Male', '30', 'Single', 'Degree', 'British', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (320, 'Female', '43', 'Married', 'Degree', 'Other', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '9');
INSERT INTO smoking_survey VALUES (321, 'Male', '73', 'Widowed', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (322, 'Female', '52', 'Married', 'Higher/Sub Degree', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (323, 'Male', '18', 'Single', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 15.0, 10.0, 'Both/Mainly Hand-Rolled', 12.5, 80.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (324, 'Male', '52', 'Married', 'No Qualification', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (325, 'Male', '33', 'Divorced', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (326, 'Female', '56', 'Divorced', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (327, 'Female', '65', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (328, 'Female', '30', 'Single', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (329, 'Female', '40', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'Yes', 10.0, 1.0, 'Both/Mainly Hand-Rolled', 5.5, 25.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (330, 'Female', '26', 'Single', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (331, 'Male', '74', 'Single', 'No Qualification', 'Refused', 'Refused', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (332, 'Female', '44', 'Married', 'Degree', 'Welsh', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (333, 'Female', '80', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (334, 'Female', '67', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (335, 'Female', '59', 'Married', 'No Qualification', 'British', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (336, 'Female', '28', 'Single', 'Higher/Sub Degree', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (337, 'Female', '31', 'Married', 'ONC/BTEC', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (338, 'Male', '25', 'Single', 'GCSE/CSE', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (339, 'Female', '64', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (340, 'Male', '68', 'Married', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (341, 'Female', '61', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (342, 'Female', '50', 'Divorced', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (343, 'Male', '43', 'Married', 'Higher/Sub Degree', 'British', 'Chinese', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (344, 'Female', '19', 'Single', 'No Qualification', 'Other', 'Asian', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (345, 'Female', '21', 'Married', 'GCSE/O Level', 'Other', 'Asian', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (346, 'Male', '51', 'Divorced', 'Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (347, 'Male', '65', 'Single', 'Other/Sub Degree', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (348, 'Female', '50', 'Separated', 'No Qualification', 'Other', 'Asian', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (349, 'Female', '38', 'Single', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (350, 'Female', '78', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (351, 'Male', '74', 'Widowed', 'No Qualification', 'Other', 'Asian', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (352, 'Female', '22', 'Single', 'Degree', 'Other', 'Asian', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (353, 'Male', '66', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (354, 'Female', '48', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (355, 'Female', '59', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (356, 'Female', '69', 'Widowed', 'No Qualification', 'English', 'White', 'Unknown', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (357, 'Female', '76', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '65+', '3');
INSERT INTO smoking_survey VALUES (358, 'Female', '21', 'Single', 'ONC/BTEC', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (359, 'Female', '47', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (360, 'Female', '77', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (361, 'Female', '25', 'Single', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (362, 'Female', '71', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (363, 'Female', '24', 'Single', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'The North', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '18-24', '2');
INSERT INTO smoking_survey VALUES (364, 'Female', '90', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (365, 'Female', '41', 'Divorced', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'The North', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (366, 'Female', '69', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (367, 'Female', '35', 'Married', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (368, 'Female', '32', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 12.0, 7.0, 'Packets', 9.5, 59.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (369, 'Female', '48', 'Single', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (370, 'Female', '34', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (371, 'Female', '28', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'Yes', 10.0, 4.0, 'Packets', 7.0, 40.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (372, 'Male', '66', 'Married', 'No Qualification', 'English', 'White', 'Unknown', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (373, 'Male', '56', 'Married', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (374, 'Male', '51', 'Married', 'Other/Sub Degree', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (375, 'Female', '63', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (376, 'Male', '44', 'Married', 'Degree', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (377, 'Female', '45', 'Married', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (378, 'Male', '55', 'Married', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '55-64', '4');
INSERT INTO smoking_survey VALUES (379, 'Female', '55', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (380, 'Female', '55', 'Married', 'A Levels', 'Scottish', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (381, 'Female', '57', 'Married', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (382, 'Male', '76', 'Married', 'A Levels', 'Scottish', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (383, 'Female', '59', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (384, 'Female', '46', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (385, 'Female', '56', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (386, 'Male', '67', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (387, 'Female', '73', 'Single', 'Other/Sub Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (388, 'Female', '82', 'Widowed', 'No Qualification', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (389, 'Male', '75', 'Married', 'ONC/BTEC', 'English', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (390, 'Female', '41', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (391, 'Female', '40', 'Married', 'A Levels', 'British', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (392, 'Male', '37', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (393, 'Male', '53', 'Married', 'ONC/BTEC', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (394, 'Female', '35', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (395, 'Female', '39', 'Married', 'GCSE/O Level', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (396, 'Female', '31', 'Separated', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (397, 'Male', '38', 'Married', 'ONC/BTEC', 'British', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (398, 'Female', '34', 'Divorced', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'Yes', 25.0, 10.0, 'Packets', 17.5, 100.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (399, 'Female', '36', 'Married', 'A Levels', 'English', 'White', '10,400 to 15,600', 'The North', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (400, 'Male', '31', 'Single', 'Degree', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (401, 'Female', '31', 'Single', 'GCSE/CSE', 'British', 'White', 'Under 2,600', 'The North', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '25-34', '1');
INSERT INTO smoking_survey VALUES (402, 'Male', '35', 'Married', 'Degree', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (403, 'Male', '42', 'Married', 'No Qualification', 'British', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (404, 'Male', '30', 'Single', 'GCSE/CSE', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (405, 'Female', '39', 'Divorced', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (406, 'Female', '47', 'Married', 'GCSE/O Level', 'Scottish', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (407, 'Male', '38', 'Married', 'Higher/Sub Degree', 'English', 'White', '20,800 to 28,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (408, 'Female', '29', 'Divorced', 'A Levels', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (409, 'Male', '75', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (410, 'Female', '47', 'Married', 'Higher/Sub Degree', 'British', 'White', 'Refused', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '9');
INSERT INTO smoking_survey VALUES (411, 'Male', '55', 'Married', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (412, 'Male', '42', 'Married', 'Higher/Sub Degree', 'Other', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (413, 'Female', '39', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (414, 'Male', '64', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (415, 'Female', '84', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (416, 'Female', '49', 'Married', 'Higher/Sub Degree', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (417, 'Male', '24', 'Single', 'Higher/Sub Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (418, 'Male', '38', 'Single', 'GCSE/O Level', 'Scottish', 'White', '10,400 to 15,600', 'The North', 'Yes', 30.0, 30.0, 'Hand-Rolled', 30.0, 210.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (419, 'Female', '45', 'Married', 'Degree', 'Other', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (420, 'Female', '47', 'Divorced', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (421, 'Male', '37', 'Divorced', 'Higher/Sub Degree', 'English', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (422, 'Male', '59', 'Married', 'Higher/Sub Degree', 'English', 'White', '5,200 to 10,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (423, 'Male', '25', 'Single', 'Degree', 'Other', 'White', '28,600 to 36,400', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (424, 'Male', '56', 'Married', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (425, 'Female', '71', 'Divorced', 'GCSE/CSE', 'British', 'White', '2,600 to 5,200', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (426, 'Male', '81', 'Widowed', 'Higher/Sub Degree', 'English', 'White', '10,400 to 15,600', 'The North', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (427, 'Male', '55', 'Married', 'A Levels', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (428, 'Male', '42', 'Married', 'GCSE/CSE', 'English', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (429, 'Male', '73', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (430, 'Male', '43', 'Married', 'A Levels', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (431, 'Female', '57', 'Divorced', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '55-64', '4');
INSERT INTO smoking_survey VALUES (432, 'Female', '47', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (433, 'Female', '29', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (434, 'Female', '30', 'Widowed', 'GCSE/CSE', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (435, 'Male', '58', 'Married', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 30.0, 25.0, 'Packets', 27.5, 185.0, '55-64', '5');
INSERT INTO smoking_survey VALUES (436, 'Female', '58', 'Married', 'Degree', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (437, 'Male', '70', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (438, 'Male', '18', 'Single', 'A Levels', 'British', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (439, 'Female', '45', 'Single', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (440, 'Male', '37', 'Single', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 15.0, 10.0, 'Both/Mainly Packets', 12.5, 80.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (441, 'Female', '44', 'Separated', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (442, 'Male', '46', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (443, 'Male', '29', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (444, 'Male', '50', 'Married', 'GCSE/O Level', 'English', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (445, 'Female', '51', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (446, 'Male', '80', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (447, 'Female', '85', 'Married', 'A Levels', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (448, 'Female', '49', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (449, 'Male', '52', 'Married', 'No Qualification', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (450, 'Female', '58', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (451, 'Female', '49', 'Married', 'Degree', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (452, 'Male', '39', 'Single', 'Degree', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (453, 'Female', '53', 'Married', 'Degree', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 15.0, 15.0, 'Both/Mainly Hand-Rolled', 15.0, 105.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (454, 'Female', '71', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (455, 'Male', '29', 'Single', 'Higher/Sub Degree', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (456, 'Female', '66', 'Married', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (457, 'Male', '75', 'Married', 'Other/Sub Degree', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (458, 'Female', '45', 'Divorced', 'Degree', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (459, 'Female', '69', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (460, 'Female', '49', 'Divorced', 'Degree', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (461, 'Male', '63', 'Married', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (462, 'Male', '61', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (463, 'Female', '55', 'Married', 'Higher/Sub Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (464, 'Male', '57', 'Married', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (465, 'Female', '60', 'Married', 'Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (466, 'Male', '58', 'Married', 'GCSE/O Level', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (467, 'Female', '76', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 10.0, 6.0, 'Packets', 8.0, 50.0, '65+', '3');
INSERT INTO smoking_survey VALUES (468, 'Male', '29', 'Single', 'Higher/Sub Degree', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (469, 'Female', '50', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (470, 'Male', '40', 'Married', 'GCSE/O Level', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '9');
INSERT INTO smoking_survey VALUES (471, 'Female', '34', 'Married', 'Higher/Sub Degree', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (472, 'Female', '77', 'Widowed', 'No Qualification', 'Irish', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (473, 'Male', '47', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (474, 'Female', '68', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (475, 'Male', '31', 'Married', 'Higher/Sub Degree', 'English', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (476, 'Male', '41', 'Married', 'Degree', 'British', 'Asian', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (477, 'Female', '55', 'Married', 'Higher/Sub Degree', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 25.0, 15.0, 'Packets', 20.0, 125.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (478, 'Male', '66', 'Married', 'A Levels', 'British', 'Asian', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (479, 'Female', '80', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (480, 'Female', '45', 'Married', 'Degree', 'British', 'Asian', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (481, 'Male', '63', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (482, 'Male', '62', 'Married', 'Degree', 'Scottish', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (483, 'Female', '49', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (484, 'Male', '33', 'Married', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (485, 'Female', '16', 'Single', 'GCSE/O Level', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (486, 'Male', '58', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (487, 'Female', '33', 'Separated', 'ONC/BTEC', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (488, 'Male', '65', 'Married', 'Degree', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '7');
INSERT INTO smoking_survey VALUES (489, 'Female', '39', 'Single', 'Degree', 'Irish', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (490, 'Female', '57', 'Married', 'Higher/Sub Degree', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 6.0, 4.0, 'Packets', 5.0, 32.0, '55-64', '5');
INSERT INTO smoking_survey VALUES (491, 'Female', '31', 'Married', 'A Levels', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (492, 'Male', '79', 'Married', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (493, 'Female', '16', 'Single', 'GCSE/CSE', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'Yes', 2.0, 2.0, 'Packets', 2.0, 14.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (494, 'Female', '54', 'Married', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (495, 'Female', '37', 'Divorced', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 12.0, 12.0, 'Packets', 12.0, 84.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (496, 'Female', '87', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (497, 'Male', '32', 'Single', 'Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (498, 'Male', '72', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (499, 'Male', '20', 'Married', 'GCSE/O Level', 'English', 'Mixed', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 30.0, 15.0, 'Hand-Rolled', 22.5, 135.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (500, 'Male', '77', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (501, 'Female', '63', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (502, 'Male', '56', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (503, 'Male', '34', 'Single', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 10.0, 5.0, 'Hand-Rolled', 7.5, 45.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (504, 'Female', '24', 'Married', 'A Levels', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '6');
INSERT INTO smoking_survey VALUES (505, 'Female', '42', 'Single', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 10.0, 3.0, 'Hand-Rolled', 6.5, 35.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (506, 'Male', '71', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (507, 'Female', '48', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (508, 'Male', '38', 'Separated', 'ONC/BTEC', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (509, 'Female', '55', 'Divorced', 'A Levels', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (510, 'Male', '50', 'Married', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (511, 'Male', '30', 'Single', 'ONC/BTEC', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (512, 'Female', '72', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (513, 'Male', '59', 'Married', 'Other/Sub Degree', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (514, 'Female', '68', 'Married', 'Higher/Sub Degree', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (515, 'Male', '48', 'Married', 'No Qualification', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (516, 'Male', '42', 'Widowed', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (517, 'Female', '72', 'Divorced', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (518, 'Male', '54', 'Married', 'Other/Sub Degree', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '9');
INSERT INTO smoking_survey VALUES (519, 'Female', '53', 'Divorced', 'GCSE/O Level', 'English', 'White', 'Unknown', 'Midlands & East Anglia', 'Yes', 7.0, 12.0, 'Packets', 9.5, 74.0, '45-54', '10');
INSERT INTO smoking_survey VALUES (520, 'Female', '86', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (521, 'Female', '57', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 20.0, 15.0, 'Both/Mainly Packets', 17.5, 115.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (522, 'Female', '30', 'Single', 'Degree', 'British', 'Chinese', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (523, 'Male', '35', 'Single', 'No Qualification', 'Other', 'White', 'Refused', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '35-44', '9');
INSERT INTO smoking_survey VALUES (524, 'Female', '25', 'Separated', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (525, 'Male', '67', 'Married', 'Other/Sub Degree', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (526, 'Female', '33', 'Divorced', 'GCSE/O Level', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (527, 'Female', '51', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 15.0, 3.0, 'Packets', 9.0, 45.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (528, 'Female', '54', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (529, 'Male', '86', 'Married', 'No Qualification', 'English', 'White', 'Unknown', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (530, 'Female', '69', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (531, 'Female', '23', 'Married', 'Higher/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (532, 'Female', '33', 'Single', 'Degree', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 18.0, 12.0, 'Packets', 15.0, 96.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (533, 'Male', '79', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (534, 'Male', '21', 'Single', 'A Levels', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (535, 'Female', '37', 'Divorced', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (536, 'Male', '40', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Both/Mainly Packets', 20.0, 140.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (537, 'Male', '79', 'Single', 'No Qualification', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (538, 'Female', '34', 'Divorced', 'Higher/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (539, 'Male', '28', 'Single', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (540, 'Female', '44', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (541, 'Female', '64', 'Married', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (542, 'Female', '51', 'Separated', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (543, 'Male', '21', 'Single', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (544, 'Male', '40', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'Yes', 1.0, 2.0, 'Hand-Rolled', 1.5, 12.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (545, 'Female', '42', 'Single', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (546, 'Female', '47', 'Divorced', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (547, 'Male', '73', 'Widowed', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (548, 'Female', '18', 'Single', 'Higher/Sub Degree', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '18-24', '2');
INSERT INTO smoking_survey VALUES (549, 'Male', '24', 'Single', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (550, 'Female', '69', 'Widowed', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (551, 'Female', '61', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (552, 'Female', '83', 'Single', 'No Qualification', 'Refused', 'Refused', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (553, 'Female', '80', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (554, 'Female', '80', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (555, 'Female', '26', 'Single', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (556, 'Female', '34', 'Separated', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (557, 'Male', '34', 'Married', 'Degree', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (558, 'Female', '39', 'Single', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 10.0, 7.0, 'Hand-Rolled', 8.5, 55.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (559, 'Male', '33', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 40.0, 20.0, 'Packets', 30.0, 180.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (560, 'Male', '36', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (561, 'Female', '39', 'Divorced', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (562, 'Male', '35', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 10.0, 7.0, 'Hand-Rolled', 8.5, 55.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (563, 'Female', '89', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (564, 'Female', '23', 'Married', 'Degree', 'British', 'Asian', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (565, 'Female', '32', 'Divorced', 'GCSE/O Level', 'English', 'Asian', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (566, 'Male', '32', 'Married', 'No Qualification', 'Other', 'Asian', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 10.0, 6.0, 'Packets', 8.0, 50.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (567, 'Male', '35', 'Married', 'GCSE/O Level', 'British', 'Asian', '2,600 to 5,200', 'Midlands & East Anglia', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (568, 'Female', '18', 'Single', 'A Levels', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (569, 'Male', '44', 'Divorced', 'Degree', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (570, 'Female', '75', 'Married', 'GCSE/CSE', 'Other', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (571, 'Female', '65', 'Married', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (572, 'Female', '54', 'Married', 'ONC/BTEC', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (573, 'Male', '32', 'Married', 'GCSE/O Level', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (574, 'Female', '57', 'Married', 'Higher/Sub Degree', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (575, 'Female', '50', 'Married', 'Other/Sub Degree', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 15.0, 'Packets', 17.5, 115.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (576, 'Female', '58', 'Married', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (577, 'Female', '30', 'Married', 'Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (578, 'Female', '57', 'Married', 'Higher/Sub Degree', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (579, 'Female', '60', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'Yes', 15.0, 15.0, 'Hand-Rolled', 15.0, 105.0, '55-64', '2');
INSERT INTO smoking_survey VALUES (580, 'Female', '78', 'Separated', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (581, 'Female', '44', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (582, 'Male', '32', 'Single', 'ONC/BTEC', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '25-34', '8');
INSERT INTO smoking_survey VALUES (583, 'Female', '56', 'Separated', 'Higher/Sub Degree', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (584, 'Male', '51', 'Married', 'Other/Sub Degree', 'Scottish', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (585, 'Male', '71', 'Married', 'Other/Sub Degree', 'British', 'Black', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (586, 'Female', '74', 'Widowed', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (587, 'Female', '56', 'Single', 'Degree', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 35.0, 25.0, 'Packets', 30.0, 195.0, '55-64', '5');
INSERT INTO smoking_survey VALUES (588, 'Female', '80', 'Widowed', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (589, 'Female', '51', 'Married', 'ONC/BTEC', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (590, 'Female', '53', 'Widowed', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (591, 'Male', '80', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (592, 'Male', '42', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 0.0, 2.0, 'Packets', 1.0, 10.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (593, 'Female', '82', 'Widowed', 'Other/Sub Degree', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (594, 'Male', '58', 'Married', 'A Levels', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (595, 'Female', '78', 'Married', 'Degree', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (596, 'Male', '61', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '55-64', '6');
INSERT INTO smoking_survey VALUES (597, 'Female', '49', 'Single', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 15.0, 'Packets', 17.5, 115.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (598, 'Female', '51', 'Divorced', 'GCSE/CSE', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (599, 'Male', '48', 'Married', 'Other/Sub Degree', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (600, 'Female', '37', 'Married', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (601, 'Male', '51', 'Married', 'GCSE/CSE', 'British', 'Asian', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (602, 'Male', '55', 'Married', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (603, 'Female', '48', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (604, 'Female', '82', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (605, 'Female', '56', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (606, 'Female', '71', 'Widowed', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (607, 'Male', '30', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (608, 'Female', '73', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (609, 'Female', '35', 'Married', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'Yes', 10.0, 8.0, 'Packets', 9.0, 60.0, '35-44', '1');
INSERT INTO smoking_survey VALUES (610, 'Male', '79', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (611, 'Male', '75', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 2.0, 1.0, 'Packets', 1.5, 9.0, '65+', '3');
INSERT INTO smoking_survey VALUES (612, 'Female', '49', 'Married', 'ONC/BTEC', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (613, 'Female', '74', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (614, 'Male', '33', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (615, 'Female', '81', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (616, 'Female', '63', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (617, 'Female', '78', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (618, 'Male', '68', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 18.0, 18.0, 'Packets', 18.0, 126.0, '65+', '3');
INSERT INTO smoking_survey VALUES (619, 'Male', '73', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (620, 'Female', '34', 'Married', 'A Levels', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (621, 'Female', '36', 'Divorced', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 15.0, 15.0, 'Hand-Rolled', 15.0, 105.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (622, 'Female', '16', 'Single', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (623, 'Male', '72', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (624, 'Female', '66', 'Married', 'Higher/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (625, 'Female', '41', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (626, 'Female', '49', 'Married', 'Other/Sub Degree', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 15.0, 'Packets', 17.5, 115.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (627, 'Male', '42', 'Single', 'No Qualification', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (628, 'Female', '54', 'Separated', 'GCSE/CSE', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (629, 'Male', '70', 'Married', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (630, 'Female', '29', 'Married', 'GCSE/CSE', 'British', 'Asian', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (631, 'Male', '43', 'Married', 'No Qualification', 'British', 'Asian', 'Refused', 'Midlands & East Anglia', 'Yes', 5.0, 10.0, 'Packets', 7.5, 60.0, '35-44', '9');
INSERT INTO smoking_survey VALUES (632, 'Female', '19', 'Single', 'A Levels', 'Refused', 'Chinese', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (633, 'Male', '44', 'Married', 'Higher/Sub Degree', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (634, 'Male', '27', 'Single', 'Degree', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (635, 'Male', '68', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (636, 'Female', '80', 'Widowed', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (637, 'Male', '85', 'Widowed', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (638, 'Male', '65', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (639, 'Female', '88', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (640, 'Female', '76', 'Widowed', 'No Qualification', 'English', 'White', 'Unknown', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (641, 'Male', '81', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (642, 'Female', '44', 'Separated', 'Degree', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 1.0, 1.0, 'Packets', 1.0, 7.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (643, 'Female', '34', 'Married', 'Other/Sub Degree', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (644, 'Female', '55', 'Married', 'Higher/Sub Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (645, 'Male', '77', 'Widowed', 'No Qualification', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (646, 'Female', '33', 'Married', 'Degree', 'Refused', 'Chinese', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '9');
INSERT INTO smoking_survey VALUES (647, 'Male', '82', 'Single', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (648, 'Female', '77', 'Widowed', 'Higher/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (649, 'Male', '19', 'Single', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (650, 'Female', '70', 'Widowed', 'Other/Sub Degree', 'British', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (651, 'Female', '74', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (652, 'Female', '57', 'Married', 'Other/Sub Degree', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (653, 'Female', '44', 'Divorced', 'GCSE/CSE', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (654, 'Female', '38', 'Single', 'Degree', 'British', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '9');
INSERT INTO smoking_survey VALUES (655, 'Male', '43', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (656, 'Female', '57', 'Separated', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (657, 'Female', '54', 'Divorced', 'GCSE/O Level', 'Unknown', 'Chinese', '2,600 to 5,200', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Both/Mainly Packets', 20.0, 140.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (658, 'Male', '17', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (659, 'Male', '60', 'Married', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (660, 'Female', '50', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (661, 'Female', '24', 'Single', 'GCSE/CSE', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 8.0, 2.0, 'Packets', 5.0, 26.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (662, 'Female', '78', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (663, 'Male', '60', 'Single', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (664, 'Female', '85', 'Widowed', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 6.0, 6.0, 'Packets', 6.0, 42.0, '65+', '3');
INSERT INTO smoking_survey VALUES (665, 'Male', '59', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (666, 'Male', '65', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '8');
INSERT INTO smoking_survey VALUES (667, 'Female', '55', 'Married', 'Other/Sub Degree', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (668, 'Female', '32', 'Married', 'ONC/BTEC', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (669, 'Male', '41', 'Single', 'Higher/Sub Degree', 'English', 'Mixed', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (670, 'Female', '31', 'Single', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (671, 'Male', '45', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Both/Mainly Packets', 20.0, 140.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (672, 'Female', '30', 'Single', 'Degree', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (673, 'Female', '19', 'Single', 'A Levels', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (674, 'Female', '76', 'Widowed', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (675, 'Male', '73', 'Married', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (676, 'Male', '19', 'Single', 'GCSE/O Level', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'Yes', 5.0, 2.0, 'Packets', 3.5, 20.0, '18-24', '9');
INSERT INTO smoking_survey VALUES (677, 'Male', '34', 'Married', 'Degree', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (678, 'Female', '59', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (679, 'Female', '22', 'Single', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 40.0, 10.0, 'Packets', 25.0, 130.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (680, 'Female', '27', 'Single', 'Degree', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (681, 'Female', '45', 'Married', 'A Levels', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (682, 'Female', '69', 'Widowed', 'Other/Sub Degree', 'Other', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (683, 'Male', '76', 'Married', 'Degree', 'Other', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '8');
INSERT INTO smoking_survey VALUES (684, 'Female', '54', 'Married', 'Degree', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (685, 'Male', '72', 'Married', 'Degree', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (686, 'Female', '89', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (687, 'Female', '78', 'Widowed', 'No Qualification', 'Refused', 'Refused', 'Refused', 'Midlands & East Anglia', 'Yes', 6.0, 6.0, 'Packets', 6.0, 42.0, '65+', '9');
INSERT INTO smoking_survey VALUES (688, 'Female', '60', 'Married', 'GCSE/O Level', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (689, 'Female', '39', 'Married', 'A Levels', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (690, 'Male', '28', 'Single', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 5.0, 5.0, 'Both/Mainly Packets', 5.0, 35.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (691, 'Male', '23', 'Single', 'GCSE/CSE', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'Yes', 30.0, 10.0, 'Both/Mainly Packets', 20.0, 110.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (692, 'Male', '26', 'Single', 'A Levels', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (693, 'Female', '52', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (694, 'Female', '54', 'Married', 'Other/Sub Degree', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (695, 'Male', '20', 'Single', 'A Levels', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (696, 'Female', '59', 'Married', 'Other/Sub Degree', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (697, 'Male', '30', 'Married', 'ONC/BTEC', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (698, 'Male', '41', 'Married', 'GCSE/O Level', 'Scottish', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (699, 'Female', '26', 'Single', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (700, 'Female', '27', 'Married', 'GCSE/O Level', 'Welsh', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (701, 'Male', '49', 'Married', 'No Qualification', 'Refused', 'Refused', 'Refused', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '9');
INSERT INTO smoking_survey VALUES (702, 'Male', '29', 'Single', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (703, 'Female', '36', 'Divorced', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (704, 'Male', '43', 'Divorced', 'GCSE/CSE', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (705, 'Male', '29', 'Single', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (706, 'Female', '34', 'Separated', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (707, 'Female', '81', 'Married', 'No Qualification', 'Refused', 'Chinese', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (708, 'Female', '30', 'Single', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 5.0, 10.0, 'Hand-Rolled', 7.5, 60.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (709, 'Male', '25', 'Single', 'Degree', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (710, 'Male', '59', 'Divorced', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 35.0, 35.0, 'Packets', 35.0, 245.0, '55-64', '4');
INSERT INTO smoking_survey VALUES (711, 'Female', '44', 'Widowed', 'No Qualification', 'British', 'Asian', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (712, 'Male', '64', 'Married', 'GCSE/O Level', 'Refused', 'Chinese', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (713, 'Female', '35', 'Married', 'A Levels', 'Refused', 'Chinese', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '9');
INSERT INTO smoking_survey VALUES (714, 'Male', '40', 'Single', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (715, 'Female', '65', 'Single', 'A Levels', 'Other', 'Black', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (716, 'Female', '17', 'Single', 'GCSE/O Level', 'British', 'Asian', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (717, 'Male', '72', 'Married', 'No Qualification', 'Other', 'Black', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (718, 'Female', '29', 'Married', 'Degree', 'British', 'Black', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (719, 'Male', '39', 'Married', 'No Qualification', 'British', 'Asian', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (720, 'Male', '70', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (721, 'Male', '73', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (722, 'Male', '46', 'Single', 'GCSE/O Level', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (723, 'Male', '59', 'Married', 'ONC/BTEC', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (724, 'Female', '77', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (725, 'Female', '42', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (726, 'Male', '41', 'Married', 'GCSE/O Level', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (727, 'Male', '49', 'Married', 'A Levels', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 20.0, 15.0, 'Packets', 17.5, 115.0, '45-54', '5');
INSERT INTO smoking_survey VALUES (728, 'Male', '67', 'Single', 'Degree', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (729, 'Female', '65', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (730, 'Male', '40', 'Single', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (731, 'Male', '49', 'Separated', 'GCSE/O Level', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (732, 'Male', '34', 'Single', 'GCSE/CSE', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (733, 'Female', '64', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (734, 'Female', '44', 'Widowed', 'Degree', 'Other', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (735, 'Female', '72', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (736, 'Male', '32', 'Married', 'A Levels', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (737, 'Female', '53', 'Married', 'No Qualification', 'British', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '9');
INSERT INTO smoking_survey VALUES (738, 'Female', '50', 'Married', 'A Levels', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (739, 'Female', '63', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (740, 'Female', '57', 'Married', 'Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (741, 'Male', '40', 'Married', 'Degree', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '9');
INSERT INTO smoking_survey VALUES (742, 'Female', '88', 'Divorced', 'Other/Sub Degree', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (743, 'Male', '57', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (744, 'Female', '54', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (745, 'Female', '58', 'Widowed', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (746, 'Female', '77', 'Divorced', 'Higher/Sub Degree', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (747, 'Female', '45', 'Divorced', 'GCSE/CSE', 'Other', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (748, 'Female', '31', 'Single', 'GCSE/O Level', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (749, 'Male', '31', 'Married', 'ONC/BTEC', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (750, 'Male', '80', 'Widowed', 'Degree', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '7');
INSERT INTO smoking_survey VALUES (751, 'Male', '67', 'Widowed', 'Degree', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 30.0, 30.0, 'Packets', 30.0, 210.0, '65+', '6');
INSERT INTO smoking_survey VALUES (752, 'Male', '40', 'Single', 'GCSE/O Level', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '35-44', '9');
INSERT INTO smoking_survey VALUES (753, 'Female', '70', 'Widowed', 'No Qualification', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (754, 'Female', '28', 'Single', 'GCSE/CSE', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'Yes', 30.0, 10.0, 'Packets', 20.0, 110.0, '25-34', '1');
INSERT INTO smoking_survey VALUES (755, 'Male', '30', 'Married', 'GCSE/CSE', 'Other', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (756, 'Female', '70', 'Divorced', 'Other/Sub Degree', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (757, 'Male', '57', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (758, 'Female', '76', 'Widowed', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (759, 'Female', '89', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (760, 'Male', '81', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (761, 'Female', '30', 'Single', 'ONC/BTEC', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (762, 'Female', '39', 'Single', 'Higher/Sub Degree', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (763, 'Female', '73', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '65+', '1');
INSERT INTO smoking_survey VALUES (764, 'Female', '39', 'Married', 'A Levels', 'Other', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '9');
INSERT INTO smoking_survey VALUES (765, 'Female', '76', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (766, 'Male', '62', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (767, 'Female', '66', 'Married', 'A Levels', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (768, 'Female', '53', 'Separated', 'Degree', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (769, 'Male', '60', 'Married', 'Degree', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (770, 'Female', '36', 'Married', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (771, 'Female', '40', 'Single', 'GCSE/CSE', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (772, 'Female', '57', 'Separated', 'No Qualification', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '55-64', '7');
INSERT INTO smoking_survey VALUES (773, 'Male', '16', 'Single', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'Yes', 25.0, 20.0, 'Hand-Rolled', 22.5, 150.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (774, 'Female', '25', 'Single', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (775, 'Male', '58', 'Single', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (776, 'Female', '49', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (777, 'Female', '48', 'Single', 'Degree', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (778, 'Female', '76', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (779, 'Male', '88', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (780, 'Male', '35', 'Married', 'A Levels', 'British', 'Chinese', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (781, 'Male', '43', 'Married', 'Degree', 'British', 'Black', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (782, 'Female', '69', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (783, 'Female', '64', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (784, 'Female', '40', 'Divorced', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (785, 'Male', '78', 'Married', 'Degree', 'British', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (786, 'Male', '58', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (787, 'Female', '34', 'Married', 'Degree', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'Yes', 3.0, 0.0, 'Packets', 1.5, 6.0, '25-34', '1');
INSERT INTO smoking_survey VALUES (788, 'Female', '46', 'Married', 'Degree', 'British', 'Mixed', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (789, 'Female', '65', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (790, 'Female', '34', 'Single', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 10.0, 'Both/Mainly Packets', 15.0, 90.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (791, 'Female', '40', 'Separated', 'GCSE/CSE', 'British', 'Asian', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (792, 'Male', '79', 'Married', 'No Qualification', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (793, 'Male', '36', 'Married', 'No Qualification', 'British', 'Asian', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (794, 'Female', '39', 'Married', 'No Qualification', 'Other', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (795, 'Male', '24', 'Married', 'GCSE/CSE', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '5');
INSERT INTO smoking_survey VALUES (796, 'Female', '28', 'Single', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'Yes', 20.0, 10.0, 'Both/Mainly Packets', 15.0, 90.0, '25-34', '2');
INSERT INTO smoking_survey VALUES (797, 'Female', '26', 'Single', 'A Levels', 'English', 'Asian', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (798, 'Female', '45', 'Widowed', 'GCSE/CSE', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (799, 'Female', '24', 'Single', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 18.0, 10.0, 'Packets', 14.0, 86.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (800, 'Male', '77', 'Divorced', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (801, 'Female', '78', 'Married', 'Higher/Sub Degree', 'Welsh', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (802, 'Male', '25', 'Single', 'Degree', 'Scottish', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '9');
INSERT INTO smoking_survey VALUES (803, 'Male', '36', 'Married', 'GCSE/CSE', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (804, 'Male', '17', 'Single', 'GCSE/O Level', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (805, 'Male', '55', 'Married', 'GCSE/O Level', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (806, 'Female', '70', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (807, 'Female', '43', 'Single', 'GCSE/O Level', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 15.0, 8.0, 'Hand-Rolled', 11.5, 70.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (808, 'Female', '59', 'Divorced', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (809, 'Female', '32', 'Married', 'Other/Sub Degree', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (810, 'Female', '34', 'Married', 'Degree', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (811, 'Male', '58', 'Single', 'Degree', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (812, 'Male', '44', 'Married', 'GCSE/O Level', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (813, 'Male', '64', 'Married', 'No Qualification', 'British', 'White', 'Refused', 'Midlands & East Anglia', 'Yes', 0.0, 0.0, 'Packets', 0.0, 0.0, '55-64', '9');
INSERT INTO smoking_survey VALUES (814, 'Female', '34', 'Married', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (815, 'Male', '32', 'Single', 'GCSE/CSE', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '9');
INSERT INTO smoking_survey VALUES (816, 'Male', '38', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (817, 'Male', '28', 'Single', 'GCSE/CSE', 'British', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (818, 'Male', '42', 'Married', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (819, 'Female', '34', 'Single', 'Degree', 'Other', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (820, 'Male', '23', 'Single', 'ONC/BTEC', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'Yes', 15.0, 5.0, 'Both/Mainly Packets', 10.0, 55.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (821, 'Male', '55', 'Separated', 'Degree', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (822, 'Male', '65', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (823, 'Female', '62', 'Married', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (824, 'Female', '66', 'Married', 'Higher/Sub Degree', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (825, 'Female', '73', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (826, 'Male', '34', 'Single', 'Other/Sub Degree', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (827, 'Female', '33', 'Married', 'Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (828, 'Male', '76', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (829, 'Female', '55', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'Yes', 1.0, 0.0, 'Packets', 0.5, 2.0, '55-64', '2');
INSERT INTO smoking_survey VALUES (830, 'Female', '39', 'Married', 'Degree', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (831, 'Female', '26', 'Single', 'Degree', 'British', 'Asian', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (832, 'Male', '61', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 25.0, 25.0, 'Packets', 25.0, 175.0, '55-64', '5');
INSERT INTO smoking_survey VALUES (833, 'Female', '78', 'Married', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (834, 'Male', '42', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (835, 'Female', '72', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (836, 'Male', '62', 'Widowed', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 30.0, 30.0, 'Both/Mainly Packets', 30.0, 210.0, '55-64', '6');
INSERT INTO smoking_survey VALUES (837, 'Female', '46', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (838, 'Male', '24', 'Single', 'A Levels', 'British', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '5');
INSERT INTO smoking_survey VALUES (839, 'Male', '27', 'Single', 'Degree', 'British', 'Black', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 6.0, 4.0, 'Both/Mainly Packets', 5.0, 32.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (840, 'Female', '64', 'Married', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (841, 'Male', '86', 'Married', 'Degree', 'English', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '7');
INSERT INTO smoking_survey VALUES (842, 'Female', '46', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (843, 'Male', '20', 'Single', 'ONC/BTEC', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'Yes', 20.0, 15.0, 'Both/Mainly Packets', 17.5, 115.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (844, 'Male', '35', 'Divorced', 'Higher/Sub Degree', 'Other', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (845, 'Female', '46', 'Married', 'Higher/Sub Degree', 'Irish', 'White', '28,600 to 36,400', 'Midlands & East Anglia', 'Yes', 30.0, 30.0, 'Packets', 30.0, 210.0, '45-54', '7');
INSERT INTO smoking_survey VALUES (846, 'Female', '39', 'Married', 'Higher/Sub Degree', 'Irish', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (847, 'Female', '28', 'Married', 'GCSE/O Level', 'English', 'White', 'Above 36,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (848, 'Female', '33', 'Married', 'Higher/Sub Degree', 'Refused', 'Refused', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '9');
INSERT INTO smoking_survey VALUES (849, 'Female', '39', 'Divorced', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (850, 'Male', '45', 'Divorced', 'GCSE/CSE', 'British', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (851, 'Female', '37', 'Separated', 'Higher/Sub Degree', 'British', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (852, 'Male', '29', 'Married', 'ONC/BTEC', 'English', 'White', '15,600 to 20,800', 'Midlands & East Anglia', 'Yes', 10.0, 5.0, 'Packets', 7.5, 45.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (853, 'Male', '76', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (854, 'Male', '26', 'Married', 'Degree', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (855, 'Female', '47', 'Divorced', 'Degree', 'English', 'White', '20,800 to 28,600', 'Midlands & East Anglia', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (856, 'Male', '72', 'Divorced', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (857, 'Female', '72', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (858, 'Female', '65', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (859, 'Female', '69', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (860, 'Female', '61', 'Married', 'A Levels', 'English', 'White', 'Unknown', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '10');
INSERT INTO smoking_survey VALUES (861, 'Female', '63', 'Married', 'No Qualification', 'English', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (862, 'Male', '16', 'Single', 'No Qualification', 'British', 'White', 'Refused', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (863, 'Male', '61', 'Divorced', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (864, 'Male', '18', 'Single', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (865, 'Male', '76', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (866, 'Male', '65', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (867, 'Female', '52', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (868, 'Male', '64', 'Widowed', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (869, 'Female', '42', 'Married', 'GCSE/CSE', 'British', 'White', 'Under 2,600', 'Midlands & East Anglia', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (870, 'Male', '40', 'Married', 'Degree', 'Other', 'White', 'Above 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (871, 'Female', '28', 'Married', 'Other/Sub Degree', 'English', 'Mixed', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (872, 'Male', '40', 'Married', 'Degree', 'Welsh', 'White', 'Above 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (873, 'Male', '48', 'Married', 'GCSE/O Level', 'British', 'White', '28,600 to 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (874, 'Male', '35', 'Separated', 'Degree', 'Other', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (875, 'Female', '30', 'Single', 'Degree', 'British', 'Black', '5,200 to 10,400', 'London', 'Yes', 3.0, 3.0, 'Packets', 3.0, 21.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (876, 'Female', '26', 'Single', 'Degree', 'British', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (877, 'Male', '81', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (878, 'Male', '77', 'Divorced', 'A Levels', 'English', 'White', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (879, 'Female', '25', 'Single', 'Degree', 'British', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (880, 'Female', '66', 'Married', 'No Qualification', 'British', 'Asian', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (881, 'Male', '18', 'Single', 'A Levels', 'British', 'White', '5,200 to 10,400', 'London', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (882, 'Male', '43', 'Married', 'GCSE/O Level', 'British', 'Black', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (883, 'Male', '49', 'Divorced', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'London', 'Yes', 20.0, 6.0, 'Both/Mainly Packets', 13.0, 70.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (884, 'Male', '29', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (885, 'Female', '20', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (886, 'Female', '75', 'Widowed', 'Other/Sub Degree', 'English', 'White', 'Under 2,600', 'London', 'Yes', 25.0, 25.0, 'Packets', 25.0, 175.0, '65+', '1');
INSERT INTO smoking_survey VALUES (887, 'Male', '40', 'Married', 'No Qualification', 'Other', 'Chinese', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (888, 'Female', '64', 'Single', 'Higher/Sub Degree', 'Irish', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (889, 'Male', '66', 'Single', 'Degree', 'British', 'Chinese', 'Refused', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (890, 'Female', '34', 'Single', 'Degree', 'British', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (891, 'Female', '76', 'Divorced', 'Degree', 'British', 'White', '28,600 to 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '7');
INSERT INTO smoking_survey VALUES (892, 'Male', '30', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'London', 'Yes', 1.0, 0.0, 'Packets', 0.5, 2.0, '25-34', '8');
INSERT INTO smoking_survey VALUES (893, 'Male', '55', 'Married', 'Degree', 'Other', 'Mixed', 'Above 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (894, 'Female', '49', 'Single', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (895, 'Male', '38', 'Separated', 'Degree', 'English', 'Chinese', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (896, 'Male', '23', 'Single', 'A Levels', 'Other', 'Refused', 'Refused', 'London', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '18-24', '9');
INSERT INTO smoking_survey VALUES (897, 'Male', '77', 'Married', 'Degree', 'Welsh', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (898, 'Male', '46', 'Single', 'Degree', 'Other', 'White', '10,400 to 15,600', 'London', 'Yes', 8.0, 8.0, 'Hand-Rolled', 8.0, 56.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (899, 'Female', '26', 'Separated', 'Higher/Sub Degree', 'British', 'White', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (900, 'Female', '26', 'Single', 'Degree', 'Other', 'White', '28,600 to 36,400', 'London', 'Yes', 10.0, 8.0, 'Packets', 9.0, 60.0, '25-34', '7');
INSERT INTO smoking_survey VALUES (901, 'Male', '45', 'Single', 'Degree', 'Irish', 'White', 'Above 36,400', 'London', 'Yes', 7.0, 2.0, 'Packets', 4.5, 24.0, '45-54', '8');
INSERT INTO smoking_survey VALUES (902, 'Female', '45', 'Single', 'No Qualification', 'Other', 'Black', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (903, 'Female', '61', 'Married', 'No Qualification', 'English', 'White', 'Refused', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (904, 'Female', '47', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (905, 'Female', '75', 'Widowed', 'Other/Sub Degree', 'English', 'White', '10,400 to 15,600', 'London', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '65+', '4');
INSERT INTO smoking_survey VALUES (906, 'Female', '36', 'Divorced', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'London', 'Yes', 30.0, 20.0, 'Packets', 25.0, 160.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (907, 'Male', '26', 'Single', 'Degree', 'British', 'Chinese', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (908, 'Male', '71', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'London', 'Yes', 25.0, 25.0, 'Packets', 25.0, 175.0, '65+', '2');
INSERT INTO smoking_survey VALUES (909, 'Male', '69', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'London', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '65+', '3');
INSERT INTO smoking_survey VALUES (910, 'Male', '38', 'Single', 'A Levels', 'Irish', 'White', '28,600 to 36,400', 'London', 'Yes', 10.0, 6.0, 'Hand-Rolled', 8.0, 50.0, '35-44', '7');
INSERT INTO smoking_survey VALUES (911, 'Female', '21', 'Single', 'GCSE/O Level', 'British', 'Black', 'Refused', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (912, 'Male', '26', 'Single', 'No Qualification', 'British', 'Chinese', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (913, 'Female', '83', 'Widowed', 'No Qualification', 'English', 'White', 'Unknown', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (914, 'Female', '56', 'Divorced', 'No Qualification', 'Other', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (915, 'Male', '34', 'Single', 'Degree', 'English', 'White', 'Above 36,400', 'London', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '8');
INSERT INTO smoking_survey VALUES (916, 'Female', '66', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (917, 'Female', '32', 'Single', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'London', 'Yes', 3.0, 3.0, 'Hand-Rolled', 3.0, 21.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (918, 'Female', '77', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (919, 'Female', '70', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (920, 'Male', '24', 'Single', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'London', 'Yes', 10.0, 10.0, 'Both/Mainly Packets', 10.0, 70.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (921, 'Female', '81', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (922, 'Male', '37', 'Separated', 'Other/Sub Degree', 'Other', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (923, 'Male', '90', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (924, 'Female', '29', 'Single', 'GCSE/O Level', 'Other', 'Black', '5,200 to 10,400', 'London', 'Yes', 6.0, 0.0, 'Hand-Rolled', 3.0, 12.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (925, 'Female', '24', 'Single', 'A Levels', 'Other', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (926, 'Male', '81', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (927, 'Female', '38', 'Separated', 'ONC/BTEC', 'Other', 'Black', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (928, 'Male', '22', 'Single', 'GCSE/O Level', 'Irish', 'White', '20,800 to 28,600', 'London', 'Yes', 0.0, 7.0, 'Packets', 3.5, 35.0, '18-24', '6');
INSERT INTO smoking_survey VALUES (929, 'Male', '31', 'Married', 'GCSE/CSE', 'British', 'Asian', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (930, 'Female', '77', 'Widowed', 'No Qualification', 'Other', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (931, 'Female', '61', 'Divorced', 'No Qualification', 'Other', 'White', '10,400 to 15,600', 'London', 'Yes', 5.0, 4.0, 'Packets', 4.5, 30.0, '55-64', '4');
INSERT INTO smoking_survey VALUES (932, 'Male', '54', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (933, 'Female', '72', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (934, 'Male', '66', 'Single', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'London', 'Yes', 30.0, 30.0, 'Packets', 30.0, 210.0, '65+', '3');
INSERT INTO smoking_survey VALUES (935, 'Male', '47', 'Single', 'ONC/BTEC', 'British', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (936, 'Female', '76', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (937, 'Male', '41', 'Married', 'A Levels', 'English', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (938, 'Female', '80', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (939, 'Female', '63', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (940, 'Male', '29', 'Married', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (941, 'Female', '40', 'Single', 'GCSE/O Level', 'Other', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (942, 'Female', '54', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (943, 'Male', '66', 'Married', 'Degree', 'British', 'Asian', '10,400 to 15,600', 'London', 'Yes', 5.0, 55.0, 'Packets', 30.0, 285.0, '65+', '4');
INSERT INTO smoking_survey VALUES (944, 'Male', '69', 'Married', 'Other/Sub Degree', 'Other', 'Asian', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (945, 'Male', '51', 'Married', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (946, 'Male', '70', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (947, 'Female', '36', 'Married', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'London', 'Yes', 10.0, 1.0, 'Packets', 5.5, 25.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (948, 'Female', '73', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (949, 'Male', '72', 'Married', 'Other/Sub Degree', 'British', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (950, 'Female', '18', 'Single', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (951, 'Female', '57', 'Married', 'Other/Sub Degree', 'British', 'White', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (952, 'Male', '21', 'Single', 'A Levels', 'British', 'White', 'Refused', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (953, 'Male', '64', 'Married', 'Degree', 'British', 'Asian', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (954, 'Female', '39', 'Married', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (955, 'Female', '37', 'Divorced', 'GCSE/CSE', 'British', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (956, 'Female', '36', 'Married', 'GCSE/CSE', 'British', 'White', 'Under 2,600', 'London', 'Yes', 5.0, 1.0, 'Packets', 3.0, 15.0, '35-44', '1');
INSERT INTO smoking_survey VALUES (957, 'Female', '37', 'Married', 'Degree', 'English', 'White', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (958, 'Male', '79', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (959, 'Female', '49', 'Married', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (960, 'Female', '30', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (961, 'Female', '27', 'Single', 'Degree', 'Welsh', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (962, 'Male', '16', 'Single', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (963, 'Male', '40', 'Married', 'GCSE/O Level', 'English', 'White', 'Above 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (964, 'Female', '45', 'Separated', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (965, 'Female', '78', 'Widowed', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (966, 'Female', '59', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (967, 'Female', '93', 'Widowed', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'London', 'Yes', 0.0, 3.0, 'Packets', 1.5, 15.0, '65+', '3');
INSERT INTO smoking_survey VALUES (968, 'Female', '33', 'Married', 'A Levels', 'English', 'White', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (969, 'Female', '57', 'Divorced', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (970, 'Female', '53', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'London', 'Yes', 4.0, 4.0, 'Packets', 4.0, 28.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (971, 'Female', '54', 'Divorced', 'Higher/Sub Degree', 'English', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (972, 'Female', '33', 'Married', 'A Levels', 'Irish', 'White', 'Above 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (973, 'Female', '52', 'Single', 'Other/Sub Degree', 'Irish', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (974, 'Male', '31', 'Single', 'Higher/Sub Degree', 'English', 'White', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (975, 'Female', '54', 'Married', 'Degree', 'British', 'White', '28,600 to 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (976, 'Female', '41', 'Married', 'Higher/Sub Degree', 'British', 'White', '20,800 to 28,600', 'London', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (977, 'Female', '23', 'Single', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (978, 'Female', '81', 'Widowed', 'GCSE/CSE', 'British', 'White', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (979, 'Female', '17', 'Single', 'A Levels', 'British', 'White', 'Refused', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (980, 'Male', '73', 'Married', 'No Qualification', 'British', 'White', 'Above 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '8');
INSERT INTO smoking_survey VALUES (981, 'Male', '62', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (982, 'Female', '73', 'Married', 'Degree', 'Scottish', 'White', '10,400 to 15,600', 'London', 'Yes', 16.0, 16.0, 'Packets', 16.0, 112.0, '65+', '4');
INSERT INTO smoking_survey VALUES (983, 'Male', '22', 'Single', 'ONC/BTEC', 'English', 'White', '20,800 to 28,600', 'London', 'Yes', 15.0, 15.0, 'Both/Mainly Packets', 15.0, 105.0, '18-24', '6');
INSERT INTO smoking_survey VALUES (984, 'Female', '18', 'Single', 'A Levels', 'English', 'White', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (985, 'Female', '86', 'Widowed', 'GCSE/O Level', 'Irish', 'White', '10,400 to 15,600', 'London', 'Yes', 7.0, 7.0, 'Packets', 7.0, 49.0, '65+', '4');
INSERT INTO smoking_survey VALUES (986, 'Female', '54', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'London', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (987, 'Female', '55', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (988, 'Female', '22', 'Single', 'Degree', 'English', 'Mixed', '20,800 to 28,600', 'London', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '18-24', '6');
INSERT INTO smoking_survey VALUES (989, 'Female', '30', 'Married', 'ONC/BTEC', 'British', 'Asian', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (990, 'Female', '25', 'Single', 'Degree', 'Other', 'Black', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (991, 'Female', '54', 'Divorced', 'Other/Sub Degree', 'British', 'Chinese', 'Under 2,600', 'London', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '45-54', '1');
INSERT INTO smoking_survey VALUES (992, 'Male', '36', 'Single', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (993, 'Female', '40', 'Married', 'Other/Sub Degree', 'Other', 'White', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (994, 'Female', '51', 'Divorced', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'London', 'Yes', 10.0, 2.0, 'Packets', 6.0, 30.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (995, 'Male', '44', 'Married', 'Degree', 'British', 'White', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (996, 'Female', '26', 'Single', 'Degree', 'Other', 'White', 'Under 2,600', 'London', 'Yes', 5.0, 0.0, 'Packets', 2.5, 10.0, '25-34', '1');
INSERT INTO smoking_survey VALUES (997, 'Male', '73', 'Married', 'ONC/BTEC', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (998, 'Female', '36', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (999, 'Male', '69', 'Widowed', 'No Qualification', 'Irish', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1000, 'Female', '41', 'Married', 'Degree', 'British', 'White', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1001, 'Male', '40', 'Married', 'Degree', 'Other', 'White', 'Above 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1002, 'Male', '82', 'Married', 'Other/Sub Degree', 'Other', 'White', '2,600 to 5,200', 'London', 'Yes', 3.0, 3.0, 'Packets', 3.0, 21.0, '65+', '2');
INSERT INTO smoking_survey VALUES (1003, 'Male', '27', 'Single', 'Degree', 'British', 'White', '15,600 to 20,800', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (1004, 'Female', '35', 'Single', 'Degree', 'English', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1005, 'Male', '35', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1006, 'Male', '33', 'Married', 'Other/Sub Degree', 'Other', 'White', '28,600 to 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (1007, 'Female', '41', 'Divorced', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'London', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (1008, 'Female', '26', 'Separated', 'Other/Sub Degree', 'British', 'Black', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1009, 'Female', '55', 'Married', 'No Qualification', 'English', 'White', 'Refused', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (1010, 'Male', '18', 'Single', 'GCSE/O Level', 'Other', 'Black', 'Under 2,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (1011, 'Female', '68', 'Married', 'GCSE/O Level', 'British', 'Black', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1012, 'Female', '43', 'Single', 'GCSE/O Level', 'Other', 'Black', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1013, 'Male', '58', 'Married', 'No Qualification', 'English', 'Mixed', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (1014, 'Female', '39', 'Married', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1015, 'Female', '54', 'Separated', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (1016, 'Female', '62', 'Married', 'No Qualification', 'British', 'White', '28,600 to 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (1017, 'Female', '40', 'Married', 'A Levels', 'English', 'White', '10,400 to 15,600', 'London', 'Yes', 2.0, 0.0, 'Both/Mainly Packets', 1.0, 4.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (1018, 'Female', '59', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1019, 'Female', '57', 'Divorced', 'GCSE/O Level', 'British', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (1020, 'Female', '42', 'Single', 'GCSE/O Level', 'Other', 'Black', '5,200 to 10,400', 'London', 'Yes', 25.0, 10.0, 'Packets', 17.5, 100.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (1021, 'Female', '48', 'Separated', 'GCSE/O Level', 'Scottish', 'White', '20,800 to 28,600', 'London', 'Yes', 25.0, 25.0, 'Packets', 25.0, 175.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (1022, 'Female', '45', 'Divorced', 'GCSE/O Level', 'British', 'Black', '20,800 to 28,600', 'London', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (1023, 'Female', '24', 'Single', 'GCSE/CSE', 'British', 'White', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1024, 'Female', '66', 'Widowed', 'GCSE/CSE', 'British', 'Black', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1025, 'Male', '63', 'Single', 'Higher/Sub Degree', 'English', 'White', '10,400 to 15,600', 'London', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '55-64', '4');
INSERT INTO smoking_survey VALUES (1026, 'Male', '28', 'Single', 'GCSE/O Level', 'Refused', 'Refused', 'Refused', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '9');
INSERT INTO smoking_survey VALUES (1027, 'Male', '59', 'Divorced', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (1028, 'Male', '50', 'Married', 'Higher/Sub Degree', 'Other', 'Black', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1029, 'Female', '41', 'Separated', 'GCSE/CSE', 'English', 'White', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1030, 'Female', '76', 'Single', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1031, 'Male', '24', 'Single', 'ONC/BTEC', 'British', 'White', '15,600 to 20,800', 'London', 'Yes', 15.0, 20.0, 'Packets', 17.5, 130.0, '18-24', '5');
INSERT INTO smoking_survey VALUES (1032, 'Female', '25', 'Single', 'Other/Sub Degree', 'British', 'Chinese', '20,800 to 28,600', 'London', 'Yes', 5.0, 2.0, 'Packets', 3.5, 20.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (1033, 'Female', '33', 'Widowed', 'Degree', 'Other', 'Chinese', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1034, 'Male', '31', 'Single', 'ONC/BTEC', 'Other', 'Black', '28,600 to 36,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (1035, 'Female', '33', 'Single', 'Degree', 'British', 'Black', '5,200 to 10,400', 'London', 'Yes', 10.0, 8.0, 'Packets', 9.0, 60.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (1036, 'Female', '37', 'Single', 'No Qualification', 'Other', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1037, 'Male', '81', 'Divorced', 'No Qualification', 'British', 'Black', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1038, 'Female', '36', 'Single', 'No Qualification', 'Other', 'Black', '20,800 to 28,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1039, 'Female', '64', 'Married', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'London', 'Yes', 15.0, 7.0, 'Hand-Rolled', 11.0, 65.0, '55-64', '4');
INSERT INTO smoking_survey VALUES (1040, 'Male', '51', 'Married', 'Other/Sub Degree', 'British', 'Asian', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1041, 'Female', '19', 'Single', 'A Levels', 'British', 'Mixed', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (1042, 'Female', '18', 'Single', 'A Levels', 'British', 'Black', 'Refused', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (1043, 'Male', '31', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'London', 'Yes', 10.0, 5.0, 'Both/Mainly Packets', 7.5, 45.0, '25-34', '8');
INSERT INTO smoking_survey VALUES (1044, 'Female', '24', 'Single', 'ONC/BTEC', 'English', 'White', '5,200 to 10,400', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (1045, 'Male', '18', 'Single', 'No Qualification', 'Other', 'Chinese', 'Under 2,600', 'London', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (1046, 'Male', '22', 'Single', 'Degree', 'Other', 'Asian', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1047, 'Female', '26', 'Single', 'Other/Sub Degree', 'Other', 'Black', '10,400 to 15,600', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1048, 'Female', '33', 'Single', 'Degree', 'British', 'Black', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (1049, 'Male', '17', 'Single', 'GCSE/CSE', 'British', 'Asian', 'Under 2,600', 'London', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (1050, 'Male', '37', 'Single', 'ONC/BTEC', 'British', 'Black', '10,400 to 15,600', 'London', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (1051, 'Male', '60', 'Married', 'No Qualification', 'British', 'Chinese', '2,600 to 5,200', 'London', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1052, 'Male', '80', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1053, 'Male', '68', 'Married', 'ONC/BTEC', 'British', 'White', '10,400 to 15,600', 'South East', 'Yes', 7.0, 7.0, 'Packets', 7.0, 49.0, '65+', '4');
INSERT INTO smoking_survey VALUES (1054, 'Female', '65', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1055, 'Male', '42', 'Married', 'No Qualification', 'British', 'Chinese', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1056, 'Female', '48', 'Married', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (1057, 'Male', '46', 'Married', 'A Levels', 'Scottish', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (1058, 'Male', '44', 'Married', 'ONC/BTEC', 'English', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1059, 'Female', '29', 'Married', 'A Levels', 'English', 'White', '10,400 to 15,600', 'South East', 'Yes', 10.0, 5.0, 'Packets', 7.5, 45.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1060, 'Male', '38', 'Married', 'Higher/Sub Degree', 'English', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1061, 'Female', '52', 'Married', 'No Qualification', 'Irish', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '9');
INSERT INTO smoking_survey VALUES (1062, 'Male', '48', 'Divorced', 'Degree', 'English', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (1063, 'Male', '65', 'Married', 'GCSE/CSE', 'British', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1064, 'Male', '27', 'Single', 'Degree', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1065, 'Female', '37', 'Married', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (1066, 'Female', '42', 'Married', 'GCSE/O Level', 'British', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (1067, 'Male', '53', 'Single', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1068, 'Female', '66', 'Widowed', 'No Qualification', 'English', 'White', 'Refused', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '65+', '9');
INSERT INTO smoking_survey VALUES (1069, 'Female', '20', 'Single', 'ONC/BTEC', 'English', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '5');
INSERT INTO smoking_survey VALUES (1070, 'Female', '62', 'Married', 'No Qualification', 'Refused', 'Refused', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (1071, 'Male', '18', 'Single', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1072, 'Male', '69', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1073, 'Male', '63', 'Divorced', 'ONC/BTEC', 'English', 'White', 'Above 36,400', 'South East', 'Yes', 2.0, 1.0, 'Packets', 1.5, 9.0, '55-64', '8');
INSERT INTO smoking_survey VALUES (1074, 'Male', '41', 'Married', 'Degree', 'British', 'Chinese', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1075, 'Male', '74', 'Married', 'Higher/Sub Degree', 'English', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '8');
INSERT INTO smoking_survey VALUES (1076, 'Female', '20', 'Single', 'Other/Sub Degree', 'Other', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1077, 'Female', '18', 'Single', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1078, 'Male', '28', 'Single', 'GCSE/O Level', 'English', 'Black', '5,200 to 10,400', 'South East', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (1079, 'Male', '49', 'Married', 'Degree', 'British', 'Chinese', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (1080, 'Male', '64', 'Married', 'Higher/Sub Degree', 'British', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1081, 'Female', '69', 'Widowed', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1082, 'Female', '33', 'Separated', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1083, 'Female', '22', 'Single', 'GCSE/CSE', 'English', 'White', '10,400 to 15,600', 'South East', 'Yes', 15.0, 7.0, 'Packets', 11.0, 65.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (1084, 'Female', '63', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (1085, 'Female', '93', 'Widowed', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1086, 'Female', '65', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1087, 'Female', '33', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'South East', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1088, 'Female', '38', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (1089, 'Female', '29', 'Single', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'South East', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '25-34', '1');
INSERT INTO smoking_survey VALUES (1090, 'Male', '59', 'Married', 'A Levels', 'British', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (1091, 'Male', '37', 'Single', 'Degree', 'English', 'Mixed', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1092, 'Male', '51', 'Single', 'No Qualification', 'British', 'White', '20,800 to 28,600', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (1093, 'Female', '33', 'Married', 'GCSE/O Level', 'English', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '9');
INSERT INTO smoking_survey VALUES (1094, 'Female', '80', 'Single', 'Higher/Sub Degree', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1095, 'Male', '49', 'Married', 'A Levels', 'English', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (1096, 'Female', '38', 'Married', 'Degree', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1097, 'Male', '45', 'Single', 'GCSE/O Level', 'English', 'White', 'Above 36,400', 'South East', 'Yes', 10.0, 20.0, 'Packets', 15.0, 120.0, '45-54', '8');
INSERT INTO smoking_survey VALUES (1098, 'Female', '58', 'Married', 'Higher/Sub Degree', 'Scottish', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (1099, 'Female', '63', 'Married', 'Degree', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1100, 'Female', '69', 'Married', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1101, 'Male', '86', 'Widowed', 'Other/Sub Degree', 'British', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (1102, 'Female', '66', 'Widowed', 'Higher/Sub Degree', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (1103, 'Male', '61', 'Married', 'No Qualification', 'British', 'Unknown', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1104, 'Female', '62', 'Separated', 'Higher/Sub Degree', 'English', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (1105, 'Female', '89', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1106, 'Female', '72', 'Widowed', 'Degree', 'British', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (1107, 'Male', '64', 'Married', 'Other/Sub Degree', 'British', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (1108, 'Female', '58', 'Married', 'A Levels', 'English', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (1109, 'Female', '80', 'Widowed', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1110, 'Female', '61', 'Married', 'Higher/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1111, 'Female', '34', 'Married', 'Higher/Sub Degree', 'Irish', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1112, 'Female', '36', 'Married', 'GCSE/O Level', 'British', 'White', 'Under 2,600', 'South East', 'Yes', 5.0, 3.0, 'Packets', 4.0, 25.0, '35-44', '1');
INSERT INTO smoking_survey VALUES (1113, 'Female', '34', 'Divorced', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'South East', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1114, 'Female', '40', 'Single', 'A Levels', 'English', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1115, 'Male', '53', 'Single', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1116, 'Female', '31', 'Single', 'Degree', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1117, 'Female', '86', 'Separated', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1118, 'Female', '46', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1119, 'Male', '34', 'Single', 'GCSE/O Level', 'Scottish', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (1120, 'Female', '44', 'Single', 'Degree', 'English', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1121, 'Female', '69', 'Widowed', 'A Levels', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1122, 'Female', '56', 'Widowed', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (1123, 'Male', '79', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1124, 'Female', '41', 'Separated', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'South East', 'Yes', 30.0, 15.0, 'Packets', 22.5, 135.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (1125, 'Male', '34', 'Divorced', 'ONC/BTEC', 'English', 'White', 'Above 36,400', 'South East', 'Yes', 30.0, 15.0, 'Packets', 22.5, 135.0, '25-34', '8');
INSERT INTO smoking_survey VALUES (1126, 'Male', '47', 'Single', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'South East', 'Yes', 40.0, 40.0, 'Packets', 40.0, 280.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (1127, 'Male', '46', 'Married', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (1128, 'Female', '30', 'Single', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1129, 'Female', '19', 'Single', 'A Levels', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (1130, 'Male', '45', 'Married', 'Degree', 'Welsh', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (1131, 'Female', '24', 'Single', 'Higher/Sub Degree', 'Other', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (1132, 'Male', '42', 'Married', 'GCSE/O Level', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1133, 'Male', '32', 'Married', 'Other/Sub Degree', 'English', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (1134, 'Male', '32', 'Single', 'GCSE/CSE', 'English', 'White', '10,400 to 15,600', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1135, 'Female', '28', 'Single', 'A Levels', 'British', 'White', 'Under 2,600', 'South East', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '25-34', '1');
INSERT INTO smoking_survey VALUES (1136, 'Female', '78', 'Widowed', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1137, 'Male', '42', 'Divorced', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'South East', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (1138, 'Female', '27', 'Married', 'Degree', 'English', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (1139, 'Female', '57', 'Married', 'Other/Sub Degree', 'English', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (1140, 'Female', '24', 'Single', 'Degree', 'Refused', 'Refused', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (1141, 'Female', '71', 'Married', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1142, 'Male', '51', 'Married', 'GCSE/O Level', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1143, 'Male', '66', 'Widowed', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1144, 'Female', '73', 'Separated', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1145, 'Male', '18', 'Single', 'No Qualification', 'Refused', 'Refused', 'Refused', 'South East', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '18-24', '9');
INSERT INTO smoking_survey VALUES (1146, 'Male', '50', 'Divorced', 'A Levels', 'English', 'White', '20,800 to 28,600', 'South East', 'Yes', 10.0, 5.0, 'Packets', 7.5, 45.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (1147, 'Female', '79', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '65+', '3');
INSERT INTO smoking_survey VALUES (1148, 'Female', '22', 'Single', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'South East', 'Yes', 10.0, 5.0, 'Packets', 7.5, 45.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (1149, 'Male', '45', 'Divorced', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (1150, 'Female', '53', 'Married', 'No Qualification', 'English', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '9');
INSERT INTO smoking_survey VALUES (1151, 'Male', '77', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South East', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '65+', '2');
INSERT INTO smoking_survey VALUES (1152, 'Female', '64', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1153, 'Male', '39', 'Married', 'A Levels', 'British', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (1154, 'Male', '54', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'Yes', 10.0, 20.0, 'Both/Mainly Packets', 15.0, 120.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1155, 'Male', '17', 'Single', 'GCSE/CSE', 'English', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (1156, 'Male', '78', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1157, 'Male', '50', 'Single', 'Degree', 'British', 'White', '20,800 to 28,600', 'South East', 'Yes', 12.0, 6.0, 'Packets', 9.0, 54.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (1158, 'Male', '41', 'Married', 'Higher/Sub Degree', 'English', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1159, 'Female', '48', 'Divorced', 'No Qualification', 'Irish', 'Mixed', '2,600 to 5,200', 'South East', 'Yes', 40.0, 20.0, 'Packets', 30.0, 180.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (1160, 'Male', '25', 'Married', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (1161, 'Male', '18', 'Married', 'ONC/BTEC', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1162, 'Female', '58', 'Married', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (1163, 'Female', '79', 'Widowed', 'Higher/Sub Degree', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (1164, 'Male', '62', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South East', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '55-64', '2');
INSERT INTO smoking_survey VALUES (1165, 'Female', '36', 'Married', 'GCSE/CSE', 'British', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (1166, 'Female', '38', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1167, 'Male', '19', 'Single', 'Other/Sub Degree', 'British', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (1168, 'Female', '45', 'Separated', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1169, 'Male', '54', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (1170, 'Female', '69', 'Widowed', 'GCSE/O Level', 'Scottish', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (1171, 'Female', '65', 'Widowed', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1172, 'Male', '31', 'Married', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1173, 'Female', '31', 'Married', 'Degree', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (1174, 'Female', '46', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (1175, 'Male', '37', 'Single', 'ONC/BTEC', 'Other', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1176, 'Female', '72', 'Married', 'No Qualification', 'English', 'White', 'Unknown', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (1177, 'Male', '59', 'Married', 'GCSE/O Level', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (1178, 'Female', '82', 'Widowed', 'GCSE/O Level', 'English', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1179, 'Male', '81', 'Widowed', 'Degree', 'English', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '7');
INSERT INTO smoking_survey VALUES (1180, 'Female', '65', 'Widowed', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1181, 'Female', '48', 'Divorced', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'South East', 'Yes', 5.0, 5.0, 'Hand-Rolled', 5.0, 35.0, '45-54', '5');
INSERT INTO smoking_survey VALUES (1182, 'Male', '49', 'Divorced', 'ONC/BTEC', 'British', 'White', 'Above 36,400', 'South East', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '45-54', '8');
INSERT INTO smoking_survey VALUES (1183, 'Male', '35', 'Single', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'South East', 'Yes', 60.0, 40.0, 'Packets', 50.0, 320.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (1184, 'Female', '73', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1185, 'Female', '80', 'Divorced', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1186, 'Male', '55', 'Married', 'ONC/BTEC', 'English', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (1187, 'Male', '78', 'Widowed', 'No Qualification', 'English', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1188, 'Female', '45', 'Single', 'GCSE/O Level', 'English', 'White', 'Refused', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '9');
INSERT INTO smoking_survey VALUES (1189, 'Male', '39', 'Married', 'A Levels', 'English', 'White', '20,800 to 28,600', 'South East', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (1190, 'Male', '75', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1191, 'Male', '65', 'Married', 'Other/Sub Degree', 'English', 'Chinese', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1192, 'Male', '79', 'Divorced', 'No Qualification', 'Refused', 'Refused', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1193, 'Male', '75', 'Married', 'GCSE/O Level', 'English', 'Chinese', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (1194, 'Female', '69', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1195, 'Female', '57', 'Single', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (1196, 'Female', '29', 'Single', 'Degree', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1197, 'Male', '54', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'South East', 'Yes', 30.0, 30.0, 'Packets', 30.0, 210.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (1198, 'Male', '29', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1199, 'Male', '42', 'Divorced', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1200, 'Male', '28', 'Single', 'Degree', 'British', 'White', '15,600 to 20,800', 'South East', 'Yes', 5.0, 5.0, 'Hand-Rolled', 5.0, 35.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1201, 'Female', '65', 'Widowed', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (1202, 'Male', '37', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'South East', 'Yes', 0.0, 4.0, 'Packets', 2.0, 20.0, '35-44', '8');
INSERT INTO smoking_survey VALUES (1203, 'Female', '35', 'Single', 'Degree', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1204, 'Female', '33', 'Single', 'Degree', 'English', 'Mixed', '15,600 to 20,800', 'South East', 'Yes', 10.0, 6.0, 'Both/Mainly Packets', 8.0, 50.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1205, 'Male', '52', 'Married', 'Degree', 'Other', 'White', '5,200 to 10,400', 'South East', 'Yes', 40.0, 40.0, 'Packets', 40.0, 280.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1206, 'Male', '57', 'Single', 'Higher/Sub Degree', 'British', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (1207, 'Female', '31', 'Single', 'Degree', 'English', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (1208, 'Male', '73', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1209, 'Male', '43', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1210, 'Male', '38', 'Single', 'Degree', 'English', 'Black', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1211, 'Female', '43', 'Married', 'No Qualification', 'British', 'White', 'Above 36,400', 'South East', 'Yes', 12.0, 12.0, 'Packets', 12.0, 84.0, '35-44', '8');
INSERT INTO smoking_survey VALUES (1212, 'Female', '55', 'Married', 'Higher/Sub Degree', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (1213, 'Male', '59', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (1214, 'Female', '33', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1215, 'Female', '41', 'Married', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (1216, 'Female', '46', 'Married', 'GCSE/CSE', 'British', 'White', '5,200 to 10,400', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1217, 'Male', '57', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'South East', 'Yes', 35.0, 35.0, 'Packets', 35.0, 245.0, '55-64', '8');
INSERT INTO smoking_survey VALUES (1218, 'Male', '40', 'Single', 'A Levels', 'English', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1219, 'Male', '57', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1220, 'Female', '39', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'South East', 'Yes', 10.0, 7.0, 'Packets', 8.5, 55.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (1221, 'Male', '67', 'Married', 'Other/Sub Degree', 'British', 'White', '5,200 to 10,400', 'South East', 'Yes', 5.0, 5.0, 'Hand-Rolled', 5.0, 35.0, '65+', '3');
INSERT INTO smoking_survey VALUES (1222, 'Female', '46', 'Single', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (1223, 'Male', '39', 'Married', 'Higher/Sub Degree', 'British', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1224, 'Female', '55', 'Married', 'GCSE/O Level', 'British', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (1225, 'Male', '50', 'Married', 'Other/Sub Degree', 'English', 'White', '15,600 to 20,800', 'South East', 'Yes', 15.0, 10.0, 'Hand-Rolled', 12.5, 80.0, '45-54', '5');
INSERT INTO smoking_survey VALUES (1226, 'Female', '70', 'Widowed', 'ONC/BTEC', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1227, 'Female', '44', 'Married', 'Higher/Sub Degree', 'Other', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (1228, 'Female', '33', 'Married', 'ONC/BTEC', 'English', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (1229, 'Male', '69', 'Divorced', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1230, 'Female', '70', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'South East', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '65+', '1');
INSERT INTO smoking_survey VALUES (1231, 'Female', '62', 'Widowed', 'No Qualification', 'British', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (1232, 'Female', '31', 'Married', 'GCSE/O Level', 'British', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (1233, 'Male', '70', 'Married', 'Other/Sub Degree', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1234, 'Male', '32', 'Married', 'No Qualification', 'British', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (1235, 'Female', '75', 'Divorced', 'A Levels', 'British', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1236, 'Male', '47', 'Married', 'Higher/Sub Degree', 'British', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1237, 'Male', '57', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (1238, 'Male', '86', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1239, 'Female', '32', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '2');
INSERT INTO smoking_survey VALUES (1240, 'Male', '46', 'Single', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'South East', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (1241, 'Male', '51', 'Single', 'No Qualification', 'English', 'White', 'Under 2,600', 'South East', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '45-54', '1');
INSERT INTO smoking_survey VALUES (1242, 'Female', '69', 'Married', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1243, 'Female', '73', 'Married', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1244, 'Female', '32', 'Single', 'Higher/Sub Degree', 'English', 'White', '15,600 to 20,800', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1245, 'Female', '75', 'Married', 'GCSE/O Level', 'English', 'White', 'Unknown', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (1246, 'Female', '54', 'Widowed', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'South East', 'Yes', 25.0, 25.0, 'Packets', 25.0, 175.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (1247, 'Female', '51', 'Married', 'Higher/Sub Degree', 'English', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (1248, 'Female', '35', 'Married', 'Degree', 'British', 'White', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1249, 'Male', '38', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1250, 'Female', '72', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1251, 'Female', '66', 'Married', 'A Levels', 'English', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1252, 'Female', '59', 'Married', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1253, 'Male', '70', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (1254, 'Male', '44', 'Single', 'GCSE/CSE', 'English', 'White', 'Refused', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '9');
INSERT INTO smoking_survey VALUES (1255, 'Female', '67', 'Married', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1256, 'Male', '35', 'Married', 'GCSE/O Level', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1257, 'Female', '33', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1258, 'Male', '17', 'Single', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1259, 'Female', '45', 'Married', 'GCSE/O Level', 'British', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (1260, 'Female', '57', 'Married', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1261, 'Female', '18', 'Single', 'A Levels', 'British', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (1262, 'Male', '68', 'Separated', 'A Levels', 'English', 'White', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (1263, 'Female', '27', 'Single', 'Higher/Sub Degree', 'Other', 'White', '15,600 to 20,800', 'South East', 'Yes', 12.0, 15.0, 'Hand-Rolled', 13.5, 99.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1264, 'Female', '40', 'Married', 'GCSE/CSE', 'British', 'White', 'Under 2,600', 'South East', 'Yes', 30.0, 18.0, 'Packets', 24.0, 150.0, '35-44', '1');
INSERT INTO smoking_survey VALUES (1265, 'Male', '77', 'Single', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1266, 'Female', '77', 'Married', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1267, 'Male', '75', 'Married', 'ONC/BTEC', 'English', 'White', 'Above 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '8');
INSERT INTO smoking_survey VALUES (1268, 'Male', '39', 'Married', 'ONC/BTEC', 'British', 'White', '15,600 to 20,800', 'South East', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (1269, 'Female', '21', 'Single', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1270, 'Female', '59', 'Divorced', 'Degree', 'British', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1271, 'Male', '27', 'Single', 'GCSE/CSE', 'British', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1272, 'Female', '67', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1273, 'Female', '50', 'Single', 'Higher/Sub Degree', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1274, 'Female', '64', 'Divorced', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1275, 'Female', '79', 'Widowed', 'No Qualification', 'English', 'Chinese', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1276, 'Male', '31', 'Single', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'South East', 'Yes', 10.0, 20.0, 'Both/Mainly Packets', 15.0, 120.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1277, 'Female', '19', 'Single', 'A Levels', 'British', 'Chinese', '10,400 to 15,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (1278, 'Male', '42', 'Married', 'Degree', 'British', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1279, 'Male', '36', 'Married', 'GCSE/CSE', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1280, 'Male', '36', 'Married', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1281, 'Female', '64', 'Widowed', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1282, 'Female', '53', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1283, 'Female', '39', 'Married', 'GCSE/CSE', 'Irish', 'White', '15,600 to 20,800', 'South East', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (1284, 'Female', '39', 'Married', 'Degree', 'English', 'White', '28,600 to 36,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1285, 'Female', '28', 'Married', 'Degree', 'British', 'White', '5,200 to 10,400', 'South East', 'Yes', 7.0, 7.0, 'Packets', 7.0, 49.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (1286, 'Male', '81', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1287, 'Female', '79', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1288, 'Female', '72', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1289, 'Female', '18', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'South East', 'Yes', 25.0, 25.0, 'Both/Mainly Hand-Rolled', 25.0, 175.0, '18-24', '2');
INSERT INTO smoking_survey VALUES (1290, 'Female', '76', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1291, 'Female', '68', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South East', 'Yes', 8.0, 8.0, 'Packets', 8.0, 56.0, '65+', '3');
INSERT INTO smoking_survey VALUES (1292, 'Female', '28', 'Single', 'GCSE/CSE', 'English', 'White', '10,400 to 15,600', 'South East', 'Yes', 20.0, 15.0, 'Packets', 17.5, 115.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1293, 'Female', '42', 'Divorced', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (1294, 'Female', '26', 'Single', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'South East', 'Yes', 15.0, 15.0, 'Both/Mainly Packets', 15.0, 105.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (1295, 'Female', '19', 'Single', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'South East', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '18-24', '2');
INSERT INTO smoking_survey VALUES (1296, 'Female', '41', 'Divorced', 'Other/Sub Degree', 'Welsh', 'White', '5,200 to 10,400', 'South East', 'Yes', 30.0, 30.0, 'Packets', 30.0, 210.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (1297, 'Female', '82', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1298, 'Male', '36', 'Married', 'Degree', 'British', 'Asian', '15,600 to 20,800', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1299, 'Male', '47', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'Yes', 25.0, 25.0, 'Both/Mainly Hand-Rolled', 25.0, 175.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1300, 'Male', '77', 'Widowed', 'Other/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1301, 'Female', '66', 'Divorced', 'No Qualification', 'English', 'White', 'Under 2,600', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1302, 'Male', '50', 'Divorced', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South East', 'Yes', 15.0, 15.0, 'Hand-Rolled', 15.0, 105.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1303, 'Female', '55', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South East', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1304, 'Female', '36', 'Married', 'A Levels', 'English', 'White', 'Under 2,600', 'South West', 'Yes', 10.0, 0.0, 'Packets', 5.0, 20.0, '35-44', '1');
INSERT INTO smoking_survey VALUES (1305, 'Male', '79', 'Married', 'No Qualification', 'Irish', 'White', 'Unknown', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (1306, 'Female', '67', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1307, 'Female', '42', 'Single', 'A Levels', 'British', 'White', 'Refused', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '9');
INSERT INTO smoking_survey VALUES (1308, 'Female', '76', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1309, 'Female', '44', 'Married', 'Other/Sub Degree', 'British', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1310, 'Female', '75', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1311, 'Female', '24', 'Married', 'Other/Sub Degree', 'British', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (1312, 'Male', '78', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1313, 'Female', '38', 'Married', 'ONC/BTEC', 'British', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1314, 'Male', '22', 'Single', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (1315, 'Female', '62', 'Married', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1316, 'Female', '40', 'Divorced', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South West', 'Yes', 10.0, 5.0, 'Packets', 7.5, 45.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (1317, 'Male', '35', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1318, 'Female', '45', 'Married', 'ONC/BTEC', 'British', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1319, 'Female', '66', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1320, 'Female', '53', 'Divorced', 'Higher/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1321, 'Female', '43', 'Divorced', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'South West', 'Yes', 5.0, 0.0, 'Packets', 2.5, 10.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (1322, 'Female', '72', 'Widowed', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'South West', 'Yes', 3.0, 3.0, 'Packets', 3.0, 21.0, '65+', '2');
INSERT INTO smoking_survey VALUES (1323, 'Female', '72', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1324, 'Female', '67', 'Married', 'Higher/Sub Degree', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1325, 'Female', '37', 'Divorced', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1326, 'Male', '38', 'Married', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1327, 'Female', '39', 'Married', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'South West', 'Yes', 10.0, 6.0, 'Both/Mainly Packets', 8.0, 50.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (1328, 'Male', '64', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1329, 'Male', '72', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1330, 'Male', '54', 'Married', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'South West', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (1331, 'Female', '59', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1332, 'Female', '50', 'Married', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (1333, 'Male', '33', 'Married', 'GCSE/O Level', 'English', 'White', 'Above 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (1334, 'Female', '45', 'Married', 'Higher/Sub Degree', 'English', 'White', '20,800 to 28,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1335, 'Female', '73', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1336, 'Male', '68', 'Married', 'Degree', 'British', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (1337, 'Female', '33', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1338, 'Female', '21', 'Single', 'ONC/BTEC', 'British', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1339, 'Female', '32', 'Married', 'Degree', 'English', 'White', '20,800 to 28,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1340, 'Male', '37', 'Married', 'Other/Sub Degree', 'British', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1341, 'Female', '48', 'Single', 'Degree', 'English', 'White', 'Refused', 'South West', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '45-54', '9');
INSERT INTO smoking_survey VALUES (1342, 'Male', '25', 'Single', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'South West', 'Yes', 40.0, 20.0, 'Packets', 30.0, 180.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1343, 'Male', '61', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'Yes', 30.0, 10.0, 'Hand-Rolled', 20.0, 110.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (1344, 'Female', '86', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1345, 'Female', '45', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1346, 'Female', '60', 'Divorced', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (1347, 'Female', '40', 'Single', 'Degree', 'British', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1348, 'Male', '55', 'Married', 'No Qualification', 'British', 'White', 'Refused', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (1349, 'Male', '53', 'Separated', 'GCSE/O Level', 'Welsh', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (1350, 'Male', '41', 'Married', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (1351, 'Female', '17', 'Single', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'South West', 'Yes', 20.0, 10.0, 'Both/Mainly Packets', 15.0, 90.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (1352, 'Female', '42', 'Divorced', 'Higher/Sub Degree', 'English', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1353, 'Male', '44', 'Married', 'GCSE/O Level', 'English', 'White', '20,800 to 28,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1354, 'Female', '43', 'Married', 'A Levels', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1355, 'Female', '39', 'Married', 'Other/Sub Degree', 'Other', 'White', '2,600 to 5,200', 'South West', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (1356, 'Male', '67', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1357, 'Female', '73', 'Married', 'No Qualification', 'British', 'White', 'Under 2,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1358, 'Female', '16', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1359, 'Female', '73', 'Widowed', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1360, 'Male', '52', 'Married', 'Degree', 'Scottish', 'White', 'Above 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (1361, 'Male', '72', 'Single', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1362, 'Male', '79', 'Married', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1363, 'Female', '90', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1364, 'Male', '27', 'Single', 'Higher/Sub Degree', 'English', 'White', '20,800 to 28,600', 'South West', 'Yes', 30.0, 10.0, 'Packets', 20.0, 110.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (1365, 'Male', '32', 'Divorced', 'Degree', 'English', 'White', 'Above 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (1366, 'Female', '38', 'Divorced', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1367, 'Female', '21', 'Single', 'Degree', 'British', 'White', 'Under 2,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (1368, 'Male', '40', 'Married', 'A Levels', 'British', 'White', 'Above 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1369, 'Male', '28', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (1370, 'Male', '47', 'Married', 'A Levels', 'English', 'White', 'Above 36,400', 'South West', 'Yes', 40.0, 40.0, 'Packets', 40.0, 280.0, '45-54', '8');
INSERT INTO smoking_survey VALUES (1371, 'Female', '45', 'Married', 'Degree', 'British', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1372, 'Female', '95', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1373, 'Male', '18', 'Single', 'A Levels', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1374, 'Female', '89', 'Widowed', 'GCSE/O Level', 'English', 'White', 'Unknown', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (1375, 'Female', '82', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1376, 'Male', '65', 'Married', 'A Levels', 'English', 'White', '28,600 to 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '7');
INSERT INTO smoking_survey VALUES (1377, 'Female', '87', 'Widowed', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1378, 'Male', '30', 'Single', 'Higher/Sub Degree', 'English', 'White', '20,800 to 28,600', 'South West', 'Yes', 4.0, 1.0, 'Packets', 2.5, 13.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (1379, 'Female', '77', 'Widowed', 'Degree', 'English', 'White', '28,600 to 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '7');
INSERT INTO smoking_survey VALUES (1380, 'Female', '55', 'Divorced', 'Degree', 'British', 'White', 'Above 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (1381, 'Female', '33', 'Married', 'Degree', 'British', 'Asian', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1382, 'Female', '56', 'Married', 'No Qualification', 'British', 'Black', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1383, 'Female', '68', 'Divorced', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South West', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '65+', '2');
INSERT INTO smoking_survey VALUES (1384, 'Female', '73', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1385, 'Female', '66', 'Single', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1386, 'Female', '73', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1387, 'Male', '42', 'Married', 'Higher/Sub Degree', 'English', 'White', '20,800 to 28,600', 'South West', 'Yes', 12.0, 0.0, 'Packets', 6.0, 24.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (1388, 'Male', '41', 'Single', 'No Qualification', 'Welsh', 'White', 'Refused', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '9');
INSERT INTO smoking_survey VALUES (1389, 'Female', '35', 'Married', 'GCSE/CSE', 'British', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1390, 'Female', '53', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (1391, 'Female', '74', 'Divorced', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1392, 'Male', '46', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South West', 'Yes', 25.0, 25.0, 'Hand-Rolled', 25.0, 175.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (1393, 'Female', '22', 'Single', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1394, 'Male', '27', 'Married', 'A Levels', 'English', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (1395, 'Female', '71', 'Married', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1396, 'Male', '78', 'Widowed', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1397, 'Female', '38', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1398, 'Female', '31', 'Married', 'A Levels', 'British', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1399, 'Female', '54', 'Married', 'Degree', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (1400, 'Female', '31', 'Single', 'GCSE/CSE', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1401, 'Male', '53', 'Married', 'ONC/BTEC', 'English', 'Mixed', 'Above 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (1402, 'Female', '36', 'Single', 'GCSE/O Level', 'English', 'White', '2,600 to 5,200', 'South West', 'Yes', 20.0, 20.0, 'Both/Mainly Packets', 20.0, 140.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (1403, 'Male', '41', 'Married', 'Other/Sub Degree', 'English', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1404, 'Male', '78', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South West', 'Yes', 15.0, 12.0, 'Packets', 13.5, 90.0, '65+', '3');
INSERT INTO smoking_survey VALUES (1405, 'Female', '54', 'Divorced', 'GCSE/O Level', 'British', 'White', '2,600 to 5,200', 'South West', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (1406, 'Female', '72', 'Divorced', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1407, 'Male', '28', 'Married', 'Other/Sub Degree', 'English', 'White', '20,800 to 28,600', 'South West', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (1408, 'Female', '41', 'Separated', 'GCSE/O Level', 'British', 'White', '5,200 to 10,400', 'South West', 'Yes', 20.0, 15.0, 'Both/Mainly Packets', 17.5, 115.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (1409, 'Female', '78', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1410, 'Male', '71', 'Widowed', 'No Qualification', 'Welsh', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1411, 'Female', '57', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1412, 'Male', '31', 'Married', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'South West', 'Yes', 1.0, 5.0, 'Packets', 3.0, 27.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1413, 'Female', '64', 'Widowed', 'No Qualification', 'Irish', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1414, 'Male', '65', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1415, 'Male', '61', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1416, 'Male', '33', 'Married', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1417, 'Female', '60', 'Married', 'ONC/BTEC', 'English', 'White', 'Refused', 'South West', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '55-64', '9');
INSERT INTO smoking_survey VALUES (1418, 'Male', '40', 'Married', 'Higher/Sub Degree', 'British', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1419, 'Female', '68', 'Married', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1420, 'Female', '36', 'Married', 'No Qualification', 'English', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1421, 'Female', '35', 'Married', 'GCSE/O Level', 'English', 'White', 'Under 2,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (1422, 'Male', '22', 'Single', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'South West', 'Yes', 20.0, 5.0, 'Packets', 12.5, 65.0, '18-24', '6');
INSERT INTO smoking_survey VALUES (1423, 'Female', '43', 'Married', 'GCSE/CSE', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (1424, 'Male', '84', 'Widowed', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1425, 'Female', '24', 'Single', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (1426, 'Male', '68', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'Yes', 25.0, 12.0, 'Hand-Rolled', 18.5, 110.0, '65+', '3');
INSERT INTO smoking_survey VALUES (1427, 'Male', '35', 'Single', 'Other/Sub Degree', 'British', 'White', 'Under 2,600', 'South West', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '35-44', '1');
INSERT INTO smoking_survey VALUES (1428, 'Female', '51', 'Divorced', 'Other/Sub Degree', 'English', 'White', 'Unknown', 'South West', 'Yes', 25.0, 25.0, 'Packets', 25.0, 175.0, '45-54', '10');
INSERT INTO smoking_survey VALUES (1429, 'Male', '45', 'Married', 'ONC/BTEC', 'British', 'White', '28,600 to 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (1430, 'Female', '45', 'Single', 'No Qualification', 'English', 'White', 'Refused', 'South West', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '45-54', '9');
INSERT INTO smoking_survey VALUES (1431, 'Male', '71', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1432, 'Female', '47', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South West', 'Yes', 20.0, 15.0, 'Packets', 17.5, 115.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1433, 'Female', '39', 'Married', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1434, 'Male', '62', 'Married', 'Higher/Sub Degree', 'English', 'White', '2,600 to 5,200', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1435, 'Female', '37', 'Single', 'Degree', 'British', 'White', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1436, 'Female', '71', 'Married', 'No Qualification', 'English', 'White', 'Refused', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1437, 'Male', '49', 'Divorced', 'Degree', 'English', 'White', '28,600 to 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (1438, 'Female', '22', 'Single', 'GCSE/CSE', 'British', 'White', '2,600 to 5,200', 'South West', 'Yes', 30.0, 20.0, 'Both/Mainly Packets', 25.0, 160.0, '18-24', '2');
INSERT INTO smoking_survey VALUES (1439, 'Male', '61', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (1440, 'Male', '34', 'Single', 'GCSE/O Level', 'British', 'White', '20,800 to 28,600', 'South West', 'Yes', 10.0, 5.0, 'Packets', 7.5, 45.0, '25-34', '6');
INSERT INTO smoking_survey VALUES (1441, 'Female', '40', 'Separated', 'Degree', 'British', 'White', 'Above 36,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1442, 'Female', '27', 'Separated', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South West', 'Yes', 20.0, 20.0, 'Both/Mainly Packets', 20.0, 140.0, '25-34', '2');
INSERT INTO smoking_survey VALUES (1443, 'Male', '28', 'Single', 'ONC/BTEC', 'English', 'White', '10,400 to 15,600', 'South West', 'Yes', 12.0, 12.0, 'Packets', 12.0, 84.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1444, 'Female', '28', 'Single', 'A Levels', 'British', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1445, 'Male', '36', 'Married', 'GCSE/CSE', 'English', 'White', '20,800 to 28,600', 'South West', 'Yes', 20.0, 30.0, 'Both/Mainly Packets', 25.0, 190.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (1446, 'Female', '34', 'Single', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'South West', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (1447, 'Male', '19', 'Single', 'A Levels', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '4');
INSERT INTO smoking_survey VALUES (1448, 'Female', '31', 'Divorced', 'GCSE/O Level', 'English', 'White', '15,600 to 20,800', 'South West', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1449, 'Male', '49', 'Divorced', 'No Qualification', 'English', 'White', 'Refused', 'South West', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '45-54', '9');
INSERT INTO smoking_survey VALUES (1450, 'Male', '42', 'Divorced', 'A Levels', 'Irish', 'White', '2,600 to 5,200', 'South West', 'Yes', 50.0, 50.0, 'Hand-Rolled', 50.0, 350.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (1451, 'Female', '38', 'Married', 'No Qualification', 'English', 'White', 'Under 2,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '1');
INSERT INTO smoking_survey VALUES (1452, 'Male', '16', 'Single', 'No Qualification', 'English', 'White', 'Under 2,600', 'South West', 'Yes', 6.0, 6.0, 'Both/Mainly Packets', 6.0, 42.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (1453, 'Male', '73', 'Married', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1454, 'Male', '36', 'Married', 'GCSE/O Level', 'English', 'Asian', '15,600 to 20,800', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1455, 'Female', '81', 'Married', 'No Qualification', 'Welsh', 'White', 'Under 2,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1456, 'Female', '97', 'Widowed', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1457, 'Male', '38', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1458, 'Female', '46', 'Married', 'Other/Sub Degree', 'British', 'White', '5,200 to 10,400', 'South West', 'Yes', 12.0, 7.0, 'Packets', 9.5, 59.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1459, 'Male', '79', 'Married', 'No Qualification', 'English', 'White', '5,200 to 10,400', 'South West', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1460, 'Female', '76', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'South West', 'Yes', 4.0, 4.0, 'Packets', 4.0, 28.0, '65+', '2');
INSERT INTO smoking_survey VALUES (1461, 'Female', '54', 'Widowed', 'No Qualification', 'Irish', 'White', '2,600 to 5,200', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (1462, 'Male', '59', 'Married', 'Degree', 'English', 'White', 'Above 36,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (1463, 'Male', '52', 'Separated', 'Degree', 'British', 'White', 'Above 36,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '8');
INSERT INTO smoking_survey VALUES (1464, 'Male', '58', 'Divorced', 'No Qualification', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'Yes', 20.0, 20.0, 'Both/Mainly Packets', 20.0, 140.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (1465, 'Male', '69', 'Divorced', 'Degree', 'Welsh', 'White', '15,600 to 20,800', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (1466, 'Male', '67', 'Widowed', 'Degree', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1467, 'Female', '76', 'Married', 'Other/Sub Degree', 'Welsh', 'White', 'Refused', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1468, 'Male', '33', 'Married', 'No Qualification', 'British', 'Asian', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1469, 'Male', '61', 'Separated', 'No Qualification', 'Welsh', 'White', 'Refused', 'Wales', 'Yes', 30.0, 30.0, 'Hand-Rolled', 30.0, 210.0, '55-64', '9');
INSERT INTO smoking_survey VALUES (1470, 'Female', '82', 'Widowed', 'No Qualification', 'Welsh', 'White', 'Refused', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1471, 'Male', '62', 'Married', 'No Qualification', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1472, 'Male', '66', 'Divorced', 'No Qualification', 'Welsh', 'White', 'Refused', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1473, 'Female', '69', 'Widowed', 'No Qualification', 'Welsh', 'White', 'Under 2,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1474, 'Female', '25', 'Married', 'No Qualification', 'Other', 'Asian', 'Refused', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '9');
INSERT INTO smoking_survey VALUES (1475, 'Male', '29', 'Single', 'Degree', 'Welsh', 'White', '20,800 to 28,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1476, 'Male', '28', 'Married', 'Degree', 'British', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1477, 'Female', '52', 'Single', 'Degree', 'Other', 'White', '28,600 to 36,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '7');
INSERT INTO smoking_survey VALUES (1478, 'Female', '81', 'Widowed', 'No Qualification', 'Welsh', 'White', 'Refused', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1479, 'Female', '44', 'Married', 'GCSE/O Level', 'Welsh', 'White', '10,400 to 15,600', 'Wales', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (1480, 'Female', '62', 'Married', 'GCSE/O Level', 'Welsh', 'White', 'Refused', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (1481, 'Male', '45', 'Married', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (1482, 'Female', '71', 'Widowed', 'No Qualification', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1483, 'Female', '72', 'Married', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1484, 'Female', '69', 'Widowed', 'No Qualification', 'English', 'White', 'Unknown', 'Wales', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '65+', '10');
INSERT INTO smoking_survey VALUES (1485, 'Female', '72', 'Widowed', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '65+', '2');
INSERT INTO smoking_survey VALUES (1486, 'Male', '61', 'Married', 'No Qualification', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1487, 'Female', '29', 'Married', 'A Levels', 'British', 'White', '2,600 to 5,200', 'Wales', 'Yes', 5.0, 2.0, 'Packets', 3.5, 20.0, '25-34', '2');
INSERT INTO smoking_survey VALUES (1488, 'Female', '37', 'Single', 'Higher/Sub Degree', 'British', 'White', '5,200 to 10,400', 'Wales', 'Yes', 30.0, 30.0, 'Packets', 30.0, 210.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (1489, 'Male', '29', 'Single', 'GCSE/O Level', 'Welsh', 'White', '15,600 to 20,800', 'Wales', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1490, 'Male', '57', 'Married', 'No Qualification', 'English', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (1491, 'Male', '60', 'Married', 'GCSE/O Level', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1492, 'Male', '38', 'Married', 'Higher/Sub Degree', 'Welsh', 'White', '28,600 to 36,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1493, 'Male', '74', 'Married', 'No Qualification', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1494, 'Male', '38', 'Married', 'Higher/Sub Degree', 'Welsh', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1495, 'Female', '51', 'Divorced', 'GCSE/O Level', 'Welsh', 'White', 'Refused', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '9');
INSERT INTO smoking_survey VALUES (1496, 'Male', '68', 'Married', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'Yes', 15.0, 15.0, 'Hand-Rolled', 15.0, 105.0, '65+', '2');
INSERT INTO smoking_survey VALUES (1497, 'Male', '67', 'Married', 'Higher/Sub Degree', 'Welsh', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1498, 'Male', '32', 'Single', 'GCSE/O Level', 'Welsh', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1499, 'Female', '25', 'Married', 'ONC/BTEC', 'British', 'Asian', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1500, 'Male', '53', 'Married', 'No Qualification', 'Welsh', 'White', '15,600 to 20,800', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (1501, 'Female', '52', 'Divorced', 'No Qualification', 'Welsh', 'Unknown', '5,200 to 10,400', 'Wales', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1502, 'Female', '21', 'Single', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1503, 'Female', '71', 'Divorced', 'No Qualification', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1504, 'Female', '30', 'Married', 'GCSE/O Level', 'British', 'White', 'Under 2,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '1');
INSERT INTO smoking_survey VALUES (1505, 'Male', '23', 'Single', 'GCSE/O Level', 'Welsh', 'White', '15,600 to 20,800', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '5');
INSERT INTO smoking_survey VALUES (1506, 'Female', '28', 'Single', 'Higher/Sub Degree', 'Welsh', 'White', '10,400 to 15,600', 'Wales', 'Yes', 0.0, 1.0, 'Packets', 0.5, 5.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1507, 'Female', '37', 'Married', 'GCSE/O Level', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1508, 'Female', '84', 'Widowed', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1509, 'Female', '61', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1510, 'Female', '18', 'Single', 'GCSE/O Level', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1511, 'Female', '55', 'Married', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1512, 'Male', '52', 'Single', 'Higher/Sub Degree', 'British', 'White', '20,800 to 28,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1513, 'Female', '46', 'Married', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'Yes', 25.0, 25.0, 'Packets', 25.0, 175.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (1514, 'Female', '46', 'Married', 'Other/Sub Degree', 'British', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (1515, 'Male', '23', 'Single', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1516, 'Male', '58', 'Married', 'Degree', 'British', 'White', '20,800 to 28,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '6');
INSERT INTO smoking_survey VALUES (1517, 'Male', '16', 'Single', 'GCSE/O Level', 'Welsh', 'White', 'Under 2,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '1');
INSERT INTO smoking_survey VALUES (1518, 'Male', '71', 'Married', 'No Qualification', 'Welsh', 'White', '15,600 to 20,800', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (1519, 'Female', '47', 'Married', 'No Qualification', 'British', 'White', '2,600 to 5,200', 'Wales', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (1520, 'Male', '34', 'Married', 'Degree', 'Welsh', 'White', '20,800 to 28,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1521, 'Female', '55', 'Single', 'No Qualification', 'British', 'White', 'Above 36,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (1522, 'Female', '78', 'Widowed', 'Other/Sub Degree', 'British', 'White', '20,800 to 28,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (1523, 'Male', '35', 'Single', 'No Qualification', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'Yes', 40.0, 40.0, 'Hand-Rolled', 40.0, 280.0, '35-44', '2');
INSERT INTO smoking_survey VALUES (1524, 'Male', '68', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (1525, 'Male', '76', 'Single', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1526, 'Male', '28', 'Single', 'GCSE/CSE', 'Welsh', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1527, 'Female', '36', 'Divorced', 'GCSE/CSE', 'British', 'White', '5,200 to 10,400', 'Wales', 'Yes', 20.0, 20.0, 'Both/Mainly Packets', 20.0, 140.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (1528, 'Female', '57', 'Divorced', 'ONC/BTEC', 'English', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1529, 'Female', '29', 'Single', 'Higher/Sub Degree', 'Welsh', 'White', '10,400 to 15,600', 'Wales', 'Yes', 20.0, 10.0, 'Both/Mainly Packets', 15.0, 90.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1530, 'Female', '27', 'Single', 'GCSE/O Level', 'Welsh', 'White', '5,200 to 10,400', 'Wales', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (1531, 'Female', '64', 'Widowed', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1532, 'Female', '89', 'Single', 'No Qualification', 'Welsh', 'White', 'Refused', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1533, 'Female', '26', 'Single', 'GCSE/CSE', 'Welsh', 'White', '2,600 to 5,200', 'Wales', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '25-34', '2');
INSERT INTO smoking_survey VALUES (1534, 'Male', '27', 'Single', 'Higher/Sub Degree', 'Welsh', 'White', '20,800 to 28,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '6');
INSERT INTO smoking_survey VALUES (1535, 'Male', '66', 'Single', 'Higher/Sub Degree', 'English', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1536, 'Female', '84', 'Widowed', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1537, 'Male', '41', 'Single', 'Higher/Sub Degree', 'British', 'White', '20,800 to 28,600', 'Wales', 'Yes', 20.0, 12.0, 'Packets', 16.0, 100.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (1538, 'Male', '27', 'Single', 'Degree', 'British', 'White', '15,600 to 20,800', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (1539, 'Female', '40', 'Divorced', 'GCSE/O Level', 'English', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1540, 'Female', '79', 'Widowed', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1541, 'Male', '49', 'Married', 'No Qualification', 'English', 'White', '20,800 to 28,600', 'Wales', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '6');
INSERT INTO smoking_survey VALUES (1542, 'Female', '79', 'Widowed', 'No Qualification', 'British', 'White', 'Unknown', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '10');
INSERT INTO smoking_survey VALUES (1543, 'Female', '54', 'Married', 'No Qualification', 'Welsh', 'White', 'Under 2,600', 'Wales', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (1544, 'Male', '25', 'Single', 'GCSE/O Level', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (1545, 'Female', '45', 'Single', 'Degree', 'Scottish', 'White', '28,600 to 36,400', 'Scotland', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '45-54', '7');
INSERT INTO smoking_survey VALUES (1546, 'Female', '24', 'Single', 'Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 5.0, 5.0, 'Packets', 5.0, 35.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (1547, 'Female', '54', 'Divorced', 'No Qualification', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (1548, 'Female', '78', 'Widowed', 'No Qualification', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '5');
INSERT INTO smoking_survey VALUES (1549, 'Male', '50', 'Married', 'No Qualification', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 25.0, 25.0, 'Hand-Rolled', 25.0, 175.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (1550, 'Female', '42', 'Married', 'Degree', 'Scottish', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1551, 'Female', '32', 'Single', 'A Levels', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 10.0, 10.0, 'Packets', 10.0, 70.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1552, 'Male', '75', 'Single', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1553, 'Female', '25', 'Single', 'GCSE/O Level', 'Scottish', 'White', 'Under 2,600', 'Scotland', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '25-34', '1');
INSERT INTO smoking_survey VALUES (1554, 'Male', '50', 'Separated', 'Higher/Sub Degree', 'Scottish', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1555, 'Male', '24', 'Single', 'Higher/Sub Degree', 'Scottish', 'White', '28,600 to 36,400', 'Scotland', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '18-24', '7');
INSERT INTO smoking_survey VALUES (1556, 'Male', '35', 'Single', 'Higher/Sub Degree', 'British', 'White', '28,600 to 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1557, 'Female', '52', 'Married', 'No Qualification', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (1558, 'Female', '42', 'Married', 'Degree', 'British', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1559, 'Male', '44', 'Separated', 'GCSE/O Level', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1560, 'Male', '67', 'Widowed', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 20.0, 12.0, 'Hand-Rolled', 16.0, 100.0, '65+', '3');
INSERT INTO smoking_survey VALUES (1561, 'Female', '69', 'Widowed', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1562, 'Female', '91', 'Single', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1563, 'Male', '61', 'Divorced', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1564, 'Female', '50', 'Single', 'Degree', 'British', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1565, 'Male', '37', 'Single', 'Higher/Sub Degree', 'Scottish', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1566, 'Female', '35', 'Single', 'Higher/Sub Degree', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (1567, 'Male', '24', 'Single', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 20.0, 15.0, 'Packets', 17.5, 115.0, '18-24', '4');
INSERT INTO smoking_survey VALUES (1568, 'Female', '39', 'Single', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '3');
INSERT INTO smoking_survey VALUES (1569, 'Female', '79', 'Divorced', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1570, 'Male', '40', 'Married', 'Degree', 'Scottish', 'White', 'Above 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1571, 'Male', '60', 'Married', 'Degree', 'British', 'White', 'Above 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (1572, 'Male', '42', 'Married', 'No Qualification', 'Scottish', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1573, 'Male', '64', 'Widowed', 'Other/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1574, 'Female', '55', 'Married', 'GCSE/O Level', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 2.0, 10.0, 'Packets', 6.0, 54.0, '55-64', '5');
INSERT INTO smoking_survey VALUES (1575, 'Male', '54', 'Married', 'Other/Sub Degree', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (1576, 'Female', '61', 'Married', 'Higher/Sub Degree', 'British', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (1577, 'Female', '62', 'Divorced', 'Higher/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1578, 'Female', '59', 'Divorced', 'Degree', 'Scottish', 'White', 'Unknown', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '10');
INSERT INTO smoking_survey VALUES (1579, 'Female', '79', 'Widowed', 'GCSE/CSE', 'Scottish', 'White', 'Refused', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1580, 'Female', '37', 'Married', 'Degree', 'British', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1581, 'Female', '55', 'Married', 'Other/Sub Degree', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'Yes', 12.0, 8.0, 'Packets', 10.0, 64.0, '55-64', '2');
INSERT INTO smoking_survey VALUES (1582, 'Female', '88', 'Widowed', 'Higher/Sub Degree', 'Scottish', 'White', '28,600 to 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '7');
INSERT INTO smoking_survey VALUES (1583, 'Female', '39', 'Divorced', 'Degree', 'British', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1584, 'Male', '34', 'Single', 'Degree', 'British', 'White', 'Above 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '8');
INSERT INTO smoking_survey VALUES (1585, 'Male', '42', 'Married', 'Degree', 'Scottish', 'White', '28,600 to 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '7');
INSERT INTO smoking_survey VALUES (1586, 'Female', '45', 'Married', 'Degree', 'British', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '2');
INSERT INTO smoking_survey VALUES (1587, 'Male', '59', 'Married', 'ONC/BTEC', 'Scottish', 'White', 'Above 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '8');
INSERT INTO smoking_survey VALUES (1588, 'Male', '58', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 30.0, 30.0, 'Packets', 30.0, 210.0, '55-64', '4');
INSERT INTO smoking_survey VALUES (1589, 'Male', '74', 'Widowed', 'Higher/Sub Degree', 'British', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1590, 'Male', '45', 'Married', 'GCSE/O Level', 'Scottish', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1591, 'Male', '64', 'Married', 'No Qualification', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (1592, 'Male', '53', 'Single', 'Higher/Sub Degree', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (1593, 'Male', '40', 'Married', 'GCSE/O Level', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1594, 'Male', '30', 'Married', 'ONC/BTEC', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1595, 'Male', '70', 'Married', 'No Qualification', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1596, 'Female', '28', 'Separated', 'ONC/BTEC', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1597, 'Female', '78', 'Widowed', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1598, 'Male', '41', 'Married', 'A Levels', 'Scottish', 'White', '20,800 to 28,600', 'Scotland', 'Yes', 24.0, 24.0, 'Packets', 24.0, 168.0, '35-44', '6');
INSERT INTO smoking_survey VALUES (1599, 'Female', '69', 'Divorced', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1600, 'Male', '54', 'Married', 'GCSE/O Level', 'Scottish', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1601, 'Male', '59', 'Married', 'ONC/BTEC', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '55-64', '5');
INSERT INTO smoking_survey VALUES (1602, 'Female', '23', 'Single', 'GCSE/O Level', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 15.0, 15.0, 'Packets', 15.0, 105.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (1603, 'Male', '40', 'Married', 'No Qualification', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 30.0, 15.0, 'Packets', 22.5, 135.0, '35-44', '5');
INSERT INTO smoking_survey VALUES (1604, 'Male', '17', 'Single', 'GCSE/O Level', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 15.0, 6.0, 'Packets', 10.5, 60.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (1605, 'Male', '54', 'Single', 'No Qualification', 'British', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1606, 'Female', '49', 'Divorced', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1607, 'Male', '55', 'Married', 'Higher/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 45.0, 45.0, 'Hand-Rolled', 45.0, 315.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (1608, 'Male', '51', 'Widowed', 'ONC/BTEC', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1609, 'Female', '73', 'Married', 'No Qualification', 'Scottish', 'White', 'Under 2,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1610, 'Female', '41', 'Married', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (1611, 'Female', '70', 'Married', 'GCSE/O Level', 'British', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '6');
INSERT INTO smoking_survey VALUES (1612, 'Female', '44', 'Separated', 'No Qualification', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (1613, 'Male', '51', 'Divorced', 'No Qualification', 'Scottish', 'White', 'Under 2,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '1');
INSERT INTO smoking_survey VALUES (1614, 'Male', '68', 'Married', 'Degree', 'Irish', 'White', '28,600 to 36,400', 'Scotland', 'Yes', 1.0, 0.0, 'Packets', 0.5, 2.0, '65+', '7');
INSERT INTO smoking_survey VALUES (1615, 'Female', '75', 'Separated', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1616, 'Male', '60', 'Married', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 20.0, 15.0, 'Packets', 17.5, 115.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (1617, 'Male', '56', 'Married', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '2');
INSERT INTO smoking_survey VALUES (1618, 'Male', '64', 'Widowed', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1619, 'Female', '27', 'Single', 'Degree', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1620, 'Female', '73', 'Widowed', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 20.0, 12.0, 'Packets', 16.0, 100.0, '65+', '3');
INSERT INTO smoking_survey VALUES (1621, 'Male', '34', 'Single', 'GCSE/O Level', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 10.0, 2.0, 'Packets', 6.0, 30.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1622, 'Male', '47', 'Married', 'GCSE/O Level', 'British', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 15.0, 10.0, 'Hand-Rolled', 12.5, 80.0, '45-54', '4');
INSERT INTO smoking_survey VALUES (1623, 'Male', '32', 'Single', 'A Levels', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
INSERT INTO smoking_survey VALUES (1624, 'Male', '63', 'Married', 'No Qualification', 'British', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '5');
INSERT INTO smoking_survey VALUES (1625, 'Female', '23', 'Single', 'Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (1626, 'Female', '63', 'Married', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1627, 'Female', '46', 'Divorced', 'A Levels', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (1628, 'Male', '48', 'Single', 'A Levels', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '4');
INSERT INTO smoking_survey VALUES (1629, 'Male', '68', 'Married', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1630, 'Male', '52', 'Separated', 'No Qualification', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '5');
INSERT INTO smoking_survey VALUES (1631, 'Female', '29', 'Separated', 'No Qualification', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 10.0, 6.0, 'Packets', 8.0, 50.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1632, 'Female', '16', 'Single', 'No Qualification', 'Scottish', 'White', 'Refused', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (1633, 'Male', '41', 'Divorced', 'A Levels', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1634, 'Female', '48', 'Widowed', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1635, 'Male', '24', 'Single', 'A Levels', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (1636, 'Male', '72', 'Widowed', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 40.0, 40.0, 'Hand-Rolled', 40.0, 280.0, '65+', '3');
INSERT INTO smoking_survey VALUES (1637, 'Male', '45', 'Married', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '5');
INSERT INTO smoking_survey VALUES (1638, 'Female', '28', 'Married', 'Degree', 'British', 'White', '28,600 to 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '7');
INSERT INTO smoking_survey VALUES (1639, 'Male', '20', 'Single', 'A Levels', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (1640, 'Female', '69', 'Widowed', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1641, 'Female', '70', 'Married', 'No Qualification', 'Scottish', 'White', 'Under 2,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1642, 'Male', '50', 'Married', 'GCSE/CSE', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 25.0, 20.0, 'Both/Mainly Packets', 22.5, 150.0, '45-54', '5');
INSERT INTO smoking_survey VALUES (1643, 'Male', '63', 'Married', 'A Levels', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '55-64', '3');
INSERT INTO smoking_survey VALUES (1644, 'Male', '44', 'Married', 'GCSE/O Level', 'British', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1645, 'Female', '83', 'Widowed', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1646, 'Female', '17', 'Single', 'GCSE/CSE', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 20.0, 15.0, 'Packets', 17.5, 115.0, '18-24', '3');
INSERT INTO smoking_survey VALUES (1647, 'Female', '61', 'Married', 'Other/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '3');
INSERT INTO smoking_survey VALUES (1648, 'Female', '47', 'Married', 'GCSE/O Level', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 15.0, 20.0, 'Packets', 17.5, 130.0, '45-54', '3');
INSERT INTO smoking_survey VALUES (1649, 'Male', '57', 'Married', 'Degree', 'Scottish', 'White', '28,600 to 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (1650, 'Female', '44', 'Married', 'GCSE/O Level', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 15.0, 10.0, 'Packets', 12.5, 80.0, '35-44', '3');
INSERT INTO smoking_survey VALUES (1651, 'Male', '52', 'Single', 'GCSE/CSE', 'Irish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 25.0, 20.0, 'Both/Mainly Packets', 22.5, 150.0, '45-54', '5');
INSERT INTO smoking_survey VALUES (1652, 'Male', '82', 'Married', 'No Qualification', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1653, 'Male', '63', 'Married', 'A Levels', 'Scottish', 'White', '28,600 to 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '7');
INSERT INTO smoking_survey VALUES (1654, 'Female', '72', 'Separated', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1655, 'Male', '39', 'Married', 'Higher/Sub Degree', 'Scottish', 'White', 'Above 36,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '8');
INSERT INTO smoking_survey VALUES (1656, 'Male', '16', 'Single', 'No Qualification', 'Scottish', 'White', 'Refused', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '9');
INSERT INTO smoking_survey VALUES (1657, 'Female', '35', 'Divorced', 'Degree', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '5');
INSERT INTO smoking_survey VALUES (1658, 'Female', '39', 'Married', 'Degree', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1659, 'Male', '56', 'Separated', 'No Qualification', 'Scottish', 'White', 'Refused', 'Scotland', 'Yes', 10.0, 10.0, 'Hand-Rolled', 10.0, 70.0, '55-64', '9');
INSERT INTO smoking_survey VALUES (1660, 'Female', '31', 'Single', 'Other/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 60.0, 30.0, 'Packets', 45.0, 270.0, '25-34', '3');
INSERT INTO smoking_survey VALUES (1661, 'Male', '61', 'Married', 'No Qualification', 'Scottish', 'White', 'Under 2,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '1');
INSERT INTO smoking_survey VALUES (1662, 'Male', '23', 'Separated', 'GCSE/O Level', 'Scottish', 'White', 'Under 2,600', 'Scotland', 'Yes', 5.0, 0.0, 'Packets', 2.5, 10.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (1663, 'Male', '34', 'Single', 'No Qualification', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 35.0, 18.0, 'Both/Mainly Hand-Rolled', 26.5, 160.0, '25-34', '4');
INSERT INTO smoking_survey VALUES (1664, 'Male', '24', 'Single', 'Degree', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '5');
INSERT INTO smoking_survey VALUES (1665, 'Male', '82', 'Single', 'Other/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1666, 'Male', '27', 'Married', 'A Levels', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '5');
INSERT INTO smoking_survey VALUES (1667, 'Female', '62', 'Divorced', 'GCSE/CSE', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'Yes', 18.0, 18.0, 'Packets', 18.0, 126.0, '55-64', '2');
INSERT INTO smoking_survey VALUES (1668, 'Male', '39', 'Married', 'Higher/Sub Degree', 'British', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '6');
INSERT INTO smoking_survey VALUES (1669, 'Male', '44', 'Separated', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '2');
INSERT INTO smoking_survey VALUES (1670, 'Female', '43', 'Single', 'No Qualification', 'British', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 25.0, 20.0, 'Packets', 22.5, 150.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (1671, 'Male', '31', 'Single', 'GCSE/O Level', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'Yes', 20.0, 15.0, 'Both/Mainly Packets', 17.5, 115.0, '25-34', '2');
INSERT INTO smoking_survey VALUES (1672, 'Male', '77', 'Divorced', 'Other/Sub Degree', 'English', 'White', '5,200 to 10,400', 'Scotland', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '65+', '3');
INSERT INTO smoking_survey VALUES (1673, 'Female', '20', 'Single', 'GCSE/O Level', 'English', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '3');
INSERT INTO smoking_survey VALUES (1674, 'Female', '81', 'Widowed', 'Other/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '3');
INSERT INTO smoking_survey VALUES (1675, 'Female', '31', 'Single', 'GCSE/O Level', 'Scottish', 'White', '15,600 to 20,800', 'Scotland', 'Yes', 20.0, 10.0, 'Packets', 15.0, 90.0, '25-34', '5');
INSERT INTO smoking_survey VALUES (1676, 'Female', '78', 'Married', 'Other/Sub Degree', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '2');
INSERT INTO smoking_survey VALUES (1677, 'Male', '35', 'Married', 'A Levels', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '35-44', '4');
INSERT INTO smoking_survey VALUES (1678, 'Female', '67', 'Widowed', 'No Qualification', 'Scottish', 'White', 'Under 2,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '1');
INSERT INTO smoking_survey VALUES (1679, 'Male', '65', 'Divorced', 'Other/Sub Degree', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '4');
INSERT INTO smoking_survey VALUES (1680, 'Male', '61', 'Married', 'Higher/Sub Degree', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '4');
INSERT INTO smoking_survey VALUES (1681, 'Male', '24', 'Single', 'No Qualification', 'Scottish', 'White', 'Under 2,600', 'Scotland', 'Yes', 15.0, 15.0, 'Hand-Rolled', 15.0, 105.0, '18-24', '1');
INSERT INTO smoking_survey VALUES (1682, 'Male', '53', 'Single', 'No Qualification', 'Scottish', 'White', '20,800 to 28,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '6');
INSERT INTO smoking_survey VALUES (1683, 'Female', '63', 'Married', 'No Qualification', 'British', 'White', 'Refused', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '55-64', '9');
INSERT INTO smoking_survey VALUES (1684, 'Male', '35', 'Married', 'No Qualification', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'Yes', 3.0, 12.0, 'Packets', 7.5, 66.0, '35-44', '4');
INSERT INTO smoking_survey VALUES (1685, 'Male', '78', 'Widowed', 'No Qualification', 'Scottish', 'White', 'Refused', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '65+', '9');
INSERT INTO smoking_survey VALUES (1686, 'Female', '31', 'Single', 'Other/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '3');
INSERT INTO smoking_survey VALUES (1687, 'Male', '22', 'Single', 'No Qualification', 'Scottish', 'White', '2,600 to 5,200', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '18-24', '2');
INSERT INTO smoking_survey VALUES (1688, 'Female', '49', 'Divorced', 'Other/Sub Degree', 'English', 'White', '2,600 to 5,200', 'Scotland', 'Yes', 20.0, 20.0, 'Hand-Rolled', 20.0, 140.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (1689, 'Male', '45', 'Married', 'Other/Sub Degree', 'Scottish', 'White', '5,200 to 10,400', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '45-54', '3');
INSERT INTO smoking_survey VALUES (1690, 'Female', '51', 'Married', 'No Qualification', 'English', 'White', '2,600 to 5,200', 'Scotland', 'Yes', 20.0, 20.0, 'Packets', 20.0, 140.0, '45-54', '2');
INSERT INTO smoking_survey VALUES (1691, 'Male', '31', 'Married', 'Degree', 'Scottish', 'White', '10,400 to 15,600', 'Scotland', 'No', NULL, NULL, NULL, NULL, NULL, '25-34', '4');
COMMIT;

-- Reusable SQLite views for the project
DROP VIEW IF EXISTS v_smokers;
CREATE VIEW v_smokers AS
SELECT * FROM smoking_survey WHERE smoke = 'Yes';

DROP VIEW IF EXISTS v_smoking_rate_by_region;
CREATE VIEW v_smoking_rate_by_region AS
SELECT region, COUNT(*) AS respondents,
       SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers,
       ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct
FROM smoking_survey GROUP BY region;

DROP VIEW IF EXISTS v_smoking_rate_by_age_group;
CREATE VIEW v_smoking_rate_by_age_group AS
SELECT age_group, COUNT(*) AS respondents,
       SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers,
       ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct
FROM smoking_survey GROUP BY age_group;

DROP VIEW IF EXISTS v_smoker_intensity;
CREATE VIEW v_smoker_intensity AS
SELECT respondent_id, gender, age, age_group, region, gross_income, type,
       amt_weekdays, amt_weekends, avg_daily_cigarettes, estimated_weekly_cigarettes
FROM smoking_survey WHERE smoke='Yes';

DROP VIEW IF EXISTS v_income_smoking_summary;
CREATE VIEW v_income_smoking_summary AS
SELECT gross_income, income_band_order, COUNT(*) AS respondents,
       SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers,
       ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct,
       ROUND(AVG(CASE WHEN smoke='Yes' THEN estimated_weekly_cigarettes END),2) AS avg_weekly_cigarettes_smokers
FROM smoking_survey GROUP BY gross_income, income_band_order;


-- Q01: What are the first 10 survey records?
-- Difficulty: Easy | Concept: SELECT
SELECT * FROM smoking_survey ORDER BY respondent_id LIMIT 10;


-- Q02: How many respondents are in the survey?
-- Difficulty: Easy | Concept: COUNT
SELECT COUNT(*) AS total_respondents FROM smoking_survey;


-- Q03: Which gender values occur in the dataset?
-- Difficulty: Easy | Concept: DISTINCT
SELECT DISTINCT gender FROM smoking_survey ORDER BY gender;


-- Q04: What are the minimum, maximum and average ages?
-- Difficulty: Easy | Concept: MIN/MAX/AVG
SELECT MIN(age) AS min_age, MAX(age) AS max_age, ROUND(AVG(age),2) AS avg_age FROM smoking_survey;


-- Q05: Which respondents currently smoke?
-- Difficulty: Easy | Concept: WHERE
SELECT respondent_id, gender, age, region FROM smoking_survey WHERE smoke='Yes' ORDER BY respondent_id LIMIT 50;


-- Q06: Which respondents do not smoke?
-- Difficulty: Easy | Concept: WHERE
SELECT respondent_id, gender, age, region FROM smoking_survey WHERE smoke='No' ORDER BY respondent_id LIMIT 50;


-- Q07: How many smokers and non-smokers are there?
-- Difficulty: Easy | Concept: GROUP BY
SELECT smoke, COUNT(*) AS respondents FROM smoking_survey GROUP BY smoke ORDER BY smoke;


-- Q08: How many respondents are in each region?
-- Difficulty: Easy | Concept: GROUP BY
SELECT region, COUNT(*) AS respondents FROM smoking_survey GROUP BY region ORDER BY respondents DESC, region;


-- Q09: How many respondents are in each marital-status group?
-- Difficulty: Easy | Concept: GROUP BY
SELECT marital_status, COUNT(*) AS respondents FROM smoking_survey GROUP BY marital_status ORDER BY respondents DESC;


-- Q10: How many respondents have each qualification?
-- Difficulty: Easy | Concept: GROUP BY
SELECT highest_qualification, COUNT(*) AS respondents FROM smoking_survey GROUP BY highest_qualification ORDER BY respondents DESC;


-- Q11: How many respondents are in each income band?
-- Difficulty: Easy | Concept: GROUP BY
SELECT gross_income, COUNT(*) AS respondents FROM smoking_survey GROUP BY gross_income, income_band_order ORDER BY income_band_order;


-- Q12: Which smokers have recorded weekday amounts?
-- Difficulty: Easy | Concept: IS NOT NULL
SELECT respondent_id, age, gender, amt_weekdays FROM smoking_survey WHERE smoke='Yes' AND amt_weekdays IS NOT NULL ORDER BY amt_weekdays DESC LIMIT 50;


-- Q13: Which smokers report the highest weekend amount?
-- Difficulty: Easy | Concept: ORDER BY
SELECT respondent_id, age, gender, amt_weekends FROM smoking_survey WHERE smoke='Yes' ORDER BY amt_weekends DESC, respondent_id LIMIT 10;


-- Q14: Which smoking types are recorded?
-- Difficulty: Easy | Concept: DISTINCT
SELECT DISTINCT type FROM smoking_survey WHERE type IS NOT NULL ORDER BY type;


-- Q15: How many smokers use each recorded type?
-- Difficulty: Easy | Concept: GROUP BY
SELECT type, COUNT(*) AS smokers FROM smoking_survey WHERE smoke='Yes' GROUP BY type ORDER BY smokers DESC;


-- Q16: Which respondents are aged 25 to 34?
-- Difficulty: Easy | Concept: BETWEEN
SELECT respondent_id, gender, age, smoke FROM smoking_survey WHERE age BETWEEN 25 AND 34 ORDER BY age, respondent_id LIMIT 100;


-- Q17: How many respondents are in each age group?
-- Difficulty: Easy | Concept: GROUP BY
SELECT age_group, COUNT(*) AS respondents FROM smoking_survey GROUP BY age_group ORDER BY CASE age_group WHEN '18-24' THEN 1 WHEN '25-34' THEN 2 WHEN '35-44' THEN 3 WHEN '45-54' THEN 4 WHEN '55-64' THEN 5 ELSE 6 END;


-- Q18: What are the most common nationalities?
-- Difficulty: Easy | Concept: GROUP BY
SELECT nationality, COUNT(*) AS respondents FROM smoking_survey GROUP BY nationality ORDER BY respondents DESC, nationality LIMIT 15;


-- Q19: What are the ethnicity counts?
-- Difficulty: Easy | Concept: GROUP BY
SELECT ethnicity, COUNT(*) AS respondents FROM smoking_survey GROUP BY ethnicity ORDER BY respondents DESC;


-- Q20: How many smokers are in each region?
-- Difficulty: Easy | Concept: WHERE/GROUP BY
SELECT region, COUNT(*) AS smokers FROM smoking_survey WHERE smoke='Yes' GROUP BY region ORDER BY smokers DESC;


-- Q21: How many smokers are in each gender group?
-- Difficulty: Easy | Concept: WHERE/GROUP BY
SELECT gender, COUNT(*) AS smokers FROM smoking_survey WHERE smoke='Yes' GROUP BY gender ORDER BY smokers DESC;


-- Q22: What is the average weekday amount among smokers?
-- Difficulty: Easy | Concept: AVG
SELECT ROUND(AVG(amt_weekdays),2) AS avg_weekday_cigarettes FROM smoking_survey WHERE smoke='Yes';


-- Q23: What is the average weekend amount among smokers?
-- Difficulty: Easy | Concept: AVG
SELECT ROUND(AVG(amt_weekends),2) AS avg_weekend_cigarettes FROM smoking_survey WHERE smoke='Yes';


-- Q24: How many rows have missing smoking-amount values?
-- Difficulty: Easy | Concept: NULL COUNT
SELECT SUM(CASE WHEN amt_weekdays IS NULL THEN 1 ELSE 0 END) AS missing_weekdays, SUM(CASE WHEN amt_weekends IS NULL THEN 1 ELSE 0 END) AS missing_weekends, SUM(CASE WHEN type IS NULL THEN 1 ELSE 0 END) AS missing_type FROM smoking_survey;


-- Q25: Are smoker-specific fields consistent with smoking status?
-- Difficulty: Easy | Concept: CASE
SELECT smoke, COUNT(*) AS rows, SUM(CASE WHEN amt_weekdays IS NOT NULL OR amt_weekends IS NOT NULL OR type IS NOT NULL THEN 1 ELSE 0 END) AS rows_with_smoking_details FROM smoking_survey GROUP BY smoke;


-- Q26: What is the overall smoking rate?
-- Difficulty: Medium | Concept: Conditional Aggregation
SELECT COUNT(*) AS respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct FROM smoking_survey;


-- Q27: What is the smoking rate in each region?
-- Difficulty: Medium | Concept: Conditional Aggregation
SELECT region, COUNT(*) AS respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct FROM smoking_survey GROUP BY region ORDER BY smoking_rate_pct DESC;


-- Q28: What is the smoking rate by gender?
-- Difficulty: Medium | Concept: Conditional Aggregation
SELECT gender, COUNT(*) AS respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct FROM smoking_survey GROUP BY gender ORDER BY smoking_rate_pct DESC;


-- Q29: What is the smoking rate by age group?
-- Difficulty: Medium | Concept: Conditional Aggregation
SELECT age_group, COUNT(*) AS respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct FROM smoking_survey GROUP BY age_group ORDER BY smoking_rate_pct DESC;


-- Q30: What is the smoking rate by qualification?
-- Difficulty: Medium | Concept: Conditional Aggregation
SELECT highest_qualification, COUNT(*) AS respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct FROM smoking_survey GROUP BY highest_qualification ORDER BY smoking_rate_pct DESC;


-- Q31: What is the smoking rate by income band?
-- Difficulty: Medium | Concept: Conditional Aggregation
SELECT gross_income, COUNT(*) AS respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct FROM smoking_survey GROUP BY gross_income, income_band_order ORDER BY income_band_order;


-- Q32: What is the smoking rate by marital status?
-- Difficulty: Medium | Concept: Conditional Aggregation
SELECT marital_status, COUNT(*) AS respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct FROM smoking_survey GROUP BY marital_status ORDER BY smoking_rate_pct DESC;


-- Q33: Which nationalities with at least 20 respondents have the highest smoking rates?
-- Difficulty: Medium | Concept: HAVING
SELECT nationality, COUNT(*) AS respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct FROM smoking_survey GROUP BY nationality HAVING COUNT(*)>=20 ORDER BY smoking_rate_pct DESC;


-- Q34: Which ethnicity groups with at least 20 respondents have the highest smoking rates?
-- Difficulty: Medium | Concept: HAVING
SELECT ethnicity, COUNT(*) AS respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS smoking_rate_pct FROM smoking_survey GROUP BY ethnicity HAVING COUNT(*)>=20 ORDER BY smoking_rate_pct DESC;


-- Q35: What is average weekly cigarette consumption by gender among smokers?
-- Difficulty: Medium | Concept: GROUP BY/AVG
SELECT gender, COUNT(*) AS smokers, ROUND(AVG(estimated_weekly_cigarettes),2) AS avg_weekly_cigarettes FROM smoking_survey WHERE smoke='Yes' GROUP BY gender ORDER BY avg_weekly_cigarettes DESC;


-- Q36: What is average weekly consumption by age group among smokers?
-- Difficulty: Medium | Concept: GROUP BY/AVG
SELECT age_group, COUNT(*) AS smokers, ROUND(AVG(estimated_weekly_cigarettes),2) AS avg_weekly_cigarettes FROM smoking_survey WHERE smoke='Yes' GROUP BY age_group ORDER BY avg_weekly_cigarettes DESC;


-- Q37: What is average weekly consumption by region among smokers?
-- Difficulty: Medium | Concept: GROUP BY/AVG
SELECT region, COUNT(*) AS smokers, ROUND(AVG(estimated_weekly_cigarettes),2) AS avg_weekly_cigarettes FROM smoking_survey WHERE smoke='Yes' GROUP BY region ORDER BY avg_weekly_cigarettes DESC;


-- Q38: How does average consumption vary by smoking type?
-- Difficulty: Medium | Concept: GROUP BY/AVG
SELECT type, COUNT(*) AS smokers, ROUND(AVG(estimated_weekly_cigarettes),2) AS avg_weekly_cigarettes FROM smoking_survey WHERE smoke='Yes' GROUP BY type ORDER BY avg_weekly_cigarettes DESC;


-- Q39: What is the average weekday-to-weekend change among smokers?
-- Difficulty: Medium | Concept: Expression
SELECT ROUND(AVG(amt_weekends-amt_weekdays),2) AS avg_daily_change, ROUND(AVG(CASE WHEN amt_weekdays>0 THEN 100.0*(amt_weekends-amt_weekdays)/amt_weekdays END),2) AS avg_pct_change FROM smoking_survey WHERE smoke='Yes';


-- Q40: How many smokers increase, decrease or maintain consumption at weekends?
-- Difficulty: Medium | Concept: CASE/GROUP BY
SELECT CASE WHEN amt_weekends>amt_weekdays THEN 'Increase' WHEN amt_weekends<amt_weekdays THEN 'Decrease' ELSE 'No change' END AS weekend_pattern, COUNT(*) AS smokers FROM smoking_survey WHERE smoke='Yes' GROUP BY weekend_pattern ORDER BY smokers DESC;


-- Q41: How many smokers fall into weekly consumption bands?
-- Difficulty: Medium | Concept: CASE
SELECT CASE WHEN estimated_weekly_cigarettes<70 THEN 'Under 70/week' WHEN estimated_weekly_cigarettes<140 THEN '70-139/week' WHEN estimated_weekly_cigarettes<210 THEN '140-209/week' ELSE '210+/week' END AS weekly_band, COUNT(*) AS smokers FROM smoking_survey WHERE smoke='Yes' GROUP BY weekly_band ORDER BY MIN(estimated_weekly_cigarettes);


-- Q42: Which smokers report at least 20 cigarettes on an average day?
-- Difficulty: Medium | Concept: WHERE
SELECT respondent_id, gender, age, region, ROUND(avg_daily_cigarettes,2) AS avg_daily_cigarettes FROM smoking_survey WHERE smoke='Yes' AND avg_daily_cigarettes>=20 ORDER BY avg_daily_cigarettes DESC, respondent_id;


-- Q43: How does smoking status vary by gender in counts?
-- Difficulty: Medium | Concept: Conditional Aggregation
SELECT gender, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, SUM(CASE WHEN smoke='No' THEN 1 ELSE 0 END) AS non_smokers, COUNT(*) AS total FROM smoking_survey GROUP BY gender;


-- Q44: How does smoking status vary by region in counts?
-- Difficulty: Medium | Concept: Conditional Aggregation
SELECT region, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) AS smokers, SUM(CASE WHEN smoke='No' THEN 1 ELSE 0 END) AS non_smokers, COUNT(*) AS total FROM smoking_survey GROUP BY region ORDER BY total DESC;


-- Q45: What is the average age of smokers and non-smokers?
-- Difficulty: Medium | Concept: GROUP BY/AVG
SELECT smoke, COUNT(*) AS respondents, ROUND(AVG(age),2) AS avg_age, MIN(age) AS min_age, MAX(age) AS max_age FROM smoking_survey GROUP BY smoke;


-- Q46: Are there any smokers without complete smoking details?
-- Difficulty: Medium | Concept: CASE
SELECT COUNT(*) AS smokers_with_incomplete_details FROM smoking_survey WHERE smoke='Yes' AND (amt_weekdays IS NULL OR amt_weekends IS NULL OR type IS NULL);


-- Q47: Are there non-smokers with unexpected smoking details?
-- Difficulty: Medium | Concept: CASE
SELECT COUNT(*) AS non_smokers_with_details FROM smoking_survey WHERE smoke='No' AND (amt_weekdays IS NOT NULL OR amt_weekends IS NOT NULL OR type IS NOT NULL);


-- Q48: Which regions have the youngest and oldest average respondents?
-- Difficulty: Medium | Concept: GROUP BY
SELECT region, COUNT(*) AS respondents, ROUND(AVG(age),2) AS avg_age FROM smoking_survey GROUP BY region ORDER BY avg_age DESC;


-- Q49: What is smoker intensity by income band?
-- Difficulty: Medium | Concept: GROUP BY/AVG
SELECT gross_income, COUNT(*) AS smokers, ROUND(AVG(estimated_weekly_cigarettes),2) AS avg_weekly_cigarettes FROM smoking_survey WHERE smoke='Yes' GROUP BY gross_income, income_band_order ORDER BY income_band_order;


-- Q50: Which qualification groups with at least 10 smokers have the highest intensity?
-- Difficulty: Medium | Concept: HAVING
SELECT highest_qualification, COUNT(*) AS smokers, ROUND(AVG(estimated_weekly_cigarettes),2) AS avg_weekly_cigarettes FROM smoking_survey WHERE smoke='Yes' GROUP BY highest_qualification HAVING COUNT(*)>=10 ORDER BY avg_weekly_cigarettes DESC;


-- Q51: How do regions rank by smoking rate?
-- Difficulty: Difficult | Concept: CTE/Window
WITH rates AS (SELECT region, COUNT(*) respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) smokers, 100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*) rate FROM smoking_survey GROUP BY region) SELECT region, respondents, smokers, ROUND(rate,2) smoking_rate_pct, DENSE_RANK() OVER (ORDER BY rate DESC) rate_rank FROM rates ORDER BY rate_rank, region;


-- Q52: How do age groups rank by smoking rate?
-- Difficulty: Difficult | Concept: CTE/Window
WITH rates AS (SELECT age_group, COUNT(*) respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) smokers, 100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*) rate FROM smoking_survey GROUP BY age_group) SELECT age_group, respondents, smokers, ROUND(rate,2) smoking_rate_pct, DENSE_RANK() OVER (ORDER BY rate DESC) rate_rank FROM rates ORDER BY rate_rank;


-- Q53: What share of all smokers belongs to each gender?
-- Difficulty: Difficult | Concept: Window Function
SELECT gender, COUNT(*) AS smokers, ROUND(100.0*COUNT(*)/SUM(COUNT(*)) OVER (),2) AS share_of_smokers_pct FROM smoking_survey WHERE smoke='Yes' GROUP BY gender ORDER BY smokers DESC;


-- Q54: What share of all smokers comes from each region?
-- Difficulty: Difficult | Concept: Window Function
SELECT region, COUNT(*) AS smokers, ROUND(100.0*COUNT(*)/SUM(COUNT(*)) OVER (),2) AS share_of_smokers_pct FROM smoking_survey WHERE smoke='Yes' GROUP BY region ORDER BY smokers DESC;


-- Q55: Who are the top five smokers by weekly consumption within each gender?
-- Difficulty: Difficult | Concept: Window Function
WITH ranked AS (SELECT respondent_id, gender, age, region, estimated_weekly_cigarettes, ROW_NUMBER() OVER (PARTITION BY gender ORDER BY estimated_weekly_cigarettes DESC, respondent_id) rn FROM smoking_survey WHERE smoke='Yes') SELECT * FROM ranked WHERE rn<=5 ORDER BY gender, rn;


-- Q56: Who are the top three smokers by weekly consumption within each region?
-- Difficulty: Difficult | Concept: Window Function
WITH ranked AS (SELECT respondent_id, region, gender, age, estimated_weekly_cigarettes, ROW_NUMBER() OVER (PARTITION BY region ORDER BY estimated_weekly_cigarettes DESC, respondent_id) rn FROM smoking_survey WHERE smoke='Yes') SELECT * FROM ranked WHERE rn<=3 ORDER BY region, rn;


-- Q57: Which weekly consumption quartile is each smoker in?
-- Difficulty: Difficult | Concept: NTILE
SELECT respondent_id, gender, age, region, estimated_weekly_cigarettes, NTILE(4) OVER (ORDER BY estimated_weekly_cigarettes) AS consumption_quartile FROM smoking_survey WHERE smoke='Yes' ORDER BY consumption_quartile, estimated_weekly_cigarettes;


-- Q58: Which smokers consume more than the smoker average?
-- Difficulty: Difficult | Concept: Subquery
SELECT respondent_id, gender, age, region, ROUND(estimated_weekly_cigarettes,2) AS weekly_cigarettes FROM smoking_survey WHERE smoke='Yes' AND estimated_weekly_cigarettes>(SELECT AVG(estimated_weekly_cigarettes) FROM smoking_survey WHERE smoke='Yes') ORDER BY weekly_cigarettes DESC;


-- Q59: Which smokers consume more than their own region average?
-- Difficulty: Difficult | Concept: Correlated Subquery
SELECT s.respondent_id, s.region, s.gender, s.age, ROUND(s.estimated_weekly_cigarettes,2) AS weekly_cigarettes FROM smoking_survey s WHERE s.smoke='Yes' AND s.estimated_weekly_cigarettes>(SELECT AVG(x.estimated_weekly_cigarettes) FROM smoking_survey x WHERE x.smoke='Yes' AND x.region=s.region) ORDER BY s.region, weekly_cigarettes DESC;


-- Q60: Which smokers consume more than their gender average?
-- Difficulty: Difficult | Concept: CTE/JOIN
WITH g AS (SELECT gender, AVG(estimated_weekly_cigarettes) avg_weekly FROM smoking_survey WHERE smoke='Yes' GROUP BY gender) SELECT s.respondent_id, s.gender, s.age, ROUND(s.estimated_weekly_cigarettes,2) weekly_cigarettes, ROUND(g.avg_weekly,2) gender_average FROM smoking_survey s JOIN g ON s.gender=g.gender WHERE s.smoke='Yes' AND s.estimated_weekly_cigarettes>g.avg_weekly ORDER BY s.gender, weekly_cigarettes DESC;


-- Q61: How far is each regional smoking rate from the overall rate?
-- Difficulty: Difficult | Concept: CTE
WITH overall AS (SELECT 100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*) rate FROM smoking_survey), regional AS (SELECT region, 100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*) rate FROM smoking_survey GROUP BY region) SELECT region, ROUND(regional.rate,2) regional_rate_pct, ROUND(overall.rate,2) overall_rate_pct, ROUND(regional.rate-overall.rate,2) difference_points FROM regional CROSS JOIN overall ORDER BY difference_points DESC;


-- Q62: How does smoking rate change between adjacent age groups?
-- Difficulty: Difficult | Concept: LAG
WITH rates AS (SELECT age_group, CASE age_group WHEN '18-24' THEN 1 WHEN '25-34' THEN 2 WHEN '35-44' THEN 3 WHEN '45-54' THEN 4 WHEN '55-64' THEN 5 ELSE 6 END ord, 100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*) rate FROM smoking_survey GROUP BY age_group) SELECT age_group, ROUND(rate,2) smoking_rate_pct, ROUND(LAG(rate) OVER (ORDER BY ord),2) previous_group_rate, ROUND(rate-LAG(rate) OVER (ORDER BY ord),2) change_points FROM rates ORDER BY ord;


-- Q63: How does smoking rate change across ordered income bands?
-- Difficulty: Difficult | Concept: LAG
WITH rates AS (SELECT gross_income, income_band_order, 100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*) rate FROM smoking_survey GROUP BY gross_income,income_band_order) SELECT gross_income, ROUND(rate,2) smoking_rate_pct, ROUND(LAG(rate) OVER (ORDER BY income_band_order),2) previous_band_rate, ROUND(rate-LAG(rate) OVER (ORDER BY income_band_order),2) change_points FROM rates ORDER BY income_band_order;


-- Q64: What is the cumulative share of smokers by region?
-- Difficulty: Difficult | Concept: Window Function
WITH c AS (SELECT region, COUNT(*) smokers FROM smoking_survey WHERE smoke='Yes' GROUP BY region) SELECT region, smokers, ROUND(100.0*smokers/SUM(smokers) OVER (),2) share_pct, ROUND(100.0*SUM(smokers) OVER (ORDER BY smokers DESC,region)/SUM(smokers) OVER (),2) cumulative_share_pct FROM c ORDER BY smokers DESC,region;


-- Q65: What is the smoking-type mix within each gender?
-- Difficulty: Difficult | Concept: Conditional Aggregation
SELECT gender, COUNT(*) smokers, SUM(CASE WHEN type='Packets' THEN 1 ELSE 0 END) packets, SUM(CASE WHEN type='Hand-Rolled' THEN 1 ELSE 0 END) hand_rolled, ROUND(100.0*SUM(CASE WHEN type='Packets' THEN 1 ELSE 0 END)/COUNT(*),2) packets_pct FROM smoking_survey WHERE smoke='Yes' GROUP BY gender;


-- Q66: What is the smoking-type mix within each region?
-- Difficulty: Difficult | Concept: Conditional Aggregation
SELECT region, COUNT(*) smokers, SUM(CASE WHEN type='Packets' THEN 1 ELSE 0 END) packets, SUM(CASE WHEN type='Hand-Rolled' THEN 1 ELSE 0 END) hand_rolled, ROUND(100.0*SUM(CASE WHEN type='Packets' THEN 1 ELSE 0 END)/COUNT(*),2) packets_pct FROM smoking_survey WHERE smoke='Yes' GROUP BY region ORDER BY smokers DESC;


-- Q67: What is each smoker consumption value compared with the previous ranked smoker?
-- Difficulty: Difficult | Concept: Window Function
SELECT respondent_id, estimated_weekly_cigarettes, LAG(estimated_weekly_cigarettes) OVER (ORDER BY estimated_weekly_cigarettes DESC,respondent_id) previous_value, ROUND(estimated_weekly_cigarettes-LAG(estimated_weekly_cigarettes) OVER (ORDER BY estimated_weekly_cigarettes DESC,respondent_id),2) difference FROM smoking_survey WHERE smoke='Yes' ORDER BY estimated_weekly_cigarettes DESC,respondent_id LIMIT 50;


-- Q68: Which regions have the highest and lowest smoking rates?
-- Difficulty: Difficult | Concept: CTE/UNION
WITH r AS (SELECT region, 100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*) rate FROM smoking_survey GROUP BY region) SELECT 'Highest' position, region, ROUND(rate,2) smoking_rate_pct FROM r WHERE rate=(SELECT MAX(rate) FROM r) UNION ALL SELECT 'Lowest', region, ROUND(rate,2) FROM r WHERE rate=(SELECT MIN(rate) FROM r);


-- Q69: Which smoker groups have the highest and lowest average weekly consumption?
-- Difficulty: Difficult | Concept: CTE/UNION
WITH g AS (SELECT age_group, AVG(estimated_weekly_cigarettes) avg_weekly FROM smoking_survey WHERE smoke='Yes' GROUP BY age_group) SELECT 'Highest' position, age_group, ROUND(avg_weekly,2) avg_weekly FROM g WHERE avg_weekly=(SELECT MAX(avg_weekly) FROM g) UNION ALL SELECT 'Lowest', age_group, ROUND(avg_weekly,2) FROM g WHERE avg_weekly=(SELECT MIN(avg_weekly) FROM g);


-- Q70: Which gender-age groups with at least 20 respondents have the highest smoking rates?
-- Difficulty: Difficult | Concept: GROUP BY/HAVING
SELECT gender, age_group, COUNT(*) respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) smoking_rate_pct FROM smoking_survey GROUP BY gender,age_group HAVING COUNT(*)>=20 ORDER BY smoking_rate_pct DESC;


-- Q71: Which region-gender groups with at least 20 respondents have the highest smoking rates?
-- Difficulty: Difficult | Concept: GROUP BY/HAVING
SELECT region, gender, COUNT(*) respondents, SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END) smokers, ROUND(100.0*SUM(CASE WHEN smoke='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) smoking_rate_pct FROM smoking_survey GROUP BY region,gender HAVING COUNT(*)>=20 ORDER BY smoking_rate_pct DESC;


-- Q72: How does each smoker differ from the average consumption of their age group?
-- Difficulty: Difficult | Concept: Window Function
SELECT respondent_id, age_group, ROUND(estimated_weekly_cigarettes,2) weekly_cigarettes, ROUND(AVG(estimated_weekly_cigarettes) OVER (PARTITION BY age_group),2) age_group_average, ROUND(estimated_weekly_cigarettes-AVG(estimated_weekly_cigarettes) OVER (PARTITION BY age_group),2) difference_from_group FROM smoking_survey WHERE smoke='Yes' ORDER BY age_group,difference_from_group DESC;


-- Q73: What are the smoking-rate results from the reusable regional view?
-- Difficulty: Difficult | Concept: VIEW
SELECT * FROM v_smoking_rate_by_region ORDER BY smoking_rate_pct DESC;


-- Q74: What are the ordered income smoking summaries from the reusable view?
-- Difficulty: Difficult | Concept: VIEW
SELECT gross_income, respondents, smokers, smoking_rate_pct, avg_weekly_cigarettes_smokers FROM v_income_smoking_summary ORDER BY income_band_order;


-- Q75: Does the table pass core row, status and smoker-detail checks?
-- Difficulty: Difficult | Concept: CTE/CASE
WITH checks AS (SELECT COUNT(*) total_rows, SUM(CASE WHEN smoke NOT IN ('Yes','No') OR smoke IS NULL THEN 1 ELSE 0 END) invalid_status, SUM(CASE WHEN smoke='Yes' AND (amt_weekdays IS NULL OR amt_weekends IS NULL OR type IS NULL) THEN 1 ELSE 0 END) incomplete_smokers, SUM(CASE WHEN smoke='No' AND (amt_weekdays IS NOT NULL OR amt_weekends IS NOT NULL OR type IS NOT NULL) THEN 1 ELSE 0 END) detailed_non_smokers FROM smoking_survey) SELECT *, CASE WHEN total_rows=1691 AND invalid_status=0 AND incomplete_smokers=0 AND detailed_non_smokers=0 THEN 'PASS' ELSE 'REVIEW' END validation_status FROM checks;
