# SQL-Portfolio-Project
# SpaceX Starlink Data Analysis

## Project Objective
This project aims to analyze data related to SpaceX's Starlink satellites to uncover insights that can drive strategic decisions in consumer hardware development and operational optimization.

## What problem are you solving?
Identifying patterns and insights in satellite data to improve the quality of internet service provided by Starlink and to assist in the strategic placement of future satellites.

## How are you solving this problem?
By analyzing satellite data through SQL queries and Python for data processing, extracting key metrics that influence user experience and satellite performance.

## Job Description
SpaceX, a leader in aerospace manufacture and space transport services, is looking to leverage its technologies with Starlink to deliver advanced internet services globally. The role of a Business Analyst in this context involves deep data analysis to drive product decisions and improve customer experience.

## Relation to Job Posting
This project simulates the analytical tasks expected from a Starlink Business Analyst, focusing on data-driven decision-making to enhance the operational aspects of SpaceX’s consumer hardware.

## Data
### Source
- **API:** Satellite data from N2YO providing real-time satellite positioning.
- **Web Scraping:** Launch data directly from the SpaceX website detailing each mission.

### Characteristics
- The API data includes satellite positions, velocity, and altitude.
- Web scrape data includes launch dates, mission names, and outcomes.

## Notebooks
- [API Data Extraction and Loading (API_ETL.ipynb)]((https://colab.research.google.com/drive/14YdN7ZjGyLyI5IEVG8toguFH9BRWUBB2?usp=sharing)): Notebook for extracting satellite data using an API.
- [Web Scrape Data Extraction and Loading (Web_Scrape_ETL.ipynb)]((https://colab.research.google.com/drive/1oCNXE8whCUrHl03vV8v4ivyGyOlVpjZr?usp=sharing)): Notebook for scraping launch data from the SpaceX website.
- [API SQL Analysis (API_SQL_Analysis.ipynb)](https://colab.research.google.com/drive/1CXu7p8P16y0urJ84lyr9XeTHr1UnRj8w?usp=sharing): Notebook for conducting SQL analysis on satellite data retrieved via the API. It includes descriptive and diagnostic queries to understand launch frequencies and identify trends in satellite data.
- [Web Scrape SQL Analysis (Web_Scrape_SQL_Analysis.ipynb)]([[URL-to-this-notebook](https://colab.research.google.com/drive/1oCNXE8whCUrHl03vV8v4ivyGyOlVpjZr?usp=sharing)](https://colab.research.google.com/drive/1f-m8G9F4r-wHZTDhSnMxDVCyXFdjIfIv?usp=sharing)): Notebook for performing SQL analysis on data scraped from the SpaceX website. This includes queries to analyze the number of launches over months and assess the operational trends based on launch data.
## Future Improvements
- Integrate more diverse data sources to enrich the analysis.
- Implement machine learning to predict future satellite positions and potential disruptions.


