
venn.plot <- venn.diagram(
	x = list(
		"Num A" = paste("Num", 1:100),
		"Num B" = c(paste("Num", 61:70), paste("Num", 71:100)),
		"Num C" = c(paste("Num", 41:60), paste("Num", 61:70))),
	euler.d = TRUE,
	filename = tempfile(
	    pattern = 'Euler_3set_simple',
	    fileext = '.tiff'
	    ),
	cat.pos = c(-20, 0, 20),
	cat.dist = c(0.05, 0.05, 0.02),
	cex = 2.5,
	cat.cex = 2.5,
	reverse = TRUE
	);