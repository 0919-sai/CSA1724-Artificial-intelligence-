% Define symptoms for various diseases

symptom(flu, fever).

symptom(flu, cough).

symptom(flu, sore_throat).

symptom(cold, runny_nose).

symptom(cold, sneezing).

symptom(pneumonia, high_fever).

symptom(pneumonia, chest_pain).

symptom(pneumonia, shortness_of_breath).

symptom(allergy, sneezing).

symptom(allergy, runny_nose).

symptom(allergy, itchy_eyes).



% Rules to diagnose diseases based on symptoms

diagnosis(Disease, Symptoms) :-

    symptom(Disease, Symptom),

    member(Symptom, Symptoms).
