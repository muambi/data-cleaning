--all the data in the table
SELECT*
FROM dbo.players_15

--Finding incomplete entries
SELECT *
FROM dbo.players_15
WHERE[sofifa_id] IS NULL
      OR [player_url]IS NULL
      OR [short_name]IS NULL
      OR [long_name]IS NULL
      OR [age]IS NULL
      OR [dob]IS NULL
      OR [height_cm]IS NULL
      OR [weight_kg]IS NULL
      OR [nationality]IS NULL
      OR [club]IS NULL
      OR [overall]IS NULL
      OR [potential]IS NULL
      OR [value_eur]IS NULL
      OR [wage_eur]IS NULL
      OR [player_positions]IS NULL
      OR [preferred_foot]IS NULL
      OR [international_reputation]IS NULL
      OR [weak_foot]IS NULL
      OR [skill_moves]IS NULL
      OR [work_rate]IS NULL
      OR [body_type]IS NULL
      OR [real_face]IS NULL
      OR [release_clause_eur]IS NULL
      OR [player_tags]IS NULL
      OR [team_position]IS NULL
      OR [team_jersey_number]IS NULL
      OR [loaned_from]IS NULL
      OR [joined]IS NULL
      OR [contract_valid_until]IS NULL
      OR [nation_position]IS NULL
      OR [nation_jersey_number]IS NULL
      OR [pace]IS NULL
      OR [shooting]IS NULL
      OR [passing]IS NULL
      OR [dribbling]IS NULL
      OR [defending]IS NULL
      OR [physic]IS NULL
      OR [gk_diving]IS NULL
      OR [gk_handling]IS NULL
      OR [gk_kicking]IS NULL
      OR [gk_reflexes]IS NULL
      OR [gk_speed]IS NULL
      OR [gk_positioning]IS NULL
      OR [player_traits]IS NULL
      OR [attacking_crossing]IS NULL
      OR [attacking_finishing]IS NULL
      OR [attacking_heading_accuracy]IS NULL
      OR [attacking_short_passing]IS NULL
      OR [attacking_volleys]IS NULL
      OR [skill_dribbling]IS NULL
      OR [skill_curve]IS NULL
      OR [skill_fk_accuracy]IS NULL
      OR [skill_long_passing]IS NULL
      OR [skill_ball_control]IS NULL
      OR [movement_acceleration]IS NULL
      OR [movement_sprint_speed]IS NULL
      OR [movement_agility]IS NULL
      OR [movement_reactions]IS NULL
      OR [movement_balance]IS NULL
      OR [power_shot_power]IS NULL
      OR [power_jumping]IS NULL
      OR [power_stamina]IS NULL
      OR [power_strength]IS NULL
      OR [power_long_shots]IS NULL
      OR [mentality_aggression]IS NULL
      OR [mentality_interceptions]IS NULL
      OR [mentality_positioning]IS NULL
      OR [mentality_vision]IS NULL
      OR [mentality_penalties]IS NULL
      OR [defending_marking]IS NULL
      OR [defending_standing_tackle]IS NULL
      OR [defending_sliding_tackle]IS NULL
      OR [goalkeeping_diving]IS NULL
      OR [goalkeeping_handling]IS NULL
      OR [goalkeeping_kicking]IS NULL
      OR [goalkeeping_positioning]IS NULL
      OR [goalkeeping_reflexes]IS NULL
      OR [ls]IS NULL
      OR [st]IS NULL
      OR [rs]IS NULL
      OR [lw]IS NULL
      OR [lf]IS NULL
      OR [cf]IS NULL
      OR [rf]IS NULL
      OR [rw]IS NULL
      OR [lam]IS NULL
      OR [cam]IS NULL
      OR [ram]IS NULL
      OR [lm]IS NULL
      OR [lcm]IS NULL
      OR [cm]IS NULL
      OR [rcm]IS NULL
      OR [rm]IS NULL
      OR [lwb]IS NULL
      OR [ldm]IS NULL
      OR [cdm]IS NULL
      OR [rdm]IS NULL
      OR [rwb]IS NULL
      OR [lb]IS NULL
      OR [lcb]IS NULL
      OR [cb]IS NULL
      OR [rcb]IS NULL
      OR [rb]IS NULL

	  --Delete columns that have null values in necessary fields
	  DELETE FROM dbo.players_15
	  WHERE [sofifa_id]IS NULL
	  OR [age]IS NULL
	  OR [dob]IS NULL
	  OR [player_url]IS NULL
	  OR [contract_valid_until]IS NULL
	  OR [joined]IS NULL
	  OR [short_name]IS NULL
	  OR [long_name]IS NULL
	  OR [club]IS NULL
	  OR [nationality]IS NULL

	  --consistency in data type in preferred_foot column
	  SELECT DISTINCT [preferred_foot]
	  FROM dbo.players_15

	  --consistency in work_rate
	  SELECT DISTINCT [work_rate]
	  FROM dbo.players_15

	  --consistency in body_type
	  SELECT DISTINCT [body_type]
	  FROM dbo.players_15

	  --consistency in real_face
	  SELECT DISTINCT [real_face]
	  FROM dbo.players_15

	  --removing extra spaces from our data
	  SELECT trim([nationality])
	  FROM dbo.players_15

	  UPDATE dbo.players_15
	  SET [nationality]=trim([nationality])

	  --deleting a row with incorrect data
	  DELETE FROM dbo.players_15
	  WHERE sofifa_id=202968
	  AND sofifa_id=191668
	  AND sofifa_id=191868
	  AND sofifa_id=176389
	  AND sofifa_id=191327
	  AND sofifa_id=191819
	  AND sofifa_id=202989
	  AND sofifa_id=176346
	  AND sofifa_id=212791
	  AND sofifa_id=187279
	  AND sofifa_id=200601
	  AND sofifa_id=140057
	  AND sofifa_id=155351
	  AND sofifa_id=156482
	  AND sofifa_id=165867
	  AND sofifa_id=165903
	  AND sofifa_id=203237
	  AND sofifa_id=176347
	  AND sofifa_id=200553
	  AND sofifa_id=184337
	  AND sofifa_id=202985
	  AND sofifa_id=202994
	  AND sofifa_id=155625
	  AND sofifa_id=165882
	  AND sofifa_id=184900
	  AND sofifa_id=216736
	  AND sofifa_id=191662
	  AND sofifa_id=
	 


	  
	  

	  