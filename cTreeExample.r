library(partykit)

df<- read.csv('fakeDataForSO.csv', header=T)
df$X<- NULL
View(df)


set.seed(123)
fit<- ctree(segment_rollup~ challenge_day_1 + comment_day_1 + event_day_1 + friend_day_1 + group_day_1 + high5_give_day_1 + lisa_taken_day_1 +points_charity_day_1 + points_local_day_1 + points_raffle_day_1 + points_spent_day_1 +program_complete_day_1 + program_current_day_1 + program_start_day_1+startbmi + ageGroup + Sex + startHE, data=df, control = ctree_control(minbucket = 10L))

plot(fit)
