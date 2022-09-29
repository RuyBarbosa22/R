set.seed(20)
notas <- data.frame(Matrícula = sample(x = 011475:012990, size = 30, replace = FALSE), 
                        ac1 = sample(x = 1:10, size = 30, replace = TRUE), 
                        ac2 = sample(x = 1:10, size = 30, replace = TRUE), 
                        prova_final= sample(x = 1:10, size = 30, replace = TRUE))

notas$MetricaMedia <- (notas$ac1 * 0.4) + (notas$ac2 * 0.4) + (notas$prova_final * 0.2)

hist(notas$MetricaMedia, main="Histograma média", xlab="Média", ylab="Alunos", col="orange")

# Script Eduardo (Usanod como métricas os alunos aprovados)

notas$notaFinal <- notas$ac1*0.4 + notas$ac2*0.4 + notas$prova_final*0.2

aprovados <- subset(notas, notas$notaFinal >=7.0)

barplot(aprovados$notaFinal,
        names.arg = aprovados$Matrícula,
        main="Alunos aprovados", xlab="no. matricula",ylab="Nota final",
        axis(1, at=10:10, labels=aprovados$Matricula))