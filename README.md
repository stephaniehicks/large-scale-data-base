# Orchestrating Large-Scale Data Analysis with Bioconductor

Repository containing RMarkdown and other source files for the online book. 

The book can be compiled locally by cloning this repository and running `render_book`, as shown below.


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

## Structure

The book is split into the following parts:

1. Introductory chapters focusing on R, Bioconductor and common formats to store large data.
2. Introduction to the DelayedArray framework, and best practices for users and developers working with DelayedArray-backed analyses.
3. Best practices for working with "long" data (millions of features), "wide" data (millions of observations), or many small files (millions of small datasets). 
4. Topic chapters for parallelization and for working in the cloud.
4. Workflows containing end-to-end analysis Rmarkdown reports with minimal explanatory text.
5. Appendices containing some bits and pieces about the contributors.

Compilation of the workflows will cache the objects generated after each chunk.
This allows objects to be quickly re-used in the chapters without having to repeat or rewrite the prior steps.
The `extractCached()` calls littered in the chapters will extract objects of interest from each cache,
also reporting the steps used to generate those objects in a folded code chunk.
This enables readers of each chapter to inspect the code without interrupting the pedagogical flow.

As a consequence, compilation of many of the chapters depends on compilation of the workflows.
Those writing new chapters should move all set-up code into a similar workflow 
and exploit the `extractCached()` to obtain a starting point for their chapter.
Also note the `chapterPreamble()` code chunk that is required at the top of each chapter to set up the collapsible elements.

## Build instructions (only locally for now)

First clone the repository.

```
git clone https://github.com/stephaniehicks/large-scale-data-base.git
```

Then open the project file `large-scale-data-base.Rproj` in RStudio. 
**Note**: compiling seems to work best using RStudio, due to `pandoc` and other requirements.

Install the **rebook** package from https://github.com/LTLA/rebook.
Then, run the usual **bookdown** invocation, for example:

```r
bookdown::render_book("index.Rmd", "bookdown::gitbook")
```

Advanced users can call `make` to perform a "pre-compilation" prior to the above command.
This generates cached content to be used by the serial **bookdown** invocation,
and is most useful when the `make` itself is parallelized.

```sh
make
rm -rf _bookdown_files
R -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")'
```


## Developer instructions

Coming soon.


## Deployment instructions

This is in active development. 
At the moment, it depends on [rebook](https://github.com/LTLA/rebook) which has been submitted to Bioconductor  (https://github.com/Bioconductor/Contributions/issues/1590). 

Therefore, deployment instructions will be provided once the abobe process is complete.
However, the goal is for deployment to be fully automatic beyond the first push to this repository.
