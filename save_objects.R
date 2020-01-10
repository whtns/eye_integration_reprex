library('tidyverse')
library('fs')
library('rprojroot')
library('glue')
library('janitor')
library('Seurat')

clark_scanpy <- ReadH5AD("data/processed_anndata.h5ad")

clark_seurat <- readRDS("clark_seurat_v3.rds")

saveRDS(clark_seurat["Arr3",], "data/clark_seurat_v3_arr3.rds")

arr3_df <- data.frame(GetAssayData(clark_seurat["Arr3",], "data"))

write.csv(arr3_df, "data/clark_arr3_df.csv")



