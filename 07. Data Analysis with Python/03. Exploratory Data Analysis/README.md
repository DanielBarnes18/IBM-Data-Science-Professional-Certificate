# Exploratory Data Analysis (EDA)

This lab involves some exploratory data analysis using Pandas and Numpy, with visualizations produced using the Matplotlib and Seaborn packages.

Correlations between values are considered (and visualized), and this forms a large portion of the lab. Details about correlation parameters are below, and the notebook is a useful demonstration of how to do EDA on a dataset.

## Correlation
The strength of the correlation between 2 features can be quantified through:
- Pearson correlation coefficient
- P-value

The scipy stats package can be used to retrieve both values, e.g.

	pearson_coef, p_value = stats.pearsonr(df['horsepower'], df['price'])

will find the correlation between horsepower and price for the `df` dataframe.

### Pearson Correlation Coefficient
- Close to +1 : Large Positive relationship
- Close to -1 : Large Negative relationship
- Close to 0 : No relationship

### P-value
- P-value < 0.001 : Strong certainty in the result
- P-value < 0.05 : Moderate certainty in the result
- P-value < 0.1 : Weak certainty in the result
- P-value > 0.1 : No certainty in the result

### Strong Correlations
A strong correlation occurs when the Pearson correlation coefficient is close to 1 or -1 (positive or negative relationship), and when the P-value is less than 0.001.

## Chi-Square Test for Association <img src="https://render.githubusercontent.com/render/math?math=\left(\chi^2\right)">
When dealing with the relationships between two categorical variables, the same correlation method for continuous variables cannot be used. Instead, the Chi-square test for the association must be used. The Chi-square test is intended to test how likely it is that an observed distribution is due to chance. It measures how well the observed distribution of data fits with the distribution that is expected if the variables are independent.

The Chi-square tests null hypothesis is that the variables are independent. The test compares the observed data to the values that the model expects if the data was distributed in different categories by chance. Anytime the observed data doesn't fit within the model of the expected values, the probability that the variables are dependent becomes stronger, thus proving the null hypothesis incorrect. The Chi-square does not give the type of relationship that exists between both variables, only that a relationship exists.

To generate this in Python, use the chi square contingency function in the scipy.stats package:

	scipy.stats.chi2_contingency(cont_table, correction=True)

The function will print out the Chi-square test value, the P-value, and a degree of freedom. For details, see the [documentation](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.chi2.html).