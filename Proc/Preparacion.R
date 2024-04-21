install.packages("haven")
library(haven)
library(dplyr)

2015
ruta_archivo <- "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+Medio+2015/Simce 2° Medio 2015/Archivos DTA (Stata)/simce2m2015_rbd_publica_final.dta"
base_2015 <- read_dta("C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+Medio+2015/Simce 2° Medio 2015/Archivos DTA (Stata)/simce2m2015_rbd_publica_final.dta")
rm_2015 <- subset(base_2015, `nom_reg_rbd` == "METROPOLITANA DE SANTIAGO")
Simce_2015 <- rm_2015[, c("nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd")]

promedio_lectura_2015 <- mean(Simce_2015$prom_lect2m_rbd, na.rm = TRUE)
promedio_matematica_2015 <- mean(Simce_2015$prom_mate2m_rbd, na.rm = TRUE)

promedios <- cbind(promedio_matematica_2015, promedio_lectura_2015)

#cambio de nombre
Simce_2015 <- Simce_2015 %>% rename( "comuna"=nom_com_rbd, 
                                  "promedio_lenguaje"=prom_lect2m_rbd,
                                  "promedio_matematica"=prom_mate2m_rbd)


save(Simce_2015,file = "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce_2015.RData")

2016      
ruta_archivo <- "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+medio+2016/Simce 2° Medio 2016/Archivos DTA (Stata)/simce2m2016_rbd_publica_final.dta"   
base_2016 <- read_dta("C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+medio+2016/Simce 2° Medio 2016/Archivos DTA (Stata)/simce2m2016_rbd_publica_final.dta")
rm_2016 <- subset(base_2016, `nom_reg_rbd` == "REGION METROPOLITANA DE SANTIAGO")
Simce_2016 <- rm_2016[, c("nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd")]
promedio_matematica_2016 <- mean(Simce_2016$prom_mate2m_rbd, na.rm = TRUE)
promedio_lectura_2016 <- mean(Simce_2016$prom_lect2m_rbd, na.rm = TRUE)


#cambio de nombre
Simce_2016 <- Simce_2016 %>% rename("comuna"=nom_com_rbd, "promedio_lenguaje"=prom_lect2m_rbd, "promedio_matematica"=prom_mate2m_rbd)

save(Simce_2016,file = "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce_2016.RData")

2017
ruta_archivo <- "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+medio+2017/Simce 2° Medio 2017/Archivos DTA (Stata)/simce2m2017_rbd_publica_final.dta"
base_2017 <- read_dta("C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+medio+2017/Simce 2° Medio 2017/Archivos DTA (Stata)/simce2m2017_rbd_publica_final.dta")
rm_2017 <- subset(base_2017, `nom_reg_rbd` == "REGION METROPOLITANA DE SANTIAGO")
Simce_2017 <- rm_2017[, c("nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd")]
promedio_matematica_2017 <- mean(Simce_2017$prom_mate2m_rbd, na.rm = TRUE)
promedio_lectura_2017 <- mean(Simce_201$prom_lect2m_rbd, na.rm = TRUE)


#cambio de nombre
Simce_2017 <- Simce_2017%>% rename( "comuna"=nom_com_rbd, 
 "promedio_lenguaje"=prom_lect2m_rbd,
  "promedio_matematica"=prom_mate2m_rbd)

save(Simce_2017,file = "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce_2017.RData")


2018
ruta_archivo <- "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+medio+2018/Simce2m2018_publicas_web/Archivos DTA (Stata)/simce2m2018_rbd_publica_final.dta"
base_2018 <- read_dta("C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+medio+2018/Simce2m2018_publicas_web/Archivos DTA (Stata)/simce2m2018_rbd_publica_final.dta")
rm_2018 <- subset(base_2018, `nom_reg_rbd` == "Región Metropolitana de Sant")
Simce_2018 <- rm_2018[, c("nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd")]
promedio_lectura_2018 <- mean(Simce_2018$prom_lect2m_rbd, na.rm = TRUE)
promedio_matematica_2018 <- mean(Simce_2018$prom_mate2m_rbd, na.rm = TRUE)


#cambio de nombre
Simce_2018 <- Simce_2018 %>% rename("comuna"=nom_com_rbd, 
 "promedio_lenguaje"=prom_lect2m_rbd,
"promedio_matematica"=prom_mate2m_rbd)

save(Simce_2018,file = "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce_2018.RData")

2022
ruta_archivo <- "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+medio+2022/Simce 2° medio 2022/Archivos DTA (Stata)/Simce2m2022_rbd_final.dta"
base_2022 <- read_dta("C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce+2°+medio+2022/Simce 2° medio 2022/Archivos DTA (Stata)/Simce2m2022_rbd_final.dta")
rm_2022 <- subset(base_2022, `nom_reg_rbd` == "METROPOLITANA DE SANTIAGO")
Simce_2022 <- rm_2022[, c("nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd")]
promedio_lectura_2022 <- mean(Simce_2022$prom_lect2m_rbd, na.rm = TRUE)
promedio_matematica_2022 <- mean(Simce_2022$prom_mate2m_rbd, na.rm = TRUE)

#cambio de nombre
Simce_2022 <- Simce_2022 %>% rename(
"comuna"=nom_com_rbd, 
"promedio_lenguaje"=prom_lect2m_rbd,
 "promedio_matematica"=prom_mate2m_rbd)

save(Simce_2022,file = "C:/Users/apazm/OneDrive/Escritorio/RSTUDIO/IPO/Input/Simce_2022.RData")



