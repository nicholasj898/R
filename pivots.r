#Pivots
#Lists tracks in increasing order of its top rank
billboard %>% pivot_longer(wk1:wk76, names_to = "week", values_to = "rank", values_drop_na = TRUE)

#Shows for each track how many weeks they spent on the chart
billboard %>% pivot_longer(wk1:wk76, names_to = "week", values_to = "position", values_drop_na = TRUE)

#Lists tracks in decreasing order of number of weeks spent on the chart
billboard %>% pivot_longer(wk1:wk76, names_to="week", values_to="position", values_drop_na = TRUE) %>% group_by(track)

#Shows for each track its top rank
billboard %>% pivot_longer(wk1:wk76, names_to = "week", values_to = "rank", values_drop_na = TRUE)

#Lists tracks in increasing order of its top rank
billboard %>% pivot_longer(wk1:wk76, names_to = "week", values_to = "rank", values_drop_na = TRUE) %>% select(track, rank) %>% group_by(track)

#Shows for each artist his/her/its top rank
billboard %>% pivot_longer(wk1:wk76, names_to = "week", values_to = "rank", values_drop_na = TRUE) %>% select(artist, rank, track) %>% filter(rank == 1)

#Lists artists in increasing order of their top rank
billboard %>% pivot_longer(wk1:wk76, names_to = "week", values_to = "rank", values_drop_na = TRUE) %>% select(artist, rank) %>% group_by(track)

#Lists tracks that only spent one week in the charts
billboard %>% pivot_longer(wk1:wk76, names_to = "week", values_to = "rank", values_drop_na = TRUE) %>% select(artist, rank, track) %>% filter(week == 1)

#Lists tracks that only spent one week in the charts along with its artist
billboard %>% pivot_longer(wk1:wk76, names_to = "week", values_to = "rank", values_drop_na = TRUE) %>% select(artist, rank, track) %>% filter(week == 1) %>% filter(artist)