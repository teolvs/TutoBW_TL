# Teaching materials for Brightway introduction

**author** : Teo Lavisse  
**date** : 12/06/2024

These files are created for teaching purposes

## Structure

1. The notebook Python and notebook basics deals with the basics of Python and how to use Jupyter notebook

2. BW2 tutorial TL is a tutorial to introduce the main features of Brightway2, a LCA software designed by Chris Mutel. The excel file and the images are used during the notebook for teaching purposes.


## Preparation before the Tuto:

All the following libraries are required to run this notebook:
```
- brightway2 = 2.4.6 
- bw2data >= 3.6.6
- bw2io >= 0.8.8
- bw2calc >= 1.8.2
- bw2analyzer = 0.10 (new versions >0.10 might lead to error in the contribution features introduced in the tutorial)
- lca_algebraic = 1.0.5 (idem, version 1.1 remove the exploreImpacts function)
- jupyter >= 4.0.11
- pandas >= 2.2.2
- numpy >= 1.26.4
- seaborn >= 0.12.2
 and a valid license of ecoinvent 3.9.1 database.
```

To install all required libraries, please refer to the official procedure describe in the [Github](https://docs.brightway.dev/en/latest/content/installation/index.html) of Brightway. This

Or you can use the prepared installation file ``tuto-env.yml`` to create a conda environment ``tuto`` that contains all the libraries in a compatible and stable version, all at once:
1)	Download the attached file into your working directory (par exemple : C:/Users/Documents/LCA/Brightway2)
2)	Open Anaconda prompt or Miniconda
3)	Go into the working directory on the promt, with the command : ``cd C:/Users/Documents/LCA/Brightway2`` (update with your path)
4)	Run : ``conda env create -f tuto-env.yml``


### Setup :
- Create a working directory on your computer (/Documents/tuto_bw/ for instance)
- Either clone the repository or simply copy/Paste BW2_tutorial_perso_ecoinvent.ipynb in your working directory

### Open Jupyter :
- Open a anaconda/miniconde console
- Run conda activate bw2 (replace bw2 with the environment name where brightway is installed)
- Open a Jupyter interface: run jupyter lab
- A web (localhost) window open with Jupyter interface 
- Dig into your folder to reach your working directory
- Open up the Notebook BW2_tutorial_perso_ecoinvent.ipynb
- Best practice: when over, go in File/Shut down to properly turn off the server. (or you can also Ctrl + C in the console to force it to stop)
