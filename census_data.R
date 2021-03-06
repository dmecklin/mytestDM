library(tidyverse)
# Ethnic Iidentity by province
# Census data from 2010 CENSUS OF POPULATION AND HOUSING: https://drive.google.com/drive/folders/0BzixB3inWbiGZ2k1bmpsQ2pPR2M
# "Zambia" refers to the whole country, there is no province called that.
census_2010 <- tibble(
plabs <- c("Zambia", "CENTRAL", "COPPERBELT", "EASTERN", "LUAPULA", "LUSAKA",  "MUCHINGA", "NORTH", "NORTH-WESTERN", "SOUTHERN", "WESTERN"),
Bemba  = c(21,13.6,35.9,1.2,44.1,20.2,37.2,55.3,2.8,3.4,0.7),
Lunda = c(0.9,0.3,1.7,0,7,0.6,0.1,0.1,0.1,0.1,0.1),
Lala = c(3.1,20.3,4.8,0.1,0.3,1.5,0.8,0.2,0.2,0.1,0.0),
Bisa = c(1.6, 0.6, 1.3, 1.3, 0.5, 0.6, 8.1, 6.7, 0.0, 0.1, 0.0),
Ushi = c(1.9, 0.4, 2.7, 0.0, 17.1, 0.5, 0.2, 0.2, 0.1, 0.1, 0.0),
Chishinga = c(0.5, 0.0, 0.3, 0.0, 6.0, 0.0, 0.0, 0.1, 0.0, 0.0, 0.0),
Ngumbo = c(0.6, 0.1, 0.7, 0.0, 6.9, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0),
Lamba = c(2.1, 2.2, 9.6, 0.0, 0.1, 1.1, 0.1, 0.1, 2.4, 0.1, 0.1),
Tabwa = c(0.7, 0.0, 0.2, 0.0, 1.1, 0.1, 0.0, 7.1, 0.0, 0.0, 0.0),
Tonga = c(13.6, 18.9, 3.5, 0.5, 0.3, 11.1, 0.5, 0.3, 0.7, 74.4, 0.9),
Lenje = c(1.6, 9.5, 1.2, 0.1, 0.1, 2.2, 0.1, 0.1, 0.1, 0.3, 0.1),
Soli = c(0.7, 0.8, 0.2, 0.1, 0.0, 3.2, 0.0, 0.0, 0.1, 0.2, 0.0),
Ila = c(0.8, 2.3, 0.2, 0.0, 0.0, 0.8, 0.0, 0.0, 0.1, 3.1, 0.1),
Luvale = c(2.2, 1.0, 2.4, 0.1, 0.0, 1.4, 0.1, 0.0, 16.5, 1.1, 6.4),
Lunda_NW = c(2.6, 0.5, 2.7, 0.0, 0.1, 0.9, 0.1, 0.1, 34.5, 0.2, 0.7),
Mbunda = c(1.2, 0.3, 0.2, 0.0, 0.0, 0.3, 0.0, 0.0, 1.6, 0.3, 14.7),
Chokwe = c(0.5, 0.1, 1.1, 0.0, 0.0, 0.2, 0.0, 0.0, 3.5, 0.1, 1.2),
Kaonde = c(2.9, 2.6, 4.8, 0.1, 0.1, 2.1, 0.1, 0.1, 26.9, 0.3, 0.5),
Lozi = c(5.7, 3.5, 2.1, 0.3, 0.2, 4.8, 0.3, 0.2, 1.1, 6.1, 50.3),
Nkoya = c(0.5, 0.4, 0.1, 0.0, 0.0, 0.3, 0.0, 0.0, 0.6, 0.3, 4.7),
Chewa = c(7.4, 2.5, 2.4, 39.7, 0.1, 10.5, 0.4, 0.2, 0.2, 0.9, 0.2),
Nsenga = c(5.3, 2.7, 3.5, 20.3, 0.1, 10.8, 0.3, 0.1, 0.2, 0.8, 0.1),
Ngoni = c(4.0, 2.6, 3.2, 15.3, 0.2, 7.0, 0.5, 0.3, 0.3, 1.1, 0.1),
Kunda = c(0.7, 0.2, 0.4, 3.3, 0.0, 1.0, 0.0, 0.0, 0.0, 0.1, 0.0),
Tumbuka = c(4.4, 1.9, 4.6, 15.6, 0.2, 5.4, 9.4, 0.6, 0.3, 0.6, 0.1),
Senga = c(0.9, 0.3, 0.5, 0.6, 0.0, 0.5, 11.3, 0.1, 0.1, 0.1, 0.0),
Lungu = c(0.8, 0.1, 0.3, 0.0, 0.1, 0.2, 0.1, 8.3, 0.0, 0.0, 0.0),
Mambwe = c(2.5, 1.4, 2.1, 0.1, 0.3, 2.9, 2.3, 16.3, 0.1, 0.3, 0.1),
Namwanga = c(2.8, 2.0, 4.2, 0.2, 0.2, 2.4, 23.3, 2.4, 0.2, 0.3, 0.1))
plabs <- c("Zambia", "CENTRAL", "COPPERBELT", "EASTERN", "LUAPULA", "LUSAKA",  "MUCHINGA", "NORTH", "NORTH-WESTERN", "SOUTHERN", "WESTERN")
