ictr2014.pdf: ictr2014.tex Figs/fig1a.png Figs/fig3a.png Figs/fig4a.png Figs/fig5a.png Figs/fig6r_a.png Figs/fig8a.png Figs/fig9a.png TopTenWorstGraphs/broman_fig1.jpg
	pdflatex ictr2014

more_on_graphs.tex: more_on_graphs.Rnw
	Rscript -e "library(knitr);knit('more_on_graphs.Rnw')"

TopTenWorstGraphs/broman_fig1.jpg: TopTenWorstGraphs.zip
	unzip TopTenWorstGraphs.zip

TopTenWorstGraphs.zip:
	wget http://www.biostat.wisc.edu/~kbroman/topten_worstgraphs/TopTenWorstGraphs.zip

Figs/fig1a.png: R/fig1.R
	cd R;R CMD BATCH fig1.R fig1.Rout

Figs/fig3a.png: R/fig3.R
	cd R;R CMD BATCH fig3.R fig3.Rout

Figs/fig4a.png: R/fig4.R
	cd R;R CMD BATCH fig4.R fig4.Rout

Figs/fig5a.png: R/fig5.R
	cd R;R CMD BATCH fig5.R fig5.Rout

Figs/fig6r_a.png: R/fig6rev.R
	cd R;R CMD BATCH fig6rev.R fig6.Rout

Figs/fig8a.png: R/fig8.R
	cd R;R CMD BATCH fig8.R fig8.Rout

Figs/fig9a.png: R/fig9.R
	cd R;R CMD BATCH fig9.R fig9.Rout

web: ictr2014
	scp ictr2014.pdf broman-2:public_html/presentations/IowaState2013/
