% Define diet suggestions for various diseases

diet(flu, [avoid(sugary_foods), consume(warm_fluids), consume(rest)]).

diet(cold, [consume(warm_fluids), consume(vitamin_C_rich_foods), consume(rest)]).

diet(pneumonia, [consume(high_protein_foods), consume(vitamin_D_rich_foods), consume(rest)]).

diet(allergy, [avoid(allergen_triggers), consume(antihistamines), consume(rest)]).



% Rules to suggest diet based on disease

suggest_diet(Disease, Suggestions) :-

    diet(Disease, Suggestions).



% Example query:

% suggest_diet(flu, Diet).
