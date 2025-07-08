# IPL-Analysis
Welcome to my IPL-focused data analysis project! This is my way of practicing SQL while digging into the IPL match data to uncover some fun insights. As a huge cricket fan, I wanted to see which teams truly dominated, what toss decisions tend to work best, and who the real game changers were during this timeframe.

For starters, I took a look at which team had the most wins overall. Simple question, but it sets the tone. Everyone has their own "biggest team" bias, so why not let the data do the talking?

Then I decided to dive into toss strategies. You always hear about captains choosing to bat or bowl first, but does it really work? I wanted to see how often these choices led to actual wins for the toss-winning side.

Finally, I wanted to settle the endless debates about who really stood out as the best player. The "Player of the Match" field is a nice way to measure consistent impact, so I aggregated these awards to spotlight the true match-winners of the league.

# Data Source
This project uses an IPL matches dataset in SQL format.

# Queries used:

-- Most wins for an IPL team
select winner,count(winner) from matches
group by winner
order by count(winner) DESC;

-- Toss decisions and how successful they are
select toss_decision,count(toss_decision) from matches
where winner = toss_winner
group by toss_decision;

-- Best player based on Player of the Match awards
select player_of_match,count(player_of_match) from matches
group by player_of_match
order by count(player_of_match) DESC;


# What You'll Find:

Rankings for teams based on total wins

Toss decisions and their win success rates

List of top players by Player of the Match awards

This project is all about putting the IPL debates to rest with clear, simple SQL queries. Sport analytics made accessible and fun!
