% Medical Expert System in Prolog
% This program infers a likely disease from known symptoms.

% Knowledge base: patient symptoms
has_symptom(ram, fever).
has_symptom(ram, cough).
has_symptom(ram, sore_throat).

has_symptom(sita, fever).
has_symptom(sita, body_ache).
has_symptom(sita, headache).

has_symptom(hari, sneezing).
has_symptom(hari, runny_nose).
has_symptom(hari, itchy_eyes).

has_symptom(gita, fever).
has_symptom(gita, rash).
has_symptom(gita, joint_pain).

% Disease rules
possible_disease(Patient, flu) :-
    has_symptom(Patient, fever),
    has_symptom(Patient, body_ache),
    has_symptom(Patient, headache).

possible_disease(Patient, common_cold) :-
    has_symptom(Patient, fever),
    has_symptom(Patient, cough),
    has_symptom(Patient, sore_throat).

possible_disease(Patient, allergy) :-
    has_symptom(Patient, sneezing),
    has_symptom(Patient, runny_nose),
    has_symptom(Patient, itchy_eyes).

possible_disease(Patient, dengue) :-
    has_symptom(Patient, fever),
    has_symptom(Patient, rash),
    has_symptom(Patient, joint_pain).

% Suggestion rules
advice(flu, 'Take rest, drink fluids, and consult a doctor if fever persists.').
advice(common_cold, 'Stay hydrated and use symptomatic treatment.').
advice(allergy, 'Avoid allergens and consider antihistamines after medical advice.').
advice(dengue, 'Seek immediate medical evaluation and monitor platelet count.').

% Main query helper
diagnose(Patient, Disease, Advice) :-
    possible_disease(Patient, Disease),
    advice(Disease, Advice).

% Example queries:
% ?- possible_disease(ram, D).
% ?- diagnose(sita, D, A).
% ?- diagnose(hari, D, A).
