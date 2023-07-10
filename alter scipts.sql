ALTER TABLE ACN
ADD FOREIGN KEY (patient_mrn) REFERENCES Patient_information(patient_mrn);

ALTER TABLE Patient_admission_reason
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Justification_24hr_care
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE History_of_present_illness
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Previous_psychiatric_diagnosis
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Previous_psychiatric_medication
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Previous_outpatient_treatment
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Previous_inpatient_treatment
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Previous_rehab_treatment
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Previous_electrotherapy_treatment
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Previous_suicide_attempt
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Previous_non_suicide_injurious_behavior
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Previous_homicidal_behavior
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Medical_history
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Current_medication
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_allergy
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Psychiatric_review_of_depression
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Psychiatric_review_of_anxiety
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Psychiatric_review_of_trauma
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Psychiatric_review_of_attention
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Psychiatric_review_of_disruptivity
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Psychiatric_review_of_mania
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Psychiatric_review_of_safety
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Family_history_of_psychiatric_disorders
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Family_history_of_suicide_attempts
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Family_history_of_substance_use_disorders
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Family_history_of_coronary_artery_disease
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_age_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_weight_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_grooming_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_hygiene_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_gait_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_posture_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_attitude_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_motor_activity_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_mood_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_affect_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_thought_process_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_thought_content_delusion_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_thought_content_overvalued_ideas_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_perception_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_four_sphere_orientation_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_concentration_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_recent_memory_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_remote_memory_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_estimated_intelligence_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_abstract_reasoning_status
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Patient_mental_status_exam_recommendation
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Evaluation_psychiatric_diagnosis
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Evaluation_stressors
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Estimated_length_of_stay
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);

ALTER TABLE Evaluation_discharge_plan
ADD FOREIGN KEY (ACN) REFERENCES ACN(ACN);



