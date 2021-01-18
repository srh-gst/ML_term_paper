---
output: 
  pdf_document:
    keep_tex: true
    #  citation_package: natbib
    fig_caption: true
    latex_engine: pdflatex
    template: header.tex
title: "Term Paper Proposal"
author:
- name: Sarah Gust
  affiliation: ifo Institute at the University of Munich, [mailto](mailto:gust@ifo.de)
- name: Ann-Christin Kreyer
  affiliation: Max Planck Institute for Innovation and Competition, [ann-christin.kreyer@ip.mpg.de](mailto:ann-christin.kreyer@ip.mpg.de)
abstract: "This is where we put the abstract..."
date: "`r format(Sys.time(), '%B %d, %')`"
geometry: margin=1in
fontfamily: mathpazo
fontsize: 11pt
header-includes:
  -  \usepackage{hyperref}
# spacing: double
# bibliography: MA.bib
biblio-style: alphadin
---

# Introduction