library(shiny)
library(shinythemes)
library(shinyjs)
library(shinycssloaders)
library(shinyjqui)###need to upload package to server
library(readr)
library(googleAnalyticsR)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title    
  tags$head(
    tags$link(rel="stylesheet", type="text/css",href="style2.css"),
   # tags$head(includeScript("google-analytics.js")),
    tags$script(type="text/javascript", src = "md5.js"),
    tags$script('!function(d,s,id){var js,fjs=d.getElementsByTagName(s)    [0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");')
    
  ),
  useShinyjs(),
  uiOutput("app"),
  
  
  headerPanel(
    list(
      tags$head(tags$style("body {background-color: white;}")),
      HTML(
        '<div style="display: flex; align-items: center; height: 200px;">
        <img src="Oryza_CLIMGeno_logo.png" height="200px" style="float:left"/>
        <div style="display: flex; flex-direction: column;">
          <p style="color: #dfd92f; font-size: 60px;">Oryza CLIMGeno</p>
         <p style="color: #dfd92f; font-size: 40px;">Japonica varieties</p>
          <p style="color: black; font-size: 30px;">Explore the natural genetic variation in the local environment of rice</p>
        </div>
      </div>'
      )
    )
  )
  
  ,
  
  # Sidebar with a slider input for the number of bins
  jqui_draggable( sidebarPanel(
        #    wellPanel(
        #      uiOutput("datasets")
        #    ),
        #uiOutput("ui_Manage")
        uiOutput("ui_All"),
        width=3,      
        wellPanel(a(div(id = "snpfold_info", style = "display: none;",
                        h4("SNPfold Correlation Coefficient (SNPfold CC)"),
                        h6(style = "text-align: justify;",
                           "The SNPfold algorithm (Halvorsen et al., 2010) considers the ensemble of structures predicted by the RNA partition functions of RNAfold (Bindewald & Shapiro, 2006) for each reference and alternative sequence and quantifies structural differences between these ensembles by calculating a Pearson correlation coefficient on the base-pairing probabilities between the two sequences. The closer this correlation coefficient is to 1, the less likely it is that the RNA structure is changed by the SNP. The creators of SNPfold note (Corley et al., 2015) that for genome-wide prediction, the bottom 5% of the correlation coefficient values (corresponding in this CLIMtools dataset to a correlation coefficient of 0.445) are most likely to be riboSNitches and the top 5% of correlation coefficient values (corresponding in this CLIMtools dataset to a correlation coefficient of 0.99) are most likely to be non-riboSNitches. Correlation coefficients are provided for all SNPs within protein-coding genes, unless the SNP was located < 40 nt from a transcript end, in which case the correlation coefficient is indicated as “not calculated.” The correlation coefficient for SNPs within upstream regions are indicated as “non applicable.”"),
                        h6("-Halvorsen M, Martin JS, Broadaway S, Laederach A. Disease‐associated mutations that alter the RNA structural ensemble. PLoS Genet. 2010;6:e1001074."),
                        h6("-Bindewald, E, & Shapiro, BA. RNA secondary structure prediction from sequence alignments using a network of k-nearest neighbor classifiers. Rna. 2006;12:342-352.")
        ),
        
        # Add a button to toggle the visibility of the div
        
        actionButton("toggle_snpfold_info", 
                     label = HTML("<p style='color:white; font-size:16px; display: inline-block; white-space: normal; overflow: hidden; text-overflow: clip; max-width: 100%;'>What is the SNPfold Correlation Coefficient?</p>"), 
                     style = "background-color: orange; width:100%; padding: 10px")
        ,
        
        
        # Use JavaScript/jQuery to toggle the visibility of the div when the button is clicked
        tags$script(
          "$(document).on('click', '#toggle_snpfold_info', function() {
     $('#snpfold_info').toggle();
   });"
        ))
        ),
        wellPanel(a(h4('Please cite us in any publication that utilizes information from Oryza CLIMtools:'),  h6('Oryza CLIMtools: An Online Portal for Investigating Genome-Environment Associations in Rice. Ferrero-Serrano, Á, D. Charavorty, K. Kirven, S. M. Assmann.'))),
        wellPanel(a("Tweets by @ClimTools", class="twitter-timeline"
                                , href = "https://twitter.com/ClimTools"), style = "overflow-y:scroll; max-height: 1000px"
        ),
        wellPanel( h6('Contact us: clim.tools.lab@gmail.com'),wellPanel(tags$a(div(
          img(src = 'github.png',  align = "middle"), style = "text-align: center;"
        ), href = "https://github.com/CLIMtools/CLIMGeno")))

        ###################################################
  )                 
  
),
 
                 
                 
                 ###################################################
 
  
      mainPanel( 
   tags$style(type="text/css",
                   ".shiny-output-error { visibility: hidden; }",
                   ".shiny-output-error:before { visibility: hidden; }"
        ),
        
        
          tagList( # The four core files: 3 JS files and 1 CSS file --
          #      singleton(tags$head(tags$script(src='js/highcharts.js',type='text/javascript'))),
          tags$script('!function(d,s,id){var js,fjs=d.getElementsByTagName(s)    [0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");'),
          singleton(tags$head(tags$script(src='/datatables/js/jquery.dataTables.js',type='text/javascript'))),
          singleton(tags$head(tags$script(src='/tabletools/js/TableTools.js',type='text/javascript'))),
          singleton(tags$head(tags$script(src='/tabletools/js/ZeroClipboard.js',type='text/javascript'))),
          singleton(tags$head(tags$link(href='/tabletools/css/TableTools.css',rel='stylesheet',type='text/css')))
          #singleton(tags$head(tags$script(src='http://code.highcharts.com/highcharts.js',type='text/javascript')))
        ),    
        
        #progressInit(),    
     uiOutput("ui_data_tabs"),
                
        tableOutput('contents')
      )
    ))
