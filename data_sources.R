# ################# arrests dataset #######################

app_token <- "Fm6ShrlqYtvnNx0IB9N0EyrfT"
## used SoQl to filter the imported columns and to extract years as an integer from the date
arrests_df <- read.socrata("https://data.cityofnewyork.us/resource/8h9b-rp9u.csv?$where=arrest_date >= '2014-01-01T00:00:00.000'&$select=date_extract_y(arrest_date) as year,ofns_desc,arrest_boro,age_group, perp_sex, perp_race, latitude, longitude",
                                       app_token = app_token)

# ################# unemployed dataset #######################
# 
bronx_url <- "https://docs.google.com/spreadsheets/d/e/2PACX-1vTpI6SZYx2-kMLhQbprpfgdL0qp0gY4He-VgCWlLpAMkRsXFx-7T7DcIr-XADJCa6a_3O2tigtla2EM/pub?gid=0&single=true&output=csv"
queens_url <- "https://docs.google.com/spreadsheets/d/e/2PACX-1vTpI6SZYx2-kMLhQbprpfgdL0qp0gY4He-VgCWlLpAMkRsXFx-7T7DcIr-XADJCa6a_3O2tigtla2EM/pub?gid=1191228861&single=true&output=csv"
brooklyn_url <- "https://docs.google.com/spreadsheets/d/e/2PACX-1vTpI6SZYx2-kMLhQbprpfgdL0qp0gY4He-VgCWlLpAMkRsXFx-7T7DcIr-XADJCa6a_3O2tigtla2EM/pub?gid=1054422077&single=true&output=csv"
manhattan_url <- "https://docs.google.com/spreadsheets/d/e/2PACX-1vTpI6SZYx2-kMLhQbprpfgdL0qp0gY4He-VgCWlLpAMkRsXFx-7T7DcIr-XADJCa6a_3O2tigtla2EM/pub?gid=652704166&single=true&output=csv"
staten_url <- "https://docs.google.com/spreadsheets/d/e/2PACX-1vTpI6SZYx2-kMLhQbprpfgdL0qp0gY4He-VgCWlLpAMkRsXFx-7T7DcIr-XADJCa6a_3O2tigtla2EM/pub?gid=1149424970&single=true&output=csv"


bronx <- read.csv(bronx_url, skip = 2, stringsAsFactors = FALSE) 
queens <- read.csv(queens_url, skip = 2, stringsAsFactors = FALSE)
brooklyn <- read.csv(brooklyn_url, skip = 2, stringsAsFactors = FALSE)
manhattan <- read.csv(manhattan_url, skip = 2, stringsAsFactors = FALSE)
staten <- read.csv(staten_url, skip = 2, stringsAsFactors = FALSE)


# ################# complain dataset #######################

dat <- read.socrata("https://data.cityofnewyork.us/resource/qgea-i56i.csv?$where=cmplnt_fr_dt between  '2014-01-01T00:00:00' and '2018-12-31T00:00:00'&$select=date_extract_y(cmplnt_fr_dt) as year,ofns_desc,boro_nm,susp_age_group, susp_sex, susp_race",
                    app_token = app_token)
