
## mult\_sampsize

## [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues)

## Description

R package for determining sample size required in studies using
composite endpoints with mixed continuous and discrete components
analysed using the augmented binary method.

## Getting started

Install from Github using
`devtools::install_github("martinamcm/mult_sampsize")`

Implementation as a Shiny app with further documentation on
functionality and examples available at
[MultSampSize](https://github.com/martinamcm/MultSampSize)

## Details

### Composite Endpoints

Function `sampsizecomp()` provides the required sample size using both
the augmented binary method based on a latent variable model and a
standard binary method based on a logistic regression model with the
following arguments:

  - `augmean` mean risk difference treatment effect estimated using
    augmented binary method
  - `binmean` mean risk difference treatment effect estimated using
    standard binary method
  - `augvar` variance of risk difference treatment effect estimated
    using augmented binary method
  - `binvar` variance of risk difference treatment effect estimated
    using standard binary method
  - `alpha` one-sided alpha level
  - `beta` beta level: 1-desired power

Estimates of these quantities can be obtained from existing data using
the `augbin_rheum` package, as shown below.

#### Example

Assuming the endpoint of interest is a composite endpoint comprised of
two continuous and one binary component, the sample size required in
each arm when the dichotomisation thresholds are equal to 18 and 6 is
obtained as below.

More details and `Egdata21` can be obtained from
[MultSampSize](https://github.com/martinamcm/MultSampSize).

``` r

devtools::install_github("martinamcm/augbin_rheum")

data_fit <- augbinrheum(Egdata21,2,1,c(18,6))

augmean_est <- data_fit$risk_diff$est[1]
binmean_est <- data_fit$risk_diff$est[2]

augvar_est <- 0.5*dim(Egdata21)[1]*((data_fit$risk_diff$ci_upper[1]-augmean_est)/1.96)^2
binvar_est <- 0.5*dim(Egdata21)[1]*((data_fit$risk_diff$ci_upper[2]-binmean_est)/1.96)^2

sampsizecomp(augmean_est,binmean_est,augvar_est,binvar_est,0.05,0.2)
```

### References

McMenamin M, Barrett JK, Berglind A, Wason JMS. Sample Size Estimation
using a Latent Variable Model for Mixed Outcome Co-Primary, Multiple
Primary and Composite Endpoints. *arXiv*. 2019.
[arXiv:1912.05258](https://arxiv.org/abs/1912.05258).

McMenamin M, Grayling MJ, Berglind A, Wason JMS. Increasing power in the
analysis of responder endpoints in rheumatology: a software tutorial.
*medRxiv*. 2020. doi:
[10.1101/2020.07.28.20163378](https://www.medrxiv.org/content/10.1101/2020.07.28.20163378v1)

McMenamin M, Barrett JK, Berglind A, Wason JM. Employing a latent
variable framework to improve efficiency in composite endpoint analysis.
*Statistical Methods in Medical Research*. 2021;30(3):702-716. doi:
[10.1177/0962280220970986](https://doi.org/10.1177/0962280220970986)
