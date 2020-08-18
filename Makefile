all: wf-scrna-tenxbraindata.md 
	echo All files are now up to date

wf-scrna-tenxbraindata.md: wf-scrna-tenxbraindata.Rmd
	Rscript -e "knitr::knit('wf-scrna-tenxbraindata.Rmd')"