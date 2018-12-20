; A simple plotting software that creates a periodic gradient to highlight correlations in R-space data
; This could be used to highlight periodic trends in any periodic data set.

pro periodplot, x_in, data_in, color_frequency ;, x_range=0, y_range=0
	; color constants for the plotting
	colorone   = [150.0, 186.0, 144.0]^2
	colortwo   = [224.0, 157.0, 123.0]^2
	colorthree = [200.0, 124.0, 169.0]^2
	colorfour  = [106.0, 125.0, 179.0]^2
	; fix inputs
	;plot, x_in, data_in
	for index=0,(n_elements(x_in)-2) do begin
		colorx = (((x_in[index]+x_in[index+1])/2.0) mod color_frequency) / color_frequency
		mycolor = [0,0,0]
		if (colorx gt 0.75) then begin
			mycolor = 4*((colorx-0.75)*colorone   + (1.00-colorx)*colorfour )
		endif else if (colorx gt 0.50) then begin
			mycolor = 4*((colorx-0.50)*colorfour  + (0.75-colorx)*colorthree)
		endif else if (colorx gt 0.25) then begin
			mycolor = 4*((colorx-0.25)*colorthree + (0.50-colorx)*colortwo  )
		endif else begin
			mycolor = 4*((colorx-0.00)*colortwo   + (0.25-colorx)*colorone  )
		endelse
		oplot, x_in[index:index+1], data_in[index:index+1], color=long(sqrt(mycolor[0]))+256.0*long(sqrt(mycolor[1]))+256.0*256.0*long(sqrt(mycolor[2]))
	endfor
end
