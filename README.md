# Comparison-between-the-actual-Federal-Funds-Rate-and-the-Taylor-Rule
With this data experiment we want to show that the federal funds rate called by the FED has a very strong correlation with the Taylor rule. A determination of this correlation is desirable because the taylor rule is commonly used to forecast FED monetary policy. The Taylor rule which was invented and published 1992 by John Taylor is a forecasting model that determines what interest rate should be to shift the economy toward stable prices and full employment.

## Created by
Florian Mayer e01525689

## Setup and Guide
* Install R 3.6.3 and RStudio
* Set up a folder with Comparison_Taylor_Rule_Federal_Funds_Rate.R, FEDFUNDS.csv, inflation.csv and output_gap.csv
* execute Comparison_Taylor_Rule_Federal_Funds_Rate.R in RStudio

## Data collected

### inflation.csv
* column "DATE": Year of the inflation entry in the date format: yyyy-mm-dd (type: factor)
* column "FPCPITOTLZGUSA": inflation of the consumer prices in percent compared to the last year (type: numeric)

### FEDFUNDS.csv
* column "DATE": Year of the federal funds rate entry in the date format: yyyy-mm-dd (type: factor)
* column "FEDFUNDS": Federal funds rate in percent (type: numeric)

### output_gap.csv
* column "DATE": Year of output gap entry in the date format: yyyy-mm-dd (type: factor)
* column "GDPC2_GDPPOT": output gap in percent which is calculated by: 100*(Real Gross Domestic Product - Real Potential Gross Domestic Product) / Real Potential Gross Domestic Product

## Data produced

### taylor.csv
* column "Year": Year of taylor entry in the date format: yyyy-mm-dd (type: factor)
* column "Taylor": nominal interest rate suggested by the Taylor rule in percent
