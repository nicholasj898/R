#band_members_4rows(left table)       #band_instruments_4rows(right table)
#Name         Band                    #Name         Band
#Mick         Stones                  #John         guitar
#John         Beatles                 #Paul         bass
#Paul         Beatles                 #Keith        guitar
#Paul         Wings                   #Paul         vocals
band_members
band_instruments
Band_members_4rows <- band_members
Band_instruments_4rows <- band_instruments
#band_members_4rows[nrow(name) + 1, ] <- name
#Calculate the different Joins
#Inner join
Band_members_4rows %>% inner_join(Band_instruments_4rows)
#Left join
Band_members_4rows %>% left_join(Band_instruments_4rows)
#Right join
Band_members_4rows %>% right_join(Band_instruments_4rows)
#Full Join
Band_members_4rows %>% full_join(Band_instruments_4rows)