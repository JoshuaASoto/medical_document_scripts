#DCS Tables


CREATE TABLE DischargeSummaryPatientInfo (
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_patient_mrn int,
dcs_patient_firstname varchar(50),
dcs_patient_lastname varchar(50),
dcs_patient_DOB date,
dcs_patient_admission_date date,
dcs_date_of_discharge date
);

CREATE TABLE DischargeSummaryAdmissionReason (
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_reason_self_danger BIT NOT NULL DEFAULT 0,
dcs_reason_deterioration BIT NOT NULL DEFAULT 0,
dcs_reason_inability BIT NOT NULL DEFAULT 0,
dcs_reason_other_danger BIT NOT NULL DEFAULT 0,
dcs_reason_psychosis BIT NOT NULL DEFAULT 0,
dcs_reason_dependacy BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummaryHPI(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_HPI_entry varchar(1000)
);

CREATE TABLE DischargeSummaryMedication(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_cm_medication varchar(1000),
dcs_cm_medication_dosage varchar(1000)
);

CREATE TABLE SummaryPhysician(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
physician_name varchar(50)
);

CREATE TABLE DischargeSummaryDepression(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_check_dep_depressive_mood BIT NOT NULL DEFAULT 0,
dcs_check_dep_low_interest BIT NOT NULL DEFAULT 0,
dcs_check_dep_appetite_problems BIT NOT NULL DEFAULT 0,
dcs_check_dep_sleep_problems BIT NOT NULL DEFAULT 0,
dcs_check_dep_psychomotor_retardations BIT NOT NULL DEFAULT 0,
dcs_check_dep_psychomotor_agitation BIT NOT NULL DEFAULT 0,
dcs_check_dep_fatique BIT NOT NULL DEFAULT 0,
dcs_check_dep_guilt BIT NOT NULL DEFAULT 0,
dcs_check_dep_low_concentration BIT NOT NULL DEFAULT 0,
dcs_check_dep_no_depressive_symptoms BIT NOT NULL DEFAULT 0,
dcs_check_dep_patient_notengaging BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummaryAnxiety(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_check_anx_anxious BIT NOT NULL DEFAULT 0,
dcs_check_anx_restless BIT NOT NULL DEFAULT 0,
dcs_check_anx_fatigue BIT NOT NULL DEFAULT 0,
dcs_check_anx_low_concentration BIT NOT NULL DEFAULT 0,
dcs_check_anx_irratible BIT NOT NULL DEFAULT 0,
dcs_check_anx_muscle_tension BIT NOT NULL DEFAULT 0,
dcs_check_anx_sleep_problems BIT NOT NULL DEFAULT 0,
dcs_check_anx_social_anxiety BIT NOT NULL DEFAULT 0,
dcs_check_anx_obsessive_compulsive BIT NOT NULL DEFAULT 0,
dcs_check_anx_seperation_anxiety BIT NOT NULL DEFAULT 0,
dcs_check_anx_panic BIT NOT NULL DEFAULT 0,
dcs_check_anx_phobia BIT NOT NULL DEFAULT 0,
dcs_check_anx_no_anxiety_symptom BIT NOT NULL DEFAULT 0,
dcs_check_anx_patient_notengaging BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummaryTrauma(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_check_trauma_abuse BIT NOT NULL DEFAULT 0,
dcs_check_trauma_nightmare BIT NOT NULL DEFAULT 0,
dcs_check_trauma_avoid BIT NOT NULL DEFAULT 0,
dcs_check_trauma_guilt BIT NOT NULL DEFAULT 0,
dcs_check_trauma_hyperarousal BIT NOT NULL DEFAULT 0,
dcs_check_trauma_no_ptsd_symptoms BIT NOT NULL DEFAULT 0,
dcs_check_trauma_patient_notengaging BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummaryAttention(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint KEY NOT NULL,
dcs_check_attnt_inattentive BIT NOT NULL DEFAULT 0,
dcs_check_attnt_distractible BIT NOT NULL DEFAULT 0,
dcs_check_attnt_disorganization BIT NOT NULL DEFAULT 0,
dcs_check_attnt_forgetful BIT NOT NULL DEFAULT 0,
dcs_checK_attnt_task_incompletion BIT NOT NULL DEFAULT 0,
dcs_check_attnt_fidgeting BIT NOT NULL DEFAULT 0,
dcs_check_attnt_not_seated BIT NOT NULL DEFAULT 0,
dcs_check_attnt_loud BIT NOT NULL DEFAULT 0,
dcs_check_attnt_talkative BIT NOT NULL DEFAULT 0,
dcs_check_attnt_interuptive BIT NOT NULL DEFAULT 0,
dcs_check_attnt_no_adhd_symptoms BIT NOT NULL DEFAULT 0,
dcs_check_atttnt_patient_notengaging BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummaryDisruptivity(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_check_disrup_severe_verbal BIT NOT NULL DEFAULT 0,
dcs_check_disrup_severe_tantrum BIT NOT NULL DEFAULT 0,
dcs_check_disrup_persistent_irratible BIT NOT NULL DEFAULT 0,
dcs_check_drisup_defiance BIT NOT NULL DEFAULT 0,
dcs_check_disrup_cruelty BIT NOT NULL DEFAULT 0,
dcs_check_disrup_detroy_property BIT NOT NULL DEFAULT 0,
dcs_check_disrup_theft BIT NOT NULL DEFAULT 0,
dcs_check_drisrup_lack_remorse BIT NOT NULL DEFAULT 0,
dcs_check_disrup_no_dmdd_symptoms BIT NOT NULL DEFAULT 0,
dcs_check_disrup_patient_notengaging BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummaryMania(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_check_mania_grandoise BIT NOT NULL DEFAULT 0,
dcs_check_mania_need_sleep BIT NOT NULL DEFAULT 0,
dcs_check_mania_talkative BIT NOT NULL DEFAULT 0,
dcs_check_mania_racing_thoughts BIT NOT NULL DEFAULT 0,
dcs_check_mania_highly_distractible BIT NOT NULL DEFAULT 0,
dcs_check_mania_goal_activity BIT NOT NULL DEFAULT 0,
dcs_check_mania_risky_behavior_emotion_handicapped BIT NOT NULL DEFAULT 0,
dcs_check_mania_no_manic_symptoms BIT NOT NULL DEFAULT 0,
dcs_check_mania_patient_not_engaging BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummarySafety(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_check_safety_suicidal_ideation BIT NOT NULL DEFAULT 0,
dcs_check_safety_suicidal_intent BIT NOT NULL DEFAULT 0,
dcs_check_safety_suicidal_plan BIT NOT NULL DEFAULT 0,
dcs_check_safety_homicidal_ideation BIT NOT NULL DEFAULT 0,
dcs_check_safety_auditory_hallucinations BIT NOT NULL DEFAULT 0,
dcs_check_safety_visual_hallucinations BIT NOT NULL DEFAULT 0,
dcs_check_safety_no_suicidal_intent BIT NOT NULL DEFAULT 0,
dcs_check_safety_no_harm_intent BIT NOT NULL DEFAULT 0,
dcs_check_safety_no_suicidal_plan BIT NOT NULL DEFAULT 0,
dcs_check_safety_no_homicidal_ideation BIT NOT NULL DEFAULT 0,
dcs_check_safety_no_auditoty_hallucinations BIT NOT NULL DEFAULT 0,
dcs_check_safety_no_visual_hallucinations BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummaryMSERecommendations(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_check_eval_rec_med_stabilization BIT NOT NULL DEFAULT 0,
dcs_check_eval_rec_milieu_therapy BIT NOT NULL DEFAULT 0,
dcs_check_eval_rec_med_management BIT NOT NULL DEFAULT 0,
dcs_check_eval_rec_coping_skills BIT NOT NULL DEFAULT 0,
dcs_check_eval_rec_group_therapy BIT NOT NULL DEFAULT 0,
dcs_check_eval_rec_participation BIT NOT NULL DEFAULT 0,
dcs_check_eval_rec_other BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummaryDiagnosis(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_dx_psych varchar(1000),
dcs_dx_medical varchar(1000),
dcs_dx_findings varchar (1000)
);

CREATE TABLE DischargeSummaryStressors(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_check_eval_problems_support BIT NOT NULL DEFAULT 0,
dcs_check_eval_housing_problems BIT NOT NULL DEFAULT 0,
dcs_check_eval_healthcare_problems BIT NOT NULL DEFAULT 0,
dcs_check_eval_bullying BIT NOT NULL DEFAULT 0,
dcs_check_opentxt_eval_other_problems varchar(1000),
dcs_check_eval_environment_problems BIT NOT NULL DEFAULT 0,
dcs_check_eval_economic_problems BIT NOT NULL DEFAULT 0,
dcs_check_eval_family_conflict BIT NOT NULL DEFAULT 0,
dcs_check_eval_legal_problems BIT NOT NULL DEFAULT 0,
dcs_check_eval_occupational_problems BIT NOT NULL DEFAULT 0,
dcs_check_eval_educational_problems BIT NOT NULL DEFAULT 0,
dcs_check_eval_social_peer_problems BIT NOT NULL DEFAULT 0
);

CREATE TABLE DischargeSummaryDischargeLocations(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_disch_loc_name varchar(50)
);

CREATE TABLE DischargeSummaryDischargePlan(
id int IDENTITY (1,1) PRIMARY KEY,
ACN bigint NOT NULL,
dcs_dischplan_abscence_suicidal_intent BIT NOT NULL DEFAULT 0,
dcs_dischplan_aftercare_arrangement BIT NOT NULL DEFAULT 0,
dcs_dischplan_lesser_level_care BIT NOT NULL DEFAULT 0,
dcs_dischplan_inc_ability_selfcare BIT NOT NULL DEFAULT 0,
dcs_dischplan_check_eval_improved_mood BIT NOT NULL DEFAULT 0,
dcs_dischplan_stable_medication BIT NOT NULL DEFAULT 0,
dcs_dischplan_opentxt_other varchar(1000),
dcs_dischplan_opentxt_needed_living_arragement varchar(1000)
);


