# Evolution Dataset
Hominin evolution dataset with 1,500+ entries spanning 7.6M years. Includes cranial capacity, height, diet, bipedalism, tool use, and geography for species from Sahelanthropus to Homo sapiens. Ideal for evolutionary analysis and paleoanthropology studies.

# 🧬 Evolutionary Morphology Statistical Analysis

## 📊 Project Overview
Comprehensive statistical analysis of evolutionary dataset examining morphological changes across species over time. This project investigates cranial capacity evolution, height development, and ecological relationships using robust statistical methods suitable for evolutionary biology data.

## 🎯 Research Objectives
- **Temporal Patterns**: Analyze evolutionary changes in cranial capacity and height across time periods
- **Species Comparison**: Examine morphological differences between hominid species
- **Ecological Correlations**: Investigate relationships between diet, habitat, and physical characteristics
- **Geographic Variation**: Assess morphological differences across fossil discovery locations

## 🔬 Analytical Methodology

### Statistical Framework
- **Descriptive Statistics**: Species-level summaries of key morphological traits
- **Normality Assessment**: Distribution analysis for parametric test suitability
- **Non-Parametric Testing**: Kruskal-Wallis tests for multi-group comparisons
- **Correlation Analysis**: Spearman's rank correlations for monotonic relationships
- **Categorical Analysis**: Chi-square tests for association between ecological factors

### Data Quality Assurance
- Missing value analysis and handling
- Data structure validation
- Variable distribution examination
- Outlier detection through visual inspection

## 📈 Core Analyses Performed

### 1. Species-Level Descriptive Statistics
- Sample size per hominid species
- Mean cranial capacity with variability measures
- Average height calculations with standard deviations
- Temporal distribution across evolutionary timeline

### 2. Distribution Normality Assessment
- Histogram visualization with normal distribution curves
- Cranial capacity distribution across specimens
- Height variability patterns
- Temporal distribution characteristics

### 3. Morphological Correlations
- Spearman correlation between cranial capacity and height
- Temporal trends in physical characteristics
- Evolutionary trajectory analysis
- Strength and significance of morphological relationships

### 4. Multi-Group Comparisons
- Kruskal-Wallis test for cranial capacity across species
- Geographic location impact on morphology
- Habitat type influence on physical characteristics
- Post-hoc analysis preparation

### 5. Ecological Factor Associations
- Chi-square test for diet and location relationships
- Habitat preference patterns
- Ecological niche examination
- Environmental adaptation analysis

## 🗂️ Dataset Characteristics

### Variables Analyzed
- **Morphological**: cranial_capacity, height
- **Temporal**: time (evolutionary period)
- **Taxonomic**: genus_species
- **Ecological**: diet, habitat, location
- **Geographic**: discovery locations

### Data Structure
- Multiple hominid species representation
- Temporal span across evolutionary periods
- Diverse ecological and geographic coverage
- Mixed continuous and categorical variables

## 📊 Key Statistical Findings

### Morphological Trends
- Species-specific cranial capacity patterns
- Height evolution across evolutionary timeline
- Correlation strength between brain size and stature
- Temporal progression of physical characteristics

### Ecological Relationships
- Diet and location association significance
- Habitat type impact on morphological development
- Geographic variation patterns
- Environmental adaptation evidence

## 🛠️ Technical Implementation

### R Packages Utilized
```r
# Data Manipulation & Analysis
library(tidyverse)    # Data wrangling and visualization
library(dplyr)        # Data manipulation
library(rstatix)      # Statistical testing
library(readr)        # Data import

# Visualization & Reporting
library(ggplot2)      # Advanced plotting
library(corrplot)     # Correlation visualization
