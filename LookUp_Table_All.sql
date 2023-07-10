CREATE TABLE States (
	stateID INT, 
	stateName varchar(50),
	);
  
 CREATE TABLE Psychiatric_Medication_List (
	psych_med_idcode INT NOT NULL ,
	psych_med_generic_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (psych_med_idcode),
	);
  
CREATE TABLE Psychiatric_Diagnosis_List (
psych_dx_idcode INT NOT NULL,
psych_dx_icd10_name VARCHAR(300) NOT NULL,
PRIMARY KEY (psych_dx_idcode),
);

CREATE TABLE Medical_Diagnosis_List (
medical_dx_idcode INT NOT NULL,
medical_dx_icd10_name VARCHAR (50) NOT NULL,
PRIMARY KEY(medical_dx_idcode)
);

CREATE TABLE Rehab_Treatment_Center_Location_List (
rehab_center_idcode INT NOT NULL,
rehab_center_name VARCHAR(50) NOT NULL,
PRIMARY KEY (rehab_center_idcode),
);

CREATE TABLE Non_Suicide_Related_Self_Injurious_Diagnosis_List(
injury_dx_idcode int NOT NULL, 
injury_dx_icd10_name VARCHAR (100), 
PRIMARY KEY (injury_dx_idcode),
);

CREATE TABLE Family_Member_List(
family_member_idcode INT NOT NULL,
family_member_relation VARCHAR (50) NOT NULL,
PRIMARY KEY (family_member_idcode)
);

CREATE TABLE Medical_medication_list(
med_medication_idcode INT NOT NULL, 
med_medication_name VARCHAR (50) NOT NULL,
PRIMARY KEY (med_medication_idcode),
);

CREATE TABLE Discharge_Location_List(
disch_loc_idcode INT NOT NULL,
disch_loc_name VARCHAR(50) NOT NULL, 
PRIMARY KEY (disch_loc_idcode),
);

CREATE TABLE Psychiatric_Hospital_Location_List(
psych_hosp_idcode INT NOT NULL,
psych_hosp_name VARCHAR(50) NOT NULL, 
PRIMARY KEY (psych_hosp_idcode),
);

CREATE TABLE Electroconvulsive_Therapy_Treatment_Center_Location_List(
electrotherapy_center_idcode INT NOT NULL,
electrotherapy_center_name VARCHAR(50) NOT NULL, 
PRIMARY KEY (electrotherapy_center_idcode),
);

CREATE TABLE Medication_Dosage_Frequency_List(
medication_rx_idcode INT NOT NULL,
medication_rx_name VARCHAR(50) NOT NULL, 
PRIMARY KEY (medication_rx_idcode),
);

CREATE TABLE Suicide_Attempt_Quantity_List(
suicide_attempt_idcode INT NOT NULL,
suicide_attempt_qty VARCHAR(50) NOT NULL, 
PRIMARY KEY (suicide_attempt_idcode),
);

CREATE TABLE Physician_Name_List(
physician_name__idcode INT NOT NULL,
physician_name VARCHAR(50) NOT NULL, 
PRIMARY KEY (physician_name__idcode),
);
