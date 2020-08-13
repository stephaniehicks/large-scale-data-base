# Orchestrating Large-Scale Data Analysis with Bioconductor

Repository containing RMarkdown and other source files for the online book. 

The book can be compiled locally by cloning this repository and running `render_book`, as shown below.


## How to compile the book locally

First clone the repository.

```
git clone https://github.com/stephaniehicks/large-scale-data-base.git
```

Then open the project file `large-scale-data-base.Rproj` in RStudio. (Note that compiling seems to work best using RStudio, due to `pandoc` and other requirements.)

Within the RStudio session, render the book as follows.

```r
bookdown::render_book("index.Rmd", "bookdown::gitbook")
```

## Prerequisites

To compile the book locally, several required R packages need to be installed first. (In the future, once we move the project to Bioconductor, these requirements will be handled automatically. If any packages are missing, they should also show up as errors during compilation.)

```
install.packages("bookdown")
install.packages("BiocManager")
BiocManager::install("ExperimentHub")
BiocManager::install("DelayedArray")
BiocManager::install("DelayedMatrixStats")
remotes::install_github("LTLA/rebook")
```


## Repository contents and structure


Add here. 
