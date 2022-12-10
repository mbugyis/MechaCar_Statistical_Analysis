# MechaCar_Statistical_Analysis

## Linear Regression to Predit MPG
The MechaCar_mpg.csv file has information for 50 prototype MechaCars. The data contains information based on specifics used for making the cars, such as vehicle eweight, spoiler angle, all wheel drive, etc. 

![Linear Regression](https://github.com/mbugyis/MechaCar_Statistical_Analysis/blob/main/logit_analysis.png)

- Vehicle_length and ground_clearance are the two significant variables with p-values that indicate a much higher non-random significance on miles per gallon (mpg)
- the p value: 5.35e-11 and intercept of -1.040e+02 gives way to reject the null hypothesis and shows the slope of the model is not zero.
- r-squared value = 0.7149 means that around 71% of all mpg will be determined by the model.

## Summary Statistics of Suspension Coils
The Suspension_Coil.csv file shows suspension information from multiple productions lots. This was used to ensure manufacutring process is consistent across production lots

![PSI Summary](https://github.com/mbugyis/MechaCar_Statistical_Analysis/blob/main/PSI_summary.png)

![PSI Lot](https://github.com/mbugyis/MechaCar_Statistical_Analysis/blob/main/PSI_LotSum.png)

- THe Median and Mean values are only about 1 point off. Indicating no outlier data points in this dataset.
- A standard deviation of about 8 shows that the PSI metrics are well spread out 
- Regarding the lots... Lot3 had the highest variance in PSI numbers with a standard deviation of 13. With lot 1 and 2 having rather low numbers


## T-Tests on Suspension Coils

![T Total](https://github.com/mbugyis/MechaCar_Statistical_Analysis/blob/main/t_test%20total.png)

![T by Lots](https://github.com/mbugyis/MechaCar_Statistical_Analysis/blob/main/t_test%20lots.png)

- The T-test of lot 1 shows a p-value of 1. Meaning lot 1 shows no support for the rejection of the null hypothesis
- Lots 2 and 3 are not 1 and have means slightly off of the 1500 mark
- Lot 3 has the lowest p value and highest significance in the data.

## Study Design: MechaCar vs Competition
The data in the MechaCar set didn't show a great range of attributes.It is better to consdier some other metrics

Metrics to consider...
- Engine type (Electric, Diesel, Gas)
- Manual vs automatic
- Safety Rating
- MPG (Gasoline Efficiency)
- Resale Value
- Current Price

Hypothesis: Null and Alternative
- Null --> MechaCar is priced according to specific factors important in the industry
- Alternative Hypohesis --> MechaCar is NOT priced based on the factors important in the industry

Statistical Tests

It would be best to use a multiple regression analysis to determine which factors contribute best and/or worst to the current price and/or reselling rpice of the car, and see how many factors contribute and how important of a contributor it is. 
