[<img align="left" width="180" height="175" src="https://github.com/CLIMtools/Oryza_CLIMGeno_Japonica/blob/main/www/Oryza_CLIMGeno_logo.png">](https://gramene.org/CLIMtools/oryza_v1.0/Oryza_CLIMGeno_Japonica/ "Oryza CLIMGeno: Japonica landraces")
****
#  [<span style="color:#DFDB48">OryzaCLIM V1.0</span>](https://gramene.org/CLIMtools/oryza_v1.0/OryzaCLIM/ "OryzaCLIM V1.0")


[**<span style="color:#DFDB48">OryzaCLIM V1.0</span>**](https://gramene.org/CLIMtools/oryza_v1.0/OryzaCLIM/OryzaCLIM-V1//) is a component of [**<span style="color:#DFDB48">Oryza CLIMtools</span>**](https://gramene.org/CLIMtools/oryza_v1.0/), hosted by [**<span style="color:#DFDB48">Gramene</span>**](https://www.gramene.org/), originally adapted from the [**Zbrowse viewer**](http://www.baxterlab.org/untitled-cqi0) created by the [**Baxter laboratory**](http://www.baxterlab.org/). [**<span style="color:#DFDB48">OryzaCLIM V1.0</span>**](https://gramene.org/CLIMtools/oryza_v1.0/OryzaCLIM/OryzaCLIM-V1//) provides the information  intended to explore for rice landraces, the genetic variation found in association with each of the 413 environmental variables analyzed in this study.
Navigation through the graphs and tables in [**<span style="color:#DFDB48">OryzaCLIM V1.0</span>**](https://gramene.org/CLIMtools/oryza_v1.0/OryzaCLIM/OryzaCLIM-V1//) is done using the tabs at the top of the page, adjusting options on the sidebar panel, or clicking points on the plots. The user interface is designed to be intuitive and allow the user to quickly zoom into a point of interest anywhere on the genome.

To use this application choose the ExG association of interest from the left panel. The table on this tab provides a summary of the 25 variants with the strongest associations to the selected variable:

1. The Data Table tab provides a full description of the associated variants for the selected environmental variable. The user can easily manage the columns to be shown, rank based on score or q-value, or search and retrieve information for any associated variant.

2. The whole genome view tab provides an interactive Manhattan plot with the variants associated with the environmental variable of interest. The may manage the genetic variants on this plot based on its predicted effect (missense, synonymous variants, etc.). Scrolling over the variants in the plot retrieves the specific information on that variant. Clicking on it, automatically renders the plot shown in the next tab (chromosome view). Alternatively, the user can click and drag over a region of interest.

3. In the chromosome view tab, the user obtains an amplified view of the genetic region of interest. Clicking any variant in the top plot will automatically render in the bottom plot, a window size determined by the user on the left panel. This feature allows for the exploration of the region within linkage disequilibrium for the selected variant. The user can then explore nearby genes as well as other variants associated with the environmental variable of interest within the same genetic region.

4. The annotation table tab, provides an interactive table with the information in the genetic region selected in the previous tab.

This tool provides information on the q-values for all associated variants for the user to impose a particular FDR if desired.

For a more detailed description of the logic behind the [Zbrowse viewer](http://www.baxterlab.org/untitled-cqi0) used in this tool visit the [user manual](http://docs.wixstatic.com/ugd/52737a_2a65d0deb3bd4da2b5c0190c0de343ca.pdf) by Greg Ziegler.


## [Data availability](https://github.com/CLIMtools/ClimGeno/tree/master/data)
The data from the GxE associations provided by this tool as is available in [data/ folder](https://github.com/CLIMtools/CLIMGeno/tree/master/www/config/data). 
