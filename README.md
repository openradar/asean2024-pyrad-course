<img src="https://www.repapress.ch/media/solwin/ultimateportfolio/portfolio/image/r/e/repapress-absturzsicherung-wetterstation-owarna_00.png" alt="thumbnail" width="300"/>

# WMO/ASEAN radar workshop - Pyrad course

[![Binder](http://binder.projectpythia.org/badge_logo.svg)](http://binder.projectpythia.org/v2/gh/openradar/asean2024-pyrad-course/main)


## Motivation

This content will be used for the Pyrad short Course held at the WMO/ASEAN Weather Radar Workshop 2024.

## Authors

Jordi Figueras I Ventura, Daniel Wolfensberger

## Webpage

http://openradarscience.org/asean2024-pyrad-course/


## Running the Notebooks

You can either run the notebook using [Binder](https://mybinder.org/) or on your local machine.

### Running on Binder

The simplest way to interact with a Jupyter Notebook is through
[Binder](https://mybinder.org/), which enables the execution of a
[Jupyter Book](https://jupyterbook.org) in the cloud. The details of how this works are not
important for now. All you need to know is how to launch a Pythia
Cookbooks chapter via Binder. Simply navigate your mouse to
the top right corner of the book chapter you are viewing and click
on the rocket ship icon, (see figure below), and be sure to select
“launch Binder”. After a moment you should be presented with a
notebook that you can interact with. I.e. you’ll be able to execute
and even change the example programs. You’ll see that the code cells
have no output at first, until you execute them by pressing
{kbd}`Shift`\+{kbd}`Enter`. Complete details on how to interact with
a live Jupyter notebook are described in [Getting Started with
Jupyter](https://foundations.projectpythia.org/foundations/getting-started-jupyter.html).

### Running on Your Own Machine

In order to be able to run the material you have to have a working installation of
[conda](https://docs.conda.io/projects/conda/en/stable/user-guide/install/index.html) or
its fully open-source alternative [Miniforge](https://github.com/conda-forge/miniforge).

If you are interested in running this material locally on your computer, you will need to follow this workflow:

1. Clone the `https://github.com/openradar/asean2024-pyrad-course` repository:

   ```bash
    git clone https://github.com/openradar/asean2024-pyrad-course.git
   ```

1. Move into the `asean2024-pyrad-course` directory
   ```bash
   cd asean2024-pyrad-course
   ```
1. Create and activate your conda environment from the `environment.yml` file
   ```bash
   conda env create -f environment.yml
   conda activate asean2024-pyrad-course
   ```
1. The [pydda](https://github.com/openradar/PyDDA) package installs [arm_pyart](https://github.com/ARM-DOE/pyart), but pyrad works better (more functionalities) with the [MeteoSwiss fork of pyart](https://github.com/MeteoSwiss/pyart), and this version gets installed when pyrad is installed. To solve this conflict, the best solution is to uninstall both pyart versions and reinstall the MeteoSwiss one.
   ```
   conda uninstall arm_pyart pyart_mch
   conda install pyart_mch
   ```
1. Finally define some environment variables that are required for some workflows
   ```
   CWD="$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")"
   export PYART_CONFIG=$CWD/pyrad_config/mf_config.py
   export METRANETLIB_PATH=$CWD/lib/
   ```
