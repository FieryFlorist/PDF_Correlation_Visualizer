# PDF_Correlation_Visualizer
A tool to better visualize and improve understanding of termination oscillations in PDF data.

The R-space data points produced by PDF transformation are not independent. Understanding the difference between oscillations due to termination effects or noise and actual peaks can be tricky.

This project colors the plot based on local correlations. Nearby points of matching color are positively correlated, while points of mismatching color are negatively correlated. Any apparent peaks that are less than one period in width may be oscillations due to termination effects or noise.
