-- Replaced these with MinorCivTrait_Yields table in GED_General.xml
UPDATE Defines
SET Value = 0
WHERE Name IN (
	'FRIENDS_CULTURE_BONUS_AMOUNT_ANCIENT',
	'FRIENDS_CULTURE_BONUS_AMOUNT_MEDIEVAL',
	'FRIENDS_CULTURE_BONUS_AMOUNT_INDUSTRIAL',
	'ALLIES_CULTURE_BONUS_AMOUNT_ANCIENT',
	'ALLIES_CULTURE_BONUS_AMOUNT_MEDIEVAL',
	'ALLIES_CULTURE_BONUS_AMOUNT_INDUSTRIAL',
	'FRIENDS_CAPITAL_FOOD_BONUS_AMOUNT_PRE_RENAISSANCE',
	'FRIENDS_CAPITAL_FOOD_BONUS_AMOUNT_POST_RENAISSANCE',
	'FRIENDS_OTHER_CITIES_FOOD_BONUS_AMOUNT_PRE_RENAISSANCE',
	'FRIENDS_OTHER_CITIES_FOOD_BONUS_AMOUNT_POST_RENAISSANCE',
	'ALLIES_CAPITAL_FOOD_BONUS_AMOUNT',
	'ALLIES_OTHER_CITIES_FOOD_BONUS_AMOUNT',
	'FRIENDS_HAPPINESS_FLAT_BONUS_AMOUNT_ANCIENT',
	'FRIENDS_HAPPINESS_FLAT_BONUS_AMOUNT_MEDIEVAL',
	'FRIENDS_HAPPINESS_FLAT_BONUS_AMOUNT_INDUSTRIAL',
	'ALLIES_HAPPINESS_FLAT_BONUS_AMOUNT_ANCIENT',
	'ALLIES_HAPPINESS_FLAT_BONUS_AMOUNT_MEDIEVAL',
	'ALLIES_HAPPINESS_FLAT_BONUS_AMOUNT_INDUSTRIAL',
	'FRIENDS_HAPPINESS_PER_LUXURY_BONUS_AMOUNT_ANCIENT',
	'FRIENDS_HAPPINESS_PER_LUXURY_BONUS_AMOUNT_MEDIEVAL',
	'FRIENDS_HAPPINESS_PER_LUXURY_BONUS_AMOUNT_INDUSTRIAL',
	'ALLIES_HAPPINESS_PER_LUXURY_BONUS_AMOUNT_ANCIENT',
	'ALLIES_HAPPINESS_PER_LUXURY_BONUS_AMOUNT_MEDIEVAL',
	'ALLIES_HAPPINESS_PER_LUXURY_BONUS_AMOUNT_INDUSTRIAL',
	'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_INDUSTRIAL',
	'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_RENAISSANCE',
	'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_MEDIEVAL',
	'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_CLASSICAL',
	'FRIENDS_FAITH_FLAT_BONUS_AMOUNT_ANCIENT',
	'ALLIES_FAITH_FLAT_BONUS_AMOUNT_INDUSTRIAL',
	'ALLIES_FAITH_FLAT_BONUS_AMOUNT_RENAISSANCE',
	'ALLIES_FAITH_FLAT_BONUS_AMOUNT_MEDIEVAL',
	'ALLIES_FAITH_FLAT_BONUS_AMOUNT_CLASSICAL',
	'ALLIES_FAITH_FLAT_BONUS_AMOUNT_ANCIENT'
);

UPDATE Defines
SET Value = ROUND(Value * 1.5,0)
WHERE Name IN (
	'MINOR_QUEST_FRIENDSHIP_ROUTE'				,
	'MINOR_QUEST_FRIENDSHIP_KILL_CITY_STATE'	,
	'MINOR_QUEST_FRIENDSHIP_BULLY_CITY_STATE'	,
	'MINOR_QUEST_FRIENDSHIP_DENOUNCE_MAJOR'		,
	'MINOR_LIBERATION_FRIENDSHIP'				
);

UPDATE Defines
SET Value = ROUND(Value * 1.25,0)
WHERE Name IN (
	'WAR_QUEST_COMPLETE_FRIENDSHIP'				,
	'MINOR_QUEST_FRIENDSHIP_KILL_CAMP'
);

UPDATE Defines
SET Value = 10
WHERE Name IN (
	'MINOR_QUEST_FRIENDSHIP_CONTEST_CULTURE'	,
	'MINOR_QUEST_FRIENDSHIP_CONTEST_FAITH'		,
	'MINOR_QUEST_FRIENDSHIP_CONTEST_TECHS'
);

--UPDATE Units
--SET HurryCostModifier = 25
--WHERE CombatClass = 'UNITCOMBAT_DIPLOMACY';