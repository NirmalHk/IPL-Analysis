-- Most wins for an IPL team in the give timeframe:

select winner,count(winner) from matches
group by winner
order by count(winner) DESC


-- Toss decisions and how successfule they actually are:
  
select toss_decision,count(toss_decision)  from matches
where winner = toss_winner
group by toss_decision


-- Who was the best player in the league for the timeframe? We can use the man of the match field to get the best players!
  
select player_of_match,count(player_of_match) from matches
group by player_of_match
order by count(player_of_match) DESC




