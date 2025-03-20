# Corporate Governance and Firm Performance: A Panel Data Analysis of Indian Firms

# A. Project Overview

This project investigates the relationship between corporate governance structures, ownership patterns, and firm performance in Indian manufacturing companies. Using panel data from 968 firms over the period 2001-2008, we analyze how factors such as company age, size, advertising intensity, debt-equity ratio, and different forms of ownership (Indian promoters, foreign promoters, and institutional investors) influence Return on Equity (ROE).

# B. Introduction

In today's global business environment, understanding the determinants of firm performance is crucial for investors, managers, and policymakers. Corporate governance structures and ownership patterns play a significant role in shaping a company's strategic decisions and financial outcomes. Indian corporations present a unique case study due to their diverse ownership structures, which include significant promoter holdings (both domestic and foreign) and institutional investments. This project examines how these ownership structures, along with other firm characteristics, influence financial performance as measured by Return on Equity.

Globalization and the fast-paced changing world have played a significant role in shaping businesses of the modern society. In light of today’s economic landscape and global challenges, a proper measure of firm performance is crucial. A study of 60 Fortune 1000 firms by Hansen & Wernerfelt (1989) tested three models of firm performance, Economic models that captured industry variables, market position, and firm size; Organizational models focused on managerial actions, human resources, and organizational climate; and an integrated model of two, using return on asset as a firm performance measure to dissect variance in profit rates. Although both models were significant and the integrated model explained more variance in firm performance, organizational factors explained twice as much variance in profit rates and had a strong correlation with elements in climate factors. Palaniappan (2017) examined the relationship between firm performance (includes ROA, ROE, and Tobin’s Q) and board characteristics using 275 Indian manufacturing firms listed in the Bombay Stock Exchange between 2011 and 2015 and concluded a positive correlation between CEO duality and performance. Regression results of board size, independence, meetings, and duality had coefficients of -2.4, -2.3, 1.04, and 1.92 with ROE reminding the importance of effective corporate governance to sustain performance and investors' confidence. 

Chaudhuri et al., (2016) used the MIMIC approach using firm-level Indian data from 2001 to 2008 to estimate indicator variables (performance: ROA and Tobin’s Q) and causal variables. The results show a U-shaped relationship for Indian promoters and an inverted U for institutional investors in influencing performance where size, age, advertising, and R&D significantly impact firm performance. A study exploring ownership structure and firm performance of 1005 Indian firms by (Douma et al., 2006) through regressions of ownership variables (such as foreign and domestic corporations, financial institutions, directors, and relatives, along with control variables) to explain corporate performance measured by Return on Assets (ROA) and Q-ratio. The results of the study reveal foreign ownership (by corporations and financial institutions), and domestic corporate ownership positively impact firm performance (when measured by ROA). Domestic corporate ownership and owner-managed firms have a negative influence on firm performance. As this project is based on ROE as a firm performance measure, a study by Alshirah et al., (2022) used panel regression to examine the impact of corporate governance structure and ownership patterns in Jordan from 2018 to 2020, and concluded female representation, CEO duality, and family ownership negatively impact firm performance (ROE). 


# C. Problem Statement

While existing literature has explored the relationship between corporate governance and firm performance in various contexts, findings remain mixed, particularly in emerging markets like India. This project aims to address the following questions:
1. How do fundamental firm characteristics (age, size, advertising intensity, debt-equity ratio) affect firm performance?
2. What is the impact of different ownership structures (Indian promoters, foreign promoters, institutional investors) on firm performance?
3. Do these relationships exhibit non-linear patterns?
4. Have there been significant changes in these relationships over time, particularly before and after 2005?

# D. Data and Methodology

## 1. Data Source

The dataset comprises financial and ownership information from 968 Indian manufacturing firms listed on the Bombay Stock Exchange from 2001 to 2008, resulting in 5,960 firm-year observations.

## 2. Variables

- Dependent Variable: Return on Equity (ROE)
- Independent Variables: 
        - Firm Characteristics: Age, Size, Advertising Intensity, Debt-Equity Ratio
        - Ownership Variables: Indian Promoter Shareholding, Foreign Promoter Shareholding, Institutional Shareholding
        - Additional Variables: Squares of ownership variables to test for non-linear relationships, Year dummies to capture time effects

# E. Methodology

We employ panel data regression techniques to analyze the relationships between our variables of interest. Specifically, we estimate and compare:
- Pooled OLS Model
- Random Effects Model
- Fixed Effects Model

We perform several specification tests to determine the most appropriate model:
- Breusch-Pagan Lagrangian Multiplier Test (to choose between Pooled OLS and Random Effects)
- Hausman Test (to choose between Random Effects and Fixed Effects)

# F. Analysis and Results

## 1. Baseline Model Selection

To begin our analysis, we estimated three models using firm characteristics (age, size, advertising intensity, and debt-equity ratio) as independent variables. 

1.	Pooled OLS Model:
- ROE = 0.0644 - 0.0010*Age + 0.0196*Size + 0.2444*Adv_Intensity + 0.0003*DebtEquity
        - R-squared: 0.0188
        - All variables significant at 5% level except debt-equity ratio

2. Random Effects Model:
- ROE = 0.0432 - 0.001*Age + 0.025*Size + 0.1105*Adv_Intensity + 0.0002*DebtEquity
        - R-squared (within): 0.0116
        - R-squared (between): 0.0250
        - Age and size significant at 5% level

3. Fixed Effects Model:
- ROE = -0.2062 + 0.0031*Age + 0.0445*Size - 0.0825*Adv_Intensity + 0.0002*DebtEquity
        - R-squared (within): 0.0139
        - R-squared (between): 0.0003
        - Only size significant at 5% level

The Breusch-Pagan LM test (p-value < 0.05) indicated that the Random Effects model is preferred over the Pooled OLS model, suggesting significant firm-specific heterogeneity.

The Hausman test (p-value < 0.05) led us to select the Fixed Effects model over the Random Effects model, indicating that firm-specific effects are correlated with the independent variables.

## 2. Impact of Ownership Structure

We then expanded our model to include ownership variables. 

- ROE = -0.2204 + 0.0033*Age + 0.0442*Size - 0.0889*Adv_Intensity + 0.000028*DebtEquity + 0.000244*Indian_Promoter - 0.00028*Foreign_Promoter + 0.000224*Institution
        - R-squared (within): 0.0140
        - Joint significance test of ownership variables: F-stat = 0.35, p-value = 0.7913

The results showed that ownership variables were not jointly significant in explaining ROE. This suggests that, contrary to some literature, ownership structure might not be a primary driver of firm performance in our sample.

## 3. Testing for Non-linear Relationships

To test for potential non-linear relationships between ownership and performance, we added squared terms for each ownership variable. 

- ROE = -0.2216 + 0.0033*Age + 0.043*Size - 0.095*Adv_Intensity + 0.000029*DebtEquity + 0.00039*Indian_Promoter - 0.00151*Foreign_Promoter + 0.00154*Institution - 0.00000263*Indian2 + 0.000017*For2 - 0.000027*Inst2
        - R-squared (within): 0.0148
        - Joint significance test of squared terms: F-stat = 1.08, p-value = 0.3558

The squared terms were not jointly significant, suggesting that there are no significant non-linear relationships between ownership concentration and firm performance.

## 4. Time Effects

We included year dummies to capture time-specific effects:

- Joint significance test of year dummies: F-stat = 0.88, p-value = 0.5211

The year dummies were not jointly significant, indicating no systematic time trends affecting ROE across all firms in our sample.
Subsample Analysis

Finally, we split our sample into two time periods to check for structural changes:

### a. 2001-2004 Subsample:

- Model not significant (p-value = 0.2533)
- Age was the only significant variable
- Ownership variables not significant

### b. 2005-2008 Subsample:

- Model significant (p-value < 0.05)
- Size, advertising intensity, and debt-equity ratio significant
- Ownership variables not significant

The difference in results between these periods suggests that the determinants of firm performance may have changed over time, possibly due to changes in the regulatory environment or market conditions.

# G. Business Implications

Our analysis reveals several important insights for investors, managers, and policymakers:

1. Firm Size Matters: Size consistently emerges as a significant determinant of ROE across different model specifications. This suggests economies of scale play an important role in the profitability of Indian manufacturing firms.
2. Advertising Intensity: This variable showed mixed results across different models, but was significantly negative in the 2005-2008 period. This might indicate that advertising expenses were not generating proportional returns during this period.
3. Debt-Equity Ratio: This became significant in the 2005-2008 period with a negative relationship to ROE, suggesting that highly leveraged firms might have struggled during this later period.
4. Ownership Structure: Contrary to some literature, our analysis found limited evidence that ownership structure significantly impacts firm performance. This suggests that investors might need to focus more on operational factors rather than ownership patterns when evaluating Indian firms.
5. Time Period Differences: The changing significance of variables between the two time periods highlights the importance of considering temporal context when analyzing firm performance.

# H. Conclusions

This project provides valuable insights into the determinants of firm performance in the Indian manufacturing sector. While firm characteristics like size play a significant role in determining ROE, ownership structures appear to have limited direct impact on performance. The findings suggest that the relationship between corporate governance, ownership structure, and firm performance is complex and may be influenced by contextual factors not captured in our models. Future research could explore additional variables, alternative performance measures, or industry-specific analyses to gain a more comprehensive understanding of these relationships. For investors and analysts, our results suggest that fundamental firm characteristics may be more reliable indicators of performance than ownership structures when evaluating Indian manufacturing firms.

The findings of this project align with famous literature by Modigliani & Miller (1958) that firm size, market strategy, and capital structure influence the financial outcome. Similar to Hansen & Wernerfelt (1989), where size and debt-to-equity ratio significantly impact ROE, the role of ownership structure has no notable impact similar to Palaniappan (2017) which can be due to specific characteristics of the Indian Market. Results are consistent with Douma et al., (2006) and Chaudhuri et al., (2016) where foreign ownership influences firm performance. Year-specific policies didn’t have a differentiated impact on firms' ROE. Lastly, the first sub-sample had no clear relationship between ROE and shareholding variables and their squares while in the second sub-sample, institutional shareholding and its square were significant at 10% confidence level i.e., a small but significant impact on performance. This variance can be pointed to different external factors like market conditions, business laws, or any economic factors. 

# I. Limitations and Future Research

Our analysis has several limitations that could be addressed in future research:

1. The relatively low R-squared values suggest that our models explain only a small portion of the variation in ROE. Other factors not included in our analysis may play important roles.
2. Our analysis focuses on a specific time period (2001-2008) and may not reflect current market conditions.
3. We use ROE as our sole performance measure. Future research could incorporate multiple performance metrics to provide a more comprehensive view.
4. Industry-specific analyses could reveal patterns that are obscured in our aggregate analysis.
5. Incorporating additional governance variables such as board composition, CEO characteristics, or audit committee structure could provide richer insights.

# J. References

- Alshirah, M. H., Alfawareh, F. S., Alshira’h, A. F., Al-Eitan, G., Bani-Khalid, T., & Alsqour, M. (2022). Do Corporate Governance and Gender Diversity Matter in Firm Performance (ROE)? Empirical Evidence from Jordan. Economies, 10(4). https://doi.org/10.3390/economies10040084
- Chaudhuri, K., Kumbhakar, S. C., & Sundaram, L. (2016). Estimation of firm performance from a MIMIC model. European Journal of Operational Research, 255(1), 298–307. https://doi.org/10.1016/j.ejor.2016.05.005
- Douma, S., George, R., & Kabir, R. (2006). FOREIGN AND DOMESTIC OWNERSHIP, BUSINESS GROUPS AND FIRM PERFORMANCE: EVIDENCE FROM A LARGE EMERGING MARKET. Strategic Management Journal, 637–657.
- Hansen, G. S., & Wernerfelt, B. (1989). Determinants of Firm Performance: The Relative Importance of Economic and Organizational Factors. In Strategic Management Journal (Vol. 10, Issue 5). http://www.jstor.org/about/terms.html.
- Modigliani, F., & Miller, M. H. (1958). The Cost of Capital, Corporation Finance and the Theory of Investment (Vol. 48, Issue 3).
- Palaniappan, G. (2017). Determinants of corporate financial performance relating to board characteristics of corporate governance in Indian manufacturing industry: An empirical study. European Journal of Management and Business Economics, 26(1), 67–85. https://doi.org/10.1108/EJMBE-07-2017-005
