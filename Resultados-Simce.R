install.packages("haven")
library(haven)

2015
ruta_archivo <- "C:/Users/apazm/Downloads/Simce+2°+Medio+2015/Simce 2° Medio 2015/Archivos DTA (Stata)/simce2m2015_rbd_publica_final.dta"
base <- read_dta("C:/Users/apazm/Downloads/Simce+2°+Medio+2015/Simce 2° Medio 2015/Archivos DTA (Stata)/simce2m2015_rbd_publica_final.dta")
region_metropolitana <- subset(base, `nom_reg_rbd` == "METROPOLITANA DE SANTIAGO")
region_metropolitana_2015 <- region_metropolitana[, c("nom_rbd", "nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd", "prom_soc2m_rbd")]
promedio_lectura_2015 <- mean(region_metropolitana_2015$prom_lect2m_rbd, na.rm = TRUE)
promedio_matematica_2015 <- mean(region_metropolitana_2015$prom_mate2m_rbd, na.rm = TRUE)

2016      
ruta_archivo <- "C:/Users/apazm/Downloads/Simce+2°+medio+2016/Simce 2° Medio 2016/Archivos DTA (Stata)/simce2m2016_rbd_publica_final.dta"   
base_2016 <- read_dta("C:/Users/apazm/Downloads/Simce+2°+medio+2016/Simce 2° Medio 2016/Archivos DTA (Stata)/simce2m2016_rbd_publica_final.dta")
region_metropolitana_2016 <- subset(base_2016, `nom_reg_rbd` == "REGION METROPOLITANA DE SANTIAGO")
region_metropolitana_2016_filtrada <- region_metropolitana_2016[, c("nom_rbd", "nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd")]
promedio_matematica_2016 <- mean(region_metropolitana_2016_filtrada$prom_mate2m_rbd, na.rm = TRUE)
promedio_lectura_2016 <- mean(region_metropolitana_2016_filtrada$prom_lect2m_rbd, na.rm = TRUE)

2017
ruta_archivo <- "C:/Users/apazm/Downloads/Simce+2°+medio+2017/Simce 2° Medio 2017/Archivos DTA (Stata)/simce2m2017_rbd_publica_final.dta"
base_2017 <- read_dta("C:/Users/apazm/Downloads/Simce+2°+medio+2017/Simce 2° Medio 2017/Archivos DTA (Stata)/simce2m2017_rbd_publica_final.dta")
region_metropolitana_2017 <- subset(base_2017, `nom_reg_rbd` == "REGION METROPOLITANA DE SANTIAGO")
region_metropolitana_2017_filtrada <- region_metropolitana_2017[, c("nom_rbd", "nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd")]
promedio_matematica_2017 <- mean(region_metropolitana_2017_filtrada$prom_mate2m_rbd, na.rm = TRUE)
promedio_lectura_2017 <- mean(region_metropolitana_2017_filtrada$prom_lect2m_rbd, na.rm = TRUE)

2018
ruta_archivo <- "C:/Users/apazm/Downloads/Simce+2°+medio+2018/Simce2m2018_publicas_web/Archivos DTA (Stata)/simce2m2018_rbd_publica_final.dta"
base_2018 <- read_dta("C:/Users/apazm/Downloads/Simce+2°+medio+2018/Simce2m2018_publicas_web/Archivos DTA (Stata)/simce2m2018_rbd_publica_final.dta")
region_metropolitana_2018_sinfiltro <- subset(base_2018, `nom_reg_rbd` == "Región Metropolitana de Sant")
region_metropolitana_2018_filtrada <- region_metropolitana_2018_sinfiltro[, c("nom_rbd", "nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd", "prom_nat2m_rbd")]
promedio_lectura_2018 <- mean(region_metropolitana_2018_filtrada$prom_lect2m_rbd, na.rm = TRUE)
promedio_matematica_2018 <- mean(region_metropolitana_2018_filtrada$prom_mate2m_rbd, na.rm = TRUE)

2022
ruta_archivo <- "C:/Users/apazm/Downloads/Simce+2°+medio+2022/Simce 2° medio 2022/Archivos DTA (Stata)/Simce2m2022_rbd_final.dta"
base_2022 <- read_dta("C:/Users/apazm/Downloads/Simce+2°+medio+2022/Simce 2° medio 2022/Archivos DTA (Stata)/Simce2m2022_rbd_final.dta")
region_metropolitana_2022 <- subset(base_2022, `nom_reg_rbd` == "METROPOLITANA DE SANTIAGO")
region_metropolitana_2022_filtrada <- region_metropolitana_2022[, c("nom_rbd", "nom_com_rbd", "prom_lect2m_rbd", "prom_mate2m_rbd")]
promedio_lectura_2022 <- mean(region_metropolitana_2022_filtrada$prom_lect2m_rbd, na.rm = TRUE)
promedio_matematica_2022 <- mean(region_metropolitana_2022_filtrada$prom_mate2m_rbd, na.rm = TRUE)
