#################################################
#               Explorando maices               #
#################################################

# 1. Carga en una **df** llamada **fullmat** el archivo 
## Prac_Uni6/maices/meta/maizteocintle_SNP50k_meta_extended.txt
fullmat <- read.delim(file = "../meta/maizteocintle_SNP50k_meta_extended.txt")

# 2. ??Qu?? tipo de objeto creamos al cargar la base?
class(fullmat)

# 3. ??C??mo se ven las primeras 6 lineas del archivo?
head(fullmat)

# 4. ??Cuantas muestras hay?
nrow(fullmat)

# 5. ??De cu??ntos estados se tienen muestras?
levels(fullmat$Estado)

# 6. ??Cu??ntas muestras fueron colectadas antes de 1980?
sum(fullmat$A.o._de_colecta < 1980, na.rm = TRUE)

# 7. ??Cu??ntas muestras hay de cada raza?
table(fullmat$Raza)

# 8. En promedio ??a que altitud fueron colectadas las muestras?
mean(fullmat$Altitud)

# 9. ??a qu?? altitud m??xima y m??nima fueron colectadas?
min(fullmat$Altitud)
max(fullmat$Altitud)

# 10. Crea una **df** de datos s??lo con las muestras de la raza Olotillo
Olotillodf <- fullmat[fullmat$Raza == "Olotillo", ]

# 11. Crea una **df** de datos s??lo con las muestras de raza Reventador, Jala y Ancho.
XRazas <- fullmat [fullmat$Raza %in% c("Reventador", "Jala", "Ancho"), ]

# 12. Escribe la matrtiz anterior a un archivo llamado ```submat.csv``` en `/meta`.
write.csv(XRazas, file ="../meta/submat.csv")
