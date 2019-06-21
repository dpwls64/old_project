library(dplyr)
library(ggplot2)
library(readxl)

#전국 노인 변화 인구수

raw <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2008인구.csv")
data <- raw
View(raw)
head(raw)

data <- rename(data, area = 행정구역, up65 = X2008년12월_계_65.69세, up70 = X2008년12월_계_70.74세,
                              up75 = X2008년12월_계_75.79세, up80 = X2008년12월_계_80.84세, up85 = X2008년12월_계_85.89세,
                              up90 = X2008년12월_계_90.94세, up95 = X2008년12월_계_95.99세, up100 = X2008년12월_계_100세.이상)  
tot_p_2008 <- select (data, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2008 <- filter(tot_p_2008, area == "전국  (0000000000)")
tot_p_2008 <- mutate(tot_p_2008, year = "2008")
#tot_p_2008 <- mutate(tot_p_2008 , colSums(tot_p_2008[,-1]))
#a <- colSums(tot_p_2008)
#a
View(tot_p_2008)
#----------------------------------------------------------------------------------------------------------------------------

raw1 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2009인구.csv")
data1 <- raw1
View(data1)

data1 <- rename(data1, area = 행정구역, up65 = X2009년12월_계_65.69세, up70 = X2009년12월_계_70.74세,
                up75 = X2009년12월_계_75.79세, up80 = X2009년12월_계_80.84세, up85 = X2009년12월_계_85.89세,
                up90 = X2009년12월_계_90.94세, up95 = X2009년12월_계_95.99세, up100 = X2009년12월_계_100세.이상)  
tot_p_2009 <- select (data1, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2009 <- filter(tot_p_2009, area == "전국  (0000000000)")
tot_p_2009 <- mutate(tot_p_2009, year = "2009")

View(tot_p_2009)


#----------------------------------------------------------------------------------------------------------------------------
raw2 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2010인구.csv")
data2 <- raw2

data2 <- rename(data2, area = 행정구역, up65 = X2010년12월_계_65.69세, up70 = X2010년12월_계_70.74세,
                up75 = X2010년12월_계_75.79세, up80 = X2010년12월_계_80.84세, up85 = X2010년12월_계_85.89세,
                up90 = X2010년12월_계_90.94세, up95 = X2010년12월_계_95.99세, up100 = X2010년12월_계_100세.이상)
tot_p_2010 <- select (data2, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2010 <- filter(tot_p_2010, area == "전국  (0000000000)")
tot_p_2010 <- mutate(tot_p_2010, year = "2010")

View(tot_p_2010)



#--------------------------------------------------------------------------------------------------------------------------

raw3 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2011인구.csv")
data3 <- raw3

data3 <- rename(data3, area = 행정구역, up65 = X2011년12월_계_65.69세, up70 = X2011년12월_계_70.74세,
                up75 = X2011년12월_계_75.79세, up80 = X2011년12월_계_80.84세, up85 = X2011년12월_계_85.89세,
                up90 = X2011년12월_계_90.94세, up95 = X2011년12월_계_95.99세, up100 = X2011년12월_계_100세.이상)
tot_p_2011 <- select (data3, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2011 <- filter(tot_p_2011, area == "전국  (0000000000)")
tot_p_2011 <- mutate(tot_p_2011, year = "2011")

View(tot_p_2011)

#-------------------------------------------------------------------------------------------------------------------------

raw4 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2012인구.csv")
data4 <- raw4
View(data4)

data4 <- rename(data4, area = 행정구역, up65 = X2012년12월_계_65.69세, up70 = X2012년12월_계_70.74세,
                up75 = X2012년12월_계_75.79세, up80 = X2012년12월_계_80.84세, up85 = X2012년12월_계_85.89세,
                up90 = X2012년12월_계_90.94세, up95 = X2012년12월_계_95.99세, up100 = X2012년12월_계_100세.이상)
tot_p_2012 <- select (data4, area, up65,up70,up75, up80, up85, up90,up95,up100 )

tot_p_2012 <- filter(tot_p_2012, area == "전국  (0000000000)")

tot_p_2012 <- mutate(tot_p_2012, year = "2012")
#tot_p_2012 <- mutate(tot_p_2012, sum = )

View(tot_p_2012)

#--------------------------------------------------------------------------------------------------------------------------


raw5 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2013인구.csv")
data5 <- raw5
View(data5)

data5 <- rename(data5, area = 행정구역, up65 = X2013년12월_계_65.69세, up70 = X2013년12월_계_70.74세,
                up75 = X2013년12월_계_75.79세, up80 = X2013년12월_계_80.84세, up85 = X2013년12월_계_85.89세,
                up90 = X2013년12월_계_90.94세, up95 = X2013년12월_계_95.99세, up100 = X2013년12월_계_100세.이상)

tot_p_2013 <- select (data5, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2013 <- filter(tot_p_2013, area == "전국  (0000000000)")
tot_p_2013 <- mutate(tot_p_2013, year = "2013")

View(tot_p_2013)

#--------------------------------------------------------------------------------------------------------------------------

raw6 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2014인구.csv")
data6 <- raw6
View(data6)

data6 <- rename(data6, area = 행정구역, up65 = X2014년12월_계_65.69세, up70 = X2014년12월_계_70.74세,
                up75 = X2014년12월_계_75.79세, up80 = X2014년12월_계_80.84세, up85 = X2014년12월_계_85.89세,
                up90 = X2014년12월_계_90.94세, up95 = X2014년12월_계_95.99세, up100 = X2014년12월_계_100세.이상)

tot_p_2014 <- select (data6, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2014 <- filter(tot_p_2014, area == "전국  (0000000000)")
tot_p_2014 <- mutate(tot_p_2014, year = "2014")

View(tot_p_2014)

#-------------------------------------------------------------------------------------------------------------------------

raw7 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2015인구.csv")
data7 <- raw7
View(data7)

data7 <- rename(data7, area = 행정구역, up65 = X2015년12월_계_65.69세, up70 = X2015년12월_계_70.74세,
                up75 = X2015년12월_계_75.79세, up80 = X2015년12월_계_80.84세, up85 = X2015년12월_계_85.89세,
                up90 = X2015년12월_계_90.94세, up95 = X2015년12월_계_95.99세, up100 = X2015년12월_계_100세.이상)

tot_p_2015 <- select (data7, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2015 <- filter(tot_p_2015, area == "전국  (0000000000)")
tot_p_2015 <- mutate(tot_p_2015, year = "2015")

View(tot_p_2015)

#--------------------------------------------------------------------------------------------------------------------------

raw8 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2016인구.csv")
data8 <- raw8
View(data8)

data8 <- rename(data8, area = 행정구역, up65 = X2016년12월_계_65.69세, up70 = X2016년12월_계_70.74세,
                up75 = X2016년12월_계_75.79세, up80 = X2016년12월_계_80.84세, up85 = X2016년12월_계_85.89세,
                up90 = X2016년12월_계_90.94세, up95 = X2016년12월_계_95.99세, up100 = X2016년12월_계_100세.이상)

tot_p_2016 <- select (data8, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2016 <- filter(tot_p_2016, area == "전국  (0000000000)")
tot_p_2016 <- mutate(tot_p_2016, year = "2016")

View(tot_p_2016)

#------------------------------------------------------------------------------------------------------------------------

raw9 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2017인구.csv")
data9 <- raw9
View(data9)

data9 <- rename(data9, area = 행정구역, up65 = X2017년12월_계_65.69세, up70 = X2017년12월_계_70.74세,
                up75 = X2017년12월_계_75.79세, up80 = X2017년12월_계_80.84세, up85 = X2017년12월_계_85.89세,
                up90 = X2017년12월_계_90.94세, up95 = X2017년12월_계_95.99세, up100 = X2017년12월_계_100세.이상)

tot_p_2017 <- select (data9, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2017 <- filter(tot_p_2017, area == "전국  (0000000000)")
tot_p_2017 <- mutate(tot_p_2017, year = "2017")

View(tot_p_2017)

#-----------------------------------------------------------------------------------------------------------------------

raw10 <- read.csv("C:/R_workspace/R/노인복지시설 프로젝트/2018인구.csv")
data10 <- raw10
View(data10)

data10 <- rename(data10, area = 행정구역, up65 = X2018년12월_계_65.69세, up70 = X2018년12월_계_70.74세,
                 up75 = X2018년12월_계_75.79세, up80 = X2018년12월_계_80.84세, up85 = X2018년12월_계_85.89세,
                 up90 = X2018년12월_계_90.94세, up95 = X2018년12월_계_95.99세, up100 = X2018년12월_계_100세.이상)

tot_p_2018 <- select (data10, area, up65,up70,up75, up80, up85, up90,up95,up100 )
tot_p_2018 <- filter(tot_p_2018, area == "전국  (0000000000)")
tot_p_2018 <- mutate(tot_p_2018, year = "2018")

View(tot_p_2018)

#----------------------------------------------------------------------------------------------------------------------

table(is.na(tot_p_2008))
table(is.na(tot_p_2009))
table(is.na(tot_p_2010))
table(is.na(tot_p_2011))
table(is.na(tot_p_2012))
table(is.na(tot_p_2013))
table(is.na(tot_p_2014))
table(is.na(tot_p_2015))
table(is.na(tot_p_2016))
table(is.na(tot_p_2017))
table(is.na(tot_p_2018))

#-------------------------------------------------------------------------------------------------------------------------

tot_p <- bind_rows(tot_p_2008, tot_p_2009, tot_p_2010, tot_p_2011, tot_p_2012, tot_p_2013, tot_p_2014, tot_p_2015,
                   tot_p_2016, tot_p_2017, tot_p_2018)

View(tot_p)
a <- tot_p $ up65 + tot_p $ up70 + tot_p $ up75 + tot_p $ up80 + tot_p $ up85 + tot_p $ up90 +
  tot_p $ up95 + tot_p $ up100

tot_p <- mutate(tot_p, tot_sum = a %/% 10000)
View(tot_p)


tot_old <-  tot_p %>%
  group_by(year) %>%
 summarise(tot_per_sum = tot_sum) 

View(tot_old)


ggplot(data = tot_old, aes(x = year, y = tot_per_sum, group = 1)) + geom_line() +
  xlab("년도") + ylab("노인인구수 : 10000(만)") +ggtitle("[전국 노인 인구 수 변화]") +geom_point()
#----------------------------------------------------------------------------------------

#대전 노인 인구수 변화?--------------------------------------------------------------------
  
dae_p_2008 <- select (data, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2008 <- filter(dae_p_2008, area == "대전광역시  (3000000000)")
dae_p_2008 <- mutate(dae_p_2008, year = "2008")

View(dae_p_2008)
#-------------------------------------------------------------------------------------------
dae_p_2009 <- select (data1, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2009 <- filter(dae_p_2009, area == "대전광역시  (3000000000)")
dae_p_2009 <- mutate(dae_p_2009, year = "2009")
head(data1)
View(dae_p_2009)

#-----------------------------------------------------------------------------------------

dae_p_2010 <- select (data2, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2010 <- filter(dae_p_2010, area == "대전광역시  (3000000000)")
dae_p_2010 <- mutate(dae_p_2010, year = "2010")

View(dae_p_2010)
#---------------------------------------------------------------------------------------

dae_p_2011 <- select (data3, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2011 <- filter(dae_p_2011, area == "대전광역시  (3000000000)")
dae_p_2011 <- mutate(dae_p_2011, year = "2011")

View(dae_p_2011)
#---------------------------------------------------------------------------------------

dae_p_2012 <- select (data4, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2012 <- filter(dae_p_2012, area == "대전광역시  (3000000000)")
dae_p_2012 <- mutate(dae_p_2012, year = "2012")

View(dae_p_2012)
#--------------------------------------------------------------------------------------

dae_p_2013 <- select (data5, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2013 <- filter(dae_p_2013, area == "대전광역시  (3000000000)")
dae_p_2013 <- mutate(dae_p_2013, year = "2013")

View(dae_p_2013)
#--------------------------------------------------------------------------------------

dae_p_2014 <- select (data6, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2014 <- filter(dae_p_2014, area == "대전  (3000000000)")
dae_p_2014 <- mutate(dae_p_2014, year = "2014")

View(dae_p_2014)

#---------------------------------------------------------------------------------------

dae_p_2015 <- select (data7, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2015 <- filter(dae_p_2015, area == "대전광역시  (3000000000)")
dae_p_2015 <- mutate(dae_p_2015, year = "2015")

View(dae_p_2015)

#-------------------------------------------------------------------------------------

dae_p_2016 <- select (data8, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2016 <- filter(dae_p_2016, area == "대전광역시  (3000000000)")
dae_p_2016 <- mutate(dae_p_2016, year = "2016")

View(dae_p_2016)
#------------------------------------------------------------------------------------

dae_p_2017 <- select (data9, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2017 <- filter(dae_p_2017, area == "대전광역시  (3000000000)")
dae_p_2017 <- mutate(dae_p_2017, year = "2017")

View(dae_p_2017)
#------------------------------------------------------------------------------------
dae_p_2018 <- select (data10, area, up65,up70,up75, up80, up85, up90,up95,up100 )
dae_p_2018 <- filter(dae_p_2018, area == "대전광역시  (3000000000)")
dae_p_2018 <- mutate(dae_p_2018, year = "2018")

View(dae_p_2018)
#-----------------------------------------------------------------------------------

table(is.na(dae_p_2008))
table(is.na(dae_p_2009))
table(is.na(dae_p_2010))
table(is.na(dae_p_2011))
table(is.na(dae_p_2012))
table(is.na(dae_p_2013))
table(is.na(dae_p_2014))
table(is.na(dae_p_2015))
table(is.na(dae_p_2016))
table(is.na(dae_p_2017))
table(is.na(dae_p_2018))
#---------------------------------------------------------------------------------


dae_p <- bind_rows(dae_p_2008,dae_p_2009,dae_p_2010,dae_p_2011,dae_p_2012,dae_p_2013,dae_p_2014,
                   dae_p_2015,dae_p_2016,dae_p_2017,dae_p_2018)

View(dae_p)

dae_sum_value <- dae_p $ up65 + dae_p $ up70 + dae_p $ up75 + dae_p $ up80 + dae_p $ up85 + dae_p $ up90 +
  dae_p $ up95 + dae_p $ up100
dae_sum_value

dae_p <- mutate(dae_p, dae_sum = dae_sum_value %/% 10000)
View(dae_p)


dae_old <-  dae_p %>%
  group_by(year) %>%
  summarise(dae_per_sum = dae_sum) 

View(dae_old)


ggplot(data = dae_old, aes(x = year, y = dae_per_sum, group = 1)) + geom_line() +
  ylab("노인인구수 : 10000(만)") + xlab("년도") +ggtitle("[대전 노인 인구 수 변화]") +geom_point()
#----------------------------------------------------------------------------------------
#고령화 텍스트마이닝---------------------------------------------------------------------------

install.packages("rJava")
install.packages("memories")
install.packages("KoNLP")

library(KoNLP)
library(dplyr)

useNIADic()


system.file(package = 'NIADic')

install.packages('C:/R_workspace/R/노인복지시설 프로젝트/NIADic_0.0.1.tar.gz', repos = NULL, type="source")
txt <- readLines("C:/R_workspace/R/노인복지시설 프로젝트/연구논문.txt")

head(txt)


install.packages("stringr")
library(stringr)

txt <- str_replace_all(txt, "\\W", " ")

nouns <- extractNoun(txt)
wordcount <- table(unlist(nouns))
df_word <- as.data.frame(wordcount, stringsAsFactors = FALSE)
df_word <- rename(df_word,
                  word = Var1, freq = Freq)
df_word <- filter(df_word, nchar(word) >= 2)

top20 <- df_word %>%
  arrange(desc(freq)) %>%
  head(20)

top20

install.packages("wordcloud")

library(wordcloud)
library(RColorBrewer)

pal <- brewer.pal(8 , "Dark2") [5:9]

set.seed(1234)

wordcloud(words = df_word $ word,
          freq = df_word $ freq,
          min.freq = 2,
          max.words = 200,
          random.order = FALSE,
          rot.per = 1,
          scale = c(4, 0.3),
          colors = pal)
#------------------------------------------------------------------------------
#대전시 노인복지 시설 수 변화


