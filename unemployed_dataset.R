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


