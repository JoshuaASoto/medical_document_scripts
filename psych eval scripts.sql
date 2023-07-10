CREATE TABLE Patient_admission_reason (
    ID INT NOT NULL IDENTITY PRIMARY KEY,
    ACN BIGINT NOT NULL,
    Reason_self_danger BIT NOT NULL DEFAULT 0,
    Reason_deterioration BIT NOT NULL DEFAULT 0,
    Reason_inability BIT NOT NULL DEFAULT 0,
    Reason_other_danger BIT NOT NULL DEFAULT 0,
    Reason_psychosis BIT NOT NULL DEFAULT 0,
    Reason_dependency BIT NOT NULL DEFAULT 0.
);

CREATE TABLE Justification_24hr_care (
    ID INT NOT NULL IDENTITY PRIMARY KEY,
    ACN BIGINT NOT NULL,
    twntyfour_hallucination BIT NOT NULL DEFAULT 0,
    twntyfour_delusion BIT NOT NULL DEFAULT 0,
    twntyfour_agitation BIT NOT NULL DEFAULT 0,
    twntyfour_anxiety BIT NOT NULL DEFAULT 0,
    twntyfour_depression BIT NOT NULL DEFAULT 0,
    twntyfour_inability BIT NOT NULL DEFAULT 0,
    twntyfour_danger BIT NOT NULL DEFAULT 0,
    twntyfour_toxic BIT NOT NULL DEFAULT 0,
    twntyfour_failure_treatment BIT NOT NULL DEFAULT 0,
    twntyfour_condition BIT NOT NULL DEFAULT 0,
    twntyfour_therapy BIT NOT NULL DEFAULT 0,
    twntyfour_emotional BIT NOT NULL DEFAULT 0,
    twntyfour_relapse BIT NOT NULL DEFAULT 0,
    twntyfour_occupation BIT NOT NULL DEFAULT 0,
    twntyfour_failure_functioning BIT NOT NULL DEFAULT 0,
    twntyfour_legally BIT NOT NULL DEFAULT 0,
    
);

CREATE TABLE History_of_present_illness (
    HPI_entry VARCHAR(1000),
    ACN BIGINT NOT NULL,
);

CREATE TABLE Previous_psychiatric_diagnosis (
    pph_prev_diagnosis_psych VARCHAR(1000),
    pph_check_prev_diagnosis_psych_none BIT NOT NULL DEFAULT 0,
    pph_check_prev_diagnosis_psych_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Previous_psychiatric_medication (
    pph_prev_medication_psych VARCHAR(1000),
    pph_check_prev_medication_psych_none BIT NOT NULL DEFAULT 0,
    pph_check_prev_medication_psych_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Previous_outpatient_treatment (
    pph_prev_outpatient_treatment VARCHAR(1000),
    pph_check_prev_outpatient_treatment_none BIT NOT NULL DEFAULT 0,
    pph_check_prev_outpatient_treatment_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Previous_inpatient_treatment (
    pph_prev_inpatient_treatment VARCHAR(1000),
    pph_check_prev_inpatient_treatment_none BIT NOT NULL DEFAULT 0,
    pph_check_prev_inpatient_treatment_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Previous_rehab_treatment (
    pph_prev_rehab_treatment VARCHAR(1000),
    pph_check_prev_rehab_treatment_none BIT NOT NULL DEFAULT 0,
    pph_check_prev_rehab_treatment_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Previous_electrotherapy_treatment (
    pph_prev_electrotherapy_treatment VARCHAR(1000),
    pph_check_prev_electrotherapy_treatment_none BIT NOT NULL DEFAULT 0,
    pph_check_prev_electrotherapy_treatment_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Previous_suicide_attempt (
    pph_prev_suicide_attempt_qty VARCHAR(1000),
    pph_check_prev_suicide_attempt_none BIT NOT NULL DEFAULT 0,
    pph_check_prev_suicide_attempt_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Previous_non_suicide_injurious_behavior (
    pph_prev_diagnosis_nonsus_injury VARCHAR(1000),
    pph_check_prev_diagnosis_nonsus_injury_none BIT NOT NULL DEFAULT 0,
    pph_check_prev_diagnosis_nonsus_injury_patient_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Previous_homicidal_behavior (
    pph_prev_homicide_symptom VARCHAR(1000),
    pph_check_prev_homicide_none BIT NOT NULL DEFAULT 0,
    pph_check_prev_homicide_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Medical_history (
    mh_check_hypertension BIT NOT NULL DEFAULT 0,
    mh_check_diabetus_melitus BIT NOT NULL DEFAULT 0,
    mh_check_asthma BIT NOT NULL DEFAULT 0,
    mh_check_hyperlipidemia BIT NOT NULL DEFAULT 0,
    mh_check_thyroid_disease BIT NOT NULL DEFAULT 0,
    mh_check_coronary_artery_disease BIT NOT NULL DEFAULT 0,
    mh_check_seizure BIT NOT NULL DEFAULT 0,
    mh_check_stroke BIT NOT NULL DEFAULT 0,
    mh_check_head_trauma BIT NOT NULL DEFAULT 0,
    mh_check_opentxt VARCHAR(1000),
    mh_check_patient_notenaging BIT NOT NULL DEFAULT 0,
    mh_check_orthopedic_surgery BIT NOT NULL DEFAULT 0,
    mh_check_neuro_surgery BIT NOT NULL DEFAULT 0,
    mh_check_cardio_surgery BIT NOT NULL DEFAULT 0,
    mh_check_gastrointestinal_surgery BIT NOT NULL DEFAULT 0,
    mh_check_none BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Current_medication (
    cm_medication VARCHAR(1000),
    cm_dosage VARCHAR(1000),
    cm_check_medication_none BIT NOT NULL DEFAULT 0,
    cm_check_medication_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_allergy (
    allergy_diagnosis VARCHAR(1000),
    allergy_check_diagnosis_none BIT NOT NULL DEFAULT 0,
    allergy_check_diagnosis_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Psychiatric_review_of_depression (
    prs_check_dep_depressive_mood BIT NOT NULL DEFAULT 0,
    prs_check_dep_low_interest BIT NOT NULL DEFAULT 0,
    prs_check_dep_appetite_problems BIT NOT NULL DEFAULT 0,
    prs_check_dep_sleep_problems BIT NOT NULL DEFAULT 0,
    prs_check_dep_psychomotor_retardation BIT NOT NULL DEFAULT 0,
    prs_check_dep_psychomotor_agitation BIT NOT NULL DEFAULT 0,
    prs_check_dep_fatigue BIT NOT NULL DEFAULT 0,
    prs_check_dep_guilt BIT NOT NULL DEFAULT 0,
    prs_check_dep_low_concentration BIT NOT NULL DEFAULT 0,
    prs_check_dep_no_depressive_symptoms BIT NOT NULL DEFAULT 0,
    prs_check_dep_patient_notengaging BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Psychiatric_review_of_anxiety (
    prs_check_anx_anxious BIT NOT NULL DEFAULT 0,
    prs_check_anx_restless BIT NOT NULL DEFAULT 0,
    prs_check_anx_fatigue BIT NOT NULL DEFAULT 0,
    prs_check_anx_low_concentration BIT NOT NULL DEFAULT 0,
    prs_check_anx_irratible BIT NOT NULL DEFAULT 0,
    prs_check_anx_muscle_tension BIT NOT NULL DEFAULT 0,
    prs_check_anx_sleep_problems BIT NOT NULL DEFAULT 0,
    prs_check_anx_social_anxiety BIT NOT NULL DEFAULT 0,
    prs_check_anx_obsessive_compulsive BIT NOT NULL DEFAULT 0,
    prs_check_anx_seperation_anxiety BIT NOT NULL DEFAULT 0,
    prs_check_anx_panic BIT NOT NULL DEFAULT 0,
    prs_check_anx_phobia BIT NOT NULL DEFAULT 0,
    prs_check_anx_no_anxiety_symptoms BIT NOT NULL DEFAULT 0,
    prs_check_anx_patient_notengaging BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Psychiatric_review_of_trauma (
    prs_check_trauma_abuse BIT NOT NULL DEFAULT 0,
    prs_check_trauma_nightmare BIT NOT NULL DEFAULT 0,
    prs_check_trauma_avoid BIT NOT NULL DEFAULT 0,
    prs_check_trauma_guilt BIT NOT NULL DEFAULT 0,
    prs_check_trauma_hyperarousal BIT NOT NULL DEFAULT 0,
    prs_check_trauma_no_ptsd_symptoms BIT NOT NULL DEFAULT 0,
    prs_check_trauma_patient_notengaging BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Psychiatric_review_of_attention (
    prs_check_attnt_inattentive BIT NOT NULL DEFAULT 0,
    prs_check_attnt_distractible BIT NOT NULL DEFAULT 0,
    prs_check_attnt_disorganizaion BIT NOT NULL DEFAULT 0,
    prs_check_attnt_forgetful BIT NOT NULL DEFAULT 0,
    prs_check_attnt_task_incompletion BIT NOT NULL DEFAULT 0,
    prs_check_attnt_fidgeting BIT NOT NULL DEFAULT 0,
    prs_check_attnt_not_seated BIT NOT NULL DEFAULT 0,
    prs_check_attnt_loud BIT NOT NULL DEFAULT 0,
    prs_check_attnt_talkative BIT NOT NULL DEFAULT 0,
    prs_check_attnt_interuptive BIT NOT NULL DEFAULT 0,
    prs_check_attnt_no_adhd_symptoms BIT NOT NULL DEFAULT 0,
    prs_check_attnt_patient_notengaging BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Psychiatric_review_of_disruptivity (
    prs_check_disrup_severe_verbal BIT NOT NULL DEFAULT 0,
    prs_check_disrup_severe_tantrum BIT NOT NULL DEFAULT 0,
    prs_check_disrup_persistent_irratible BIT NOT NULL DEFAULT 0,
    prs_check_disrup_defiance BIT NOT NULL DEFAULT 0,
    prs_check_disrup_cruelty BIT NOT NULL DEFAULT 0,
    prs_check_disrup_destroy_property BIT NOT NULL DEFAULT 0,
    prs_check_disrup_theft BIT NOT NULL DEFAULT 0,
    prs_check_disrup_lack_remorse BIT NOT NULL DEFAULT 0,
    prs_check_disrup_no_dmdd_symptoms BIT NOT NULL DEFAULT 0,
    prs_check_disrup_patient_notengaging BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Psychiatric_review_of_mania (
    prs_check_mania_grandiose BIT NOT NULL DEFAULT 0,
    prs_check_mania_need_sleep BIT NOT NULL DEFAULT 0,
    prs_check_mania_talkative BIT NOT NULL DEFAULT 0,
    prs_check_mania_racing_thoughts BIT NOT NULL DEFAULT 0,
    prs_check_mania_highly_distractible BIT NOT NULL DEFAULT 0,
    prs_check_mania_goal_activity BIT NOT NULL DEFAULT 0,
    prs_check_mania_risky_behavior_emotion_handicapped BIT NOT NULL DEFAULT 0,
    prs_check_mania_no_manic_symptoms BIT NOT NULL DEFAULT 0,
    prs_check_mania_patient_notengaging BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Psychiatric_review_of_safety (
    prs_check_safety_suicidal_ideation BIT NOT NULL DEFAULT 0,
    prs_check_safety_suicidal_intent BIT NOT NULL DEFAULT 0,
    prs_check_safety_suicidal_plan BIT NOT NULL DEFAULT 0,
    prs_check_safety_homicidal_ideation BIT NOT NULL DEFAULT 0,
    prs_check_safety_auditory_hallucinations BIT NOT NULL DEFAULT 0,
    prs_check_safety_visual_hallucinations BIT NOT NULL DEFAULT 0,
    prs_check_safety_no_suicidal_intent BIT NOT NULL DEFAULT 0,
    prs_check_safety_no_harm_intent BIT NOT NULL DEFAULT 0,
    prs_check_safety_no_suicidal_plan BIT NOT NULL DEFAULT 0,
    prs_check_safety_no_homicidal_ideation BIT NOT NULL DEFAULT 0,
    prs_check_safety_no_auditory_hallucinations BIT NOT NULL DEFAULT 0,
    prs_check_safety_no_visual_hallucinations BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Family_history_of_psychiatric_disorders (
    fhp_psych_disord_name VARCHAR(1000),
    fhp_psych_disord_family_member VARCHAR(1000),
    fhp_check_psych_disord_none BIT NOT NULL DEFAULT 0,
    fhp_check_psych_disord_patient_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Family_history_of_suicide_attempts (
    fhp_suicide_attempt_qty VARCHAR(1000),
    fhp_suicide_attempt_family_memeber VARCHAR(1000),
    fhp_check_suicide_attempt_none BIT NOT NULL DEFAULT 0,
    fhp_check_suicide_attempt_patient_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Family_history_of_substance_use_disorders (
    fhp_substance_disord_name VARCHAR(1000),
    fhp_substance_disord_family_member VARCHAR(1000),
    fhp_substance_disord_none BIT NOT NULL DEFAULT 0,
    fhp_substance_disord_patient_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Family_history_of_coronary_artery_disease (
    fhp_cad_qty VARCHAR(1000),
    fhp_cad_family_member VARCHAR(1000),
    fhp_check_cad_none BIT NOT NULL DEFAULT 0,
    fhp_check_cad_patient_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_age_status (
    mse_check_eval_age_young BIT NOT NULL DEFAULT 0,
    mse_check_eval_middle_aged BIT NOT NULL DEFAULT 0,
    mse_check_eval_elderly BIT NOT NULL DEFAULT 0,
    mse_check_eval_appears_stated_age BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_weight_status (
    mse_check_eval_wt_average BIT NOT NULL DEFAULT 0,
    mse_check_eval_wt_overweight BIT NOT NULL DEFAULT 0,
    mse_check_eval_wt_obese BIT NOT NULL DEFAULT 0,
    mse_check_eval_underweight BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_grooming_status (
    mse_check_eval_grm_well_cladded BIT NOT NULL DEFAULT 0,
    mse_check_eval_grm_clumsy BIT NOT NULL DEFAULT 0,
    mse_check_eval_grm_good_eyecontact BIT NOT NULL DEFAULT 0,
    mse_check_eval_grm_bad_eyecontact BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_hygiene_status (
    GA_hygiene_kempt BIT NOT NULL DEFAULT 0,
    GA_hygiene_unkempt BIT NOT NULL DEFAULT 0,
    GA_hygiene_malo BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_gait_status (
    mse_check_eval_gait_normal BIT NOT NULL DEFAULT 0,
    mse_check_eval_gait_awkward BIT NOT NULL DEFAULT 0,
    mse_check_eval_gait_staggering BIT NOT NULL DEFAULT 0,
    mse_check_eval_gait_shuffling BIT NOT NULL DEFAULT 0,
    mse_check_eval_gait_rigid BIT NOT NULL DEFAULT 0,
    mse_check_eval_gait_high_stepping BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_posture_status (
    mse_check_eval_posture_normal BIT NOT NULL DEFAULT 0,
    mse_check_eval_posture_stooped BIT NOT NULL DEFAULT 0,
    mse_check_eval_posture_kyphosis BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_attitude_status (
    mse_check_eval_attit_calm BIT NOT NULL DEFAULT 0,
    mse_check_eval_attit_cooperative BIT NOT NULL DEFAULT 0,
    mse_check_eval_attit_uncooperative BIT NOT NULL DEFAULT 0,
    mse_check_eval_attit_belligerent BIT NOT NULL DEFAULT 0,
    mse_check_eval_negativistic BIT NOT NULL DEFAULT 0,
    mse_check_eval_suspicous BIT NOT NULL DEFAULT 0,
    mse_check_eval_attit_apathetic BIT NOT NULL DEFAULT 0,
    mse_check_eval_attit_fearful BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_motor_activity_status (
    mse_check_eval_motor_normal BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_restless BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_hyperactive BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_bizzare_gestures BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_bizzare_mannerisms BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_stereotypes BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_posturing BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_ties BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_tremors BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_psychomotor_agitation BIT NOT NULL DEFAULT 0,
    mse_check_eval_motor_psychomotor_retardation BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_mood_status (
    mse_check_eval_mood_tired BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_ok BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_alright BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_happy BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_good BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_sad BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_mad BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_bad BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_desperate BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_worried BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_anxious BIT NOT NULL DEFAULT 0,
    mse_check_eval_mood_angry BIT NOT NULL DEFAULT 0,
    mse_opentxt_eval_mood_other VARCHAR(1000),
    mse_check_eval_mood_patient_dna BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_affect_status (
    mse_check_eval_affect_flat BIT NOT NULL DEFAULT 0,
    mse_check_eval_affect_blunted BIT NOT NULL DEFAULT 0,
    mse_check_eval_affect_constricted BIT NOT NULL DEFAULT 0,
    mse_check_eval_affect_full_range BIT NOT NULL DEFAULT 0,
    mse_check_eval_affect_depressed BIT NOT NULL DEFAULT 0,
    mse_check_eval_affect_anxious BIT NOT NULL DEFAULT 0,
    mse_check_eval_affect_expansive BIT NOT NULL DEFAULT 0,
    mse_check_eval_affect_congruent_to_mood BIT NOT NULL DEFAULT 0,
    mse_check_eval_affect_incongruent_to_mood_ BIT NOT NULL DEFAULT 0,
    mse_opentxt_eval_affect_other VARCHAR(1000),
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_thought_process_status (
    mse_check_eval_thoughtproc_logical BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtproc_tangential BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtproc_loose_associations BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtproc_circumstations BIT NOT NULL DEFAULT 0,
    mse_checK_eval_thoughtproc_flightofideas BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtproc_overinclusive BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtproc_word_salad BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtproc_thought_blocking BIT NOT NULL DEFAULT 0,
    mse_opentxt_eval_thoughtproc_other VARCHAR(1000),
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_thought_content_delusion_status (
    mse_check_eval_thoughtcont_del_paranoid BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_persecutory BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_control BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_grandiose BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_reference BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_nhilistic BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_jealousy BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_guilt BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_erotic BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_sematic BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_religous BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_del_bizzare BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_thought_content_overvalued_ideas_status (
    mse_check_eval_thoughtcont_ovr_paranoid BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_ovr_control BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_ovr_reference BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_ovr_obssessions BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_ovr_suicidal_thought BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_ovr_homicidal_thought BIT NOT NULL DEFAULT 0,
    mse_check_eval_thoughtcont_ovr_no_disturbance BIT NOT NULL DEFAULT 0,
    mse_opentxt_eval_thoughtcont_ovr_other VARCHAR(1000),
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_perception_status (
    mse_check_eval_perc_auditory BIT NOT NULL DEFAULT 0,
    mse_check_eval_perc_command BIT NOT NULL DEFAULT 0,
    mse_check_eval_perc_visual BIT NOT NULL DEFAULT 0,
    mse_check_eval_perc_tactile BIT NOT NULL DEFAULT 0,
    mse_check_eval_perc_olfactory BIT NOT NULL DEFAULT 0,
    mse_check_eval_perc_gustatory BIT NOT NULL DEFAULT 0,
    mse_check_eval_perc_illusions BIT NOT NULL DEFAULT 0,
    mse_check_eval_perc_depersonalization BIT NOT NULL DEFAULT 0,
    mse_check_eval_perc_derealization BIT NOT NULL DEFAULT 0,
    mse_check_eval_perc_no_alteration BIT NOT NULL DEFAULT 0,
    mse_opentxt_eval_perc_other VARCHAR(1000),
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_four_sphere_orientation_status (
    mse_check_eval_orient_place BIT NOT NULL DEFAULT 0,
    mse_check_eval_orient_person BIT NOT NULL DEFAULT 0,
    mse_check_eval_orient_time BIT NOT NULL DEFAULT 0,
    mse_check_eval_orient_reason_admission BIT NOT NULL DEFAULT 0,
    mse_check_eval_orient_within_normal_limits BIT NOT NULL DEFAULT 0,
    mse_check_eval_orient_impaired BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_concentration_status (
    mse_check_eval_conc_spell BIT NOT NULL DEFAULT 0,
    mse_check_eval_conc_serial7 BIT NOT NULL DEFAULT 0,
    mse_check_eval_conc_rapidcount BIT NOT NULL DEFAULT 0,
    mse_check_eval_conc_age_approp BIT NOT NULL DEFAULT 0,
    mse_check_eval_conc_within_normal_limits BIT NOT NULL DEFAULT 0,
    mse_check_eval_conc_impaired BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_recent_memory_status (
    mse_check_eval_recmem_5minrecall BIT NOT NULL DEFAULT 0,
    mse_check_eval_recmem_6digit BIT NOT NULL DEFAULT 0,
    mse_check_eval_recmem_age_approp BIT NOT NULL DEFAULT 0,
    mse_check_eval_recmem_within_normal_limits BIT NOT NULL DEFAULT 0,
    mse_check_eval_recmem_impaired BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_remote_memory_status (
    mse_check_eval_rmtmem_former_pres BIT NOT NULL DEFAULT 0,
    mse_check_eval_rmtmem_age_approp BIT NOT NULL DEFAULT 0,
    mse_check_eval_rmtmem_lastnews BIT NOT NULL DEFAULT 0,
    mse_check_eval_rmtmem_citybirth BIT NOT NULL DEFAULT 0,
    mse_check_eval_rmtmem_oldschoolname BIT NOT NULL DEFAULT 0,
    mse_opentxt_eval_rmtmem_other VARCHAR(1000),
    mse_check_eval_rmtmem_within_normal_limits BIT NOT NULL DEFAULT 0,
    mse_check_eval_rmtmem_impaired BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_estimated_intelligence_status (
    mse_check_eval_estint_vocab BIT NOT NULL DEFAULT 0,
    mse_check_eval_estint_education BIT NOT NULL DEFAULT 0,
    mse_opentxt_eval_estint_other VARCHAR(1000),
    mse_check_eval_estint_above_avg BIT NOT NULL DEFAULT 0,
    mse_check_eval_estint_avg BIT NOT NULL DEFAULT 0,
    mse_check_eval_estint_below_avg BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_abstract_reasoning_status (
    mse_check_eval_abstract_similarities BIT NOT NULL DEFAULT 0,
    mse_check_eval_abstract_proverbs BIT NOT NULL DEFAULT 0,
    mse_opentxt_eval_abstract_other VARCHAR(1000),
    mse_check_eval_abstract_within_normal_limits BIT NOT NULL DEFAULT 0,
    mse_check_eval_abstract_impaired BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Patient_mental_status_exam_recommendation (
    mse_check_eval_rec_med_stabilization BIT NOT NULL DEFAULT 0,
    mse_check_eval_rec_milieu_therapy BIT NOT NULL DEFAULT 0,
    mse_check_eval_rec_med_management BIT NOT NULL DEFAULT 0,
    nse_check_eval_rec_coping_skills BIT NOT NULL DEFAULT 0,
    mse_check_eval_rec_group_therapy BIT NOT NULL DEFAULT 0,
    mse_check_eval_rec_participation BIT NOT NULL DEFAULT 0,
    mse_opentxt_eval_rec_other VARCHAR(1000),
    ACN BIGINT NOT NULL,
);

CREATE TABLE Evaluation_psychiatric_diagnosis (
    dx_eval_psych VARCHAR(1000),
    dx_eval_medcial VARCHAR(1000),
    ACN BIGINT NOT NULL,
);  

CREATE TABLE Evaluation_stressors (
    strs_check_eval_problems_support BIT NOT NULL DEFAULT 0,
    strs_check_eval_housing_problems BIT NOT NULL DEFAULT 0,
    strs_check_eval_healthcare_problems BIT NOT NULL DEFAULT 0,
    strs_check_eval_bullying BIT NOT NULL DEFAULT 0,
    strs_opentxt_eval_other_problems VARCHAR(1000),
    strs_check_eval_environment_problems BIT NOT NULL DEFAULT 0,
    strs_check_eval_economic_problems BIT NOT NULL DEFAULT 0,
    strs_check_eval_family_conflict BIT NOT NULL DEFAULT 0,
    strs_check_eval_legal_problems BIT NOT NULL DEFAULT 0,
    strs_check_eval_occupational_problems BIT NOT NULL DEFAULT 0,
    strs_check_eval_educational_problems BIT NOT NULL DEFAULT 0,
    strs_check_eval_social_peer_problems BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);


CREATE TABLE Estimated_length_of_stay (
    len_check_eval_less5 BIT NOT NULL DEFAULT 0,
    len_check_eval_5to7 BIT NOT NULL DEFAULT 0,
    len_check_eval_more7 BIT NOT NULL DEFAULT 0,
    len_check_eval_to_be_determined BIT NOT NULL DEFAULT 0,
    len_opentxt_eval_other BIT NOT NULL DEFAULT 0,
    ACN BIGINT NOT NULL,
);

CREATE TABLE Evaluation_discharge_plan (
    dischplan_check_eval_absence_suicidal_intent BIT NOT NULL DEFAULT 0,
    dischplan_check_eval_aftercare_arrangement BIT NOT NULL DEFAULT 0,
    dischplan_check_eval_lesser_level_care BIT NOT NULL DEFAULT 0,
    dischplan_check_eval_inc_ability_selfcare BIT NOT NULL DEFAULT 0,
    dischplan_check_eval_improved_mood BIT NOT NULL DEFAULT 0,
    dischplan_check_eval_stable_medication BIT NOT NULL DEFAULT 0,
    dischplan_opentxt_eval_other VARCHAR(1000),
    dischplan_opentxt_eval_needed_living_arrangement VARCHAR(1000),
    ACN BIGINT NOT NULL,
);
