# ################# complain dataset #######################

dat <- read.socrata("https://data.cityofnewyork.us/resource/qgea-i56i.csv?$where=cmplnt_fr_dt between  '2014-01-01T00:00:00' and '2018-12-31T00:00:00'&$select=date_extract_y(cmplnt_fr_dt) as year,ofns_desc,boro_nm,susp_age_group, susp_sex, susp_race",
                    app_token = app_token)
