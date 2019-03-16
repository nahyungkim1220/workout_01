---
title: data dictionary (GSW top 5 players)
author: "Audrey Kim"
date: "March 12, 2019"
output: github_document
---
Title of database: shots_data

1) Source of Data: The data is drawn from the Golden State Warriors, the American basketball team, and their 2016 performance. It draws specifically from 5 players: Stephen Curry, Andre Iguodala, Draymon Green, Kevin Durant, and Klay Thompson.
2) Relevant Information:

Given below is a brief description of each attribute name. 

- team_name: name of basketball team
- game_date: date the basketball game took place
- season: season the games took place
- period: an NBA game is divided in 4 periods of 12 mins each. For example, a value
for period: 1 refers to the first period (the first 12 mins of the game).
- minutes_remaining and seconds_remaining have to do with the amount of time in
minutes and seconds, respectively, that remained to be played in a given period.
- shot_made_flag indicates whether a shot was made (yes_shot) or missed (no_shot).
- action_type has to do with the basketball moves used by players, either to pass by defenders to gain access to the basket, or to get a clean pass to a teammate to score a two pointer or three pointer.
- shot_type: indicates whether a shot is a 2-point field goal, or a 3-point field goal.
- shot_distance: distance to the basket (measured in feet).
- x and y refer to the court coordinates (measured in inches) where a shot occurred.


3) Attribute Information: 
Given below is the attribute name and type.

- team_name: character
- game_date: factor
- season: double
- period: double
- minutes_remaining: double
- seconds_remaining: double
- shot_made_flag: character
- action_type: character
- shot_type: character
- shot_distance: double
- x: double
- y: double
- minute: double
