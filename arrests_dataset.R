# ################# arrests dataset #######################

app_token <- "Fm6ShrlqYtvnNx0IB9N0EyrfT"
## used SoQl to filter the imported columns and to extract years as an integer from the date
arrests_df <- read.socrata("https://data.cityofnewyork.us/resource/8h9b-rp9u.csv?$where=arrest_date >= '2014-01-01T00:00:00.000'&$select=date_extract_y(arrest_date) as year,ofns_desc,arrest_boro,age_group, perp_sex, perp_race, latitude, longitude",
                                       app_token = app_token)

