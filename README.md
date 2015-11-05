# similarityEmbedding

This repository contains 
(1) data from perceptual similarity experiments
(2) feature representation from various sources (deepNet, social feature, and other computer vision features)
(3) stochastic triplet embedding toolbox(tSTE, GNMDS-K, GNMDS-X, CKL-K, CKL-X,STE-K, STE-X)  
(4) matrix completion 

Subfolder: 
/data

freeTriplet.csv 
-- stores 17067 (i,j,k) entries collected from free triplet experiment

-- (i,j,k) indicates a subject thinks d(i,j) < d(i,k)

-- The data comes from 50 subjects, everyone responds to 200 non-repetive free triplets. 

-- There is no repitition of triplets across subjects. 

-- We generate two (i,j,k) entries from every free triplet choice. 

-- the 17067 entries covers 953 female faces from the 2k face data. 

-- free triplets are randomly generated from 953 faces. On average, each face appears in around 30-40 triplets. 

deepNetFeature.json
-- First, we have a trained deep net on Chinese celebrities identification task with high performance

-- We then throw our 953 female faces into the net and take out the FC layer's feature as the feature representation

-- Each face is represented as a 512-dim feature vector

socialFeature.csv
-- the 40 dimensional social features of the 953 female 

socialFeature_list.csv
-- list the name of the 40 social features


