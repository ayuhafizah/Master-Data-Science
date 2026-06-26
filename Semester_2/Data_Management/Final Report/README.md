# Data Management — Final Report

This folder contains the final report and supporting materials for the Data Management course.

## Overview

Included here are the final written report and the Jupyter notebooks, figures, and any small datasets required to reproduce the analyses.

## Repository structure

- report.pdf or report.md — the final written report
- notebooks/ — Jupyter Notebooks used for analysis and reproducibility
- data/ — small datasets included (large datasets may be linked instead)
- figures/ — plots and images used in the report

## How to run the notebooks

1. Clone the repository:
   git clone https://github.com/ayuhafizah/Master-Data-Science.git
2. Change into this folder (from repo root):
   cd "Semester_2/Data_Management/Final Report"
3. Create and activate a Python environment (recommended):
   python -m venv venv
   source venv/bin/activate  # macOS/Linux
   venv\Scripts\activate     # Windows
4. Install dependencies if a requirements file exists:
   pip install -r requirements.txt
5. Start Jupyter Lab or Notebook and open the notebooks in this folder:
   jupyter lab
   or
   jupyter notebook

Notes:
- Notebooks may expect data files in the `data/` subfolder or external links. Check the top cells of each notebook for instructions on data paths and any preprocessing steps.
- If large datasets are referenced but not included, look for a `DATA_LINKS.md` or check the notebook comments for download instructions.

## Reproducibility

- Check the first cells of each notebook for environment and package requirements.
- Pin package versions in `requirements.txt` if reproducibility is important.

## Contributing

Corrections and improvements are welcome. Please open an issue or submit a pull request.

## License

Specify the preferred license here (e.g., MIT). If you want, I can add a LICENSE file to the repository.

## Contact

- GitHub: https://github.com/ayuhafizah
