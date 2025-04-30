Create database LungCancer ;

CREATE TABLE PatientInformation (
    patient_id VARCHAR(50) PRIMARY KEY,
    age INT,
    gender CHAR(1)
    
);

CREATE TABLE RiskFactors (
    patient_id VARCHAR(50),
    air_pollution INT,
    alcohol_use INT,
    smoking INT,
    occupational_hazards INT,
    dust_allergy INT,
    genetic_risk INT,
    passive_smoker INT,
    
    
    FOREIGN KEY (patient_id) REFERENCES PatientInformation(patient_id)
);

CREATE TABLE MedicalConditions (
    patient_id VARCHAR(50),
    chronic_lung_disease INT,
    fatigue INT,
    weight_loss INT,
    balanced_diet INT,
    obesty INT,
    chest_pain INT,
    coughing_of_blood INT,
    shortness_of_breath INT,
    wheezing INT,
    swallowing_difficulty INT,
    clubbing_of_finger_nails INT,
    frequent_cold INT,
    snoring INT,
    dry_cough INT,
    
    FOREIGN KEY (patient_id) REFERENCES PatientInformation(patient_id)
);

CREATE TABLE Treatments (
    patient_id VARCHAR(50),
    treatment_type VARCHAR(50),
    cost DECIMAL(10, 2),
    
    FOREIGN KEY (patient_id) REFERENCES PatientInformation(patient_id)
);

CREATE TABLE Outcomes (
    patient_id VARCHAR(50),
    survival_rate DECIMAL(5, 2),
    treatment_outcome VARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES PatientInformation(patient_id)
);
