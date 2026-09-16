#!/bin/bash

query="SELECT
    CovidStats.countriesAndTerritories,
    DateInfo.dateRep,
    SUM(CovidStats.deaths) OVER (PARTITION BY CovidStats.countriesAndTerritories ORDER BY DateInfo.year, DateInfo.month, DateInfo.day) AS CumulativeDeaths
  FROM CovidStats
  JOIN DateInfo ON CovidStats.dateRep = DateInfo.dateRep;"

temp_data_file=$(mktemp)
sqlite3 coronavirus.db "$query" > "$temp_data_file"

gnuplot_script=$(cat <<EOF
set datafile separator "|"
set terminal pngcairo enhanced
set output "graph.png"
set title "Cumulative Number of Deaths by Country"
set xlabel "Date"
set ylabel "Cumulative Deaths"
set xdata time
set timefmt "%d/%m/%Y"
set format x "%d/%m/%Y"
set key autotitle columnhead
set key outside top center horizontal

plot "$temp_data_file" using 2:3 with lines lw 2
EOF
)

temp_gnuplot_script=$(mktemp)
echo "$gnuplot_script" > "$temp_gnuplot_script"

gnuplot "$temp_gnuplot_script"