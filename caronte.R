caronte <- function(x, algn= TRUE, w_algn_tps = FALSE) {   ## x must be the name of the tps file without the .tps
      library(geomorph)
      tpsfile_name <- paste(x, ".tps", sep="")
      tpsfile <- readland.tps(tpsfile_name, specID = "ID")
      if(algn == TRUE){
            alignment <- gpagen(tpsfile)
            align_tpsfile<-alignment$coords
            if(w_algn_tps == TRUE) {
                  writeland.tps(alignment$coords, "aligned_data.tps")
            } else if (w_algn_tps == FALSE) {
              warning( "You are not writing the alignment in TPS format (.tps), if you want to, use w_algn_tps = TRUE" )  
            }  
      } else if(algn == FALSE) {
            if(w_algn_tps == TRUE) {
              warning( "Nothing to write in TPS format (.tps), your data is already aligned" )      
            } else if (w_algn_tps == FALSE) {
              warning(" By default w_algn_tps = FALSE")    
            }  
            align_tpsfile <- tpsfile    
      }
      a <- ftable(align_tpsfile)
      a <- as.matrix(a)
      species <- colnames(a)
      species_coor <- NULL
      for (i in species) {
            coor <- as.character(a[, i])
            species_coor <- rbind(species_coor, coor) 
      }     
      rownames(species_coor) <- species
      number_of_coor <- (length(species_coor[1,])/2)
      cor_x <- seq(1, by = 2, len = number_of_coor)
      cor_y <- seq(2, by = 2, len = number_of_coor)
      num_spe <- length(species)
      complete_data <- NULL
      for (i in 1:num_spe) {
            row_sp<-as.character(species_coor[i,])
            sal <- NULL
            for (i in 1:number_of_coor) {
                  cor <- paste(row_sp[(cor_x[i])], "," ,row_sp[(cor_y[i])], sep="")
                  sal <- paste(sal, cor)
            }
            complete_data <- rbind(complete_data, sal)
      }
      rownames(complete_data) <- species
      xano <- paste("1", length(species))
      fileConn<-file("data_to_tnt.tnt")
      writeLines(c("", "xread", xano, "& [landmark 2d]"), fileConn)
      close(fileConn)
      for (i in 1:num_spe) {
        line <- complete_data[i,]
        line <- paste(species[i], line)
        write(line,file="data_to_tnt.tnt",append=TRUE)  
      }
      final_line <- ";"
      write(final_line,file="data_to_tnt.tnt",append=TRUE) 
      return(complete_data)
}      
