# Data Management Portfolio (COMP1204)

## Overview
This repository contains two data management projects demonstrating practical software engineering skills, with a strong focus on relational database architecture and advanced SQL, alongside Unix command-line data processing and Git version control.

## Repository Structure

### 1. `/Hurricane-Data-Processing` (Coursework 1)
A command-line toolset designed to parse, clean, and visualize geographical tracking data for 2020 Atlantic hurricanes.
* **Data Extraction:** Developed a Bash script (`create_csv.sh`) utilizing `grep`, `sed`, and `cut` to extract nested `CDATA` attributes from raw `.kml` files and convert them into clean `.csv` formats.
* **Version Control:** Demonstrated Git branch management and merge conflict resolution by resolving conflicting code implementations in a Python plotting script (`python-plot-script.py`) using `vim`.
* **Visualization:** Utilized `gnuplot` to generate world map plots of hurricane trajectories.

### 2. `/COVID19-SQL-Database` (Coursework 2)
A complete relational database project that transforms flat COVID-19 statistical data into a normalized, queryable SQLite database.
* **Database Modeling & Normalization:** Designed a relational schema normalized to Boyce-Codd Normal Form (BCNF) to eliminate data redundancy, splitting flat data into `DateInfo`, `Country`, `CountryCodes`, and `CovidStats` tables.
* **Data Ingestion:** Automated data insertion from raw CSV files into SQLite using `INSERT OR IGNORE` to safely handle duplicates.
* **Advanced Querying:** Wrote complex SQL queries utilizing `JOIN` operations, aggregate functions, and Window functions (e.g., `SUM() OVER (ORDER BY...)`) to calculate rolling averages and cumulative running totals.
* **Automated Reporting:** Built a Bash script (`plot.sh`) that directly executes SQL queries, stores the output in temporary files, and dynamically generates line graphs using `gnuplot`.

## Technologies Used
* **Languages:** Bash, SQL, Python, LaTeX
* **Tools:** Git, SQLite3, Gnuplot, Vim

**Note:** The raw datasets (e.g., KML files, COVID-19 CSV) and the map generation helper script (create_map_plot.sh) were provided by the university as starting materials. All parsing, SQL, and automation scripts are my original work.
