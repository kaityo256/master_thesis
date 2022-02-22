set term pdf
set out "error.pdf"
set xlabel "Parameter"
set ylabel "Estimated Value"
p "error.dat" u 1:2:3 with errorbars pt 6 ps 0.6 t "Data"
