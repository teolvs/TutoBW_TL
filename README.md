# Teaching materials for Brightway introduction

**author** : Teo Lavisse  
**date** : 27/09/2024

These files are created for teaching purposes

## Structure

1. The notebook Python and notebook basics deals with the basics of Python and how to use Jupyter notebook

2. BW2 tutorial TL is a tutorial to introduce the main features of Brightway2, a LCA software designed by Chris Mutel. The excel file and the images are used during the notebook for teaching purposes.


## Preparation before the Tuto:

All the following libraries are gien in the ``environment_BW_LCA_algeb.yml`` file to run this notebook:
```
- brightway2==2.3
- bw2analyzer==0.10
- bw2calc==1.8.2
- bw2data==3.6.6
- bw2io==0.8.12
- lca_algebraic = 1.0.5 (version 1.1 remove the exploreImpacts function)
- pandas>=2.2.2
- numpy==1.26.4
- seaborn>=0.13.0
 and a valid license of ecoinvent 3.9.1 database.
```

To install all required libraries, please refer to the official procedure describe in the [Github](https://docs.brightway.dev/en/latest/content/installation/index.html) of Brightway. This

Or you can use the prepared installation file ``Install_BW.bat`` that uses Miniforge3, and follow the instructions in the opening window.

### Setup :
- Create a working directory on your computer (/Documents/tuto_bw/ for instance)
- Either clone the repository or simply copy/Paste tutoBW_beginner_TL.ipynb in your working directory

### Open Jupyter :
- Open a miniforge or anaconda prompt
- Run conda activate bw_lca (replace bw_lca with the environment name where brightway is installed)
- Open a Jupyter interface: run jupyter lab
- A web (localhost) window open with Jupyter interface 
- Dig into your folder to reach your working directory
- Open up the Notebook tutoBW_beginner_TL.ipynb and tutoBW_advanced_TL.ipynb
- Best practice: when over, go in File/Shut down to properly turn off the server. (or you can also Ctrl + C in the console to force it to stop)*

## License

This work © 2024 by Téo Lavisse is licensed under [CC BY-NC 4.0](http://creativecommons.org/licenses/by-nc/4.0/).

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">
  <img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" />
</a>
