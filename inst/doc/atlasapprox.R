## ----echo = TRUE, eval = FALSE------------------------------------------------
#  install.packages("atlasapprox")

## ----echo = FALSE-------------------------------------------------------------
knitr::opts_chunk$set(fig.width=6, fig.height=6)

## ----setup--------------------------------------------------------------------
library("atlasapprox")

## -----------------------------------------------------------------------------
organisms <- GetOrganisms()
print(organisms)

## -----------------------------------------------------------------------------
human_organs <- GetOrgans(organism = 'h_sapiens')
print(human_organs)

## -----------------------------------------------------------------------------
cell_types <- GetCelltypes(organism = 'h_sapiens', organ = 'Lung')
print(cell_types)

## -----------------------------------------------------------------------------
expression <- GetAverage(organism = 'h_sapiens', organ = 'Lung', features = c('PTPRC', 'COL1A1'))
print(expression)

## -----------------------------------------------------------------------------
fraction_expressing <- GetFractionDetected(organism = 'h_sapiens', organ = 'Lung', features = c('PTPRC', 'COL1A1'))
print(fraction_expressing)

## -----------------------------------------------------------------------------
genes <- GetFeatures(organism = 'h_sapiens')
# To show just the first 20 genes
print(head(genes, 20))

## -----------------------------------------------------------------------------
markers <- GetMarkers(organism = 'h_sapiens', organ = 'Lung', cell_type = 'fibroblast', number = 5)
print(markers)

## -----------------------------------------------------------------------------
highest_expressors <- GetHighestMeasurement(organism = 'h_sapiens', feature = 'PTPRC', number = 5)
print(highest_expressors)

## -----------------------------------------------------------------------------
similar_genes <- GetSimilarFeatures(organism = 'h_sapiens', organ = 'lung', feature = 'PTPRC', number = 5, method = 'correlation')
print(similar_genes)

## ----eval = FALSE-------------------------------------------------------------
#  data_sources <- GetDataSources()
#  print(data_sources)

