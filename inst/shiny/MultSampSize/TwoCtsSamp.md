---
title: ""
output: html_document
---
<style type="text/css">

body{ /* Normal  */
      font-size: 12px;
  }
  
title {
  font-size: 38px;
  color: DarkRed;
}
</style>

 <font size="3">  **Bivariate Normal Model** </font>

Let $\mathbf{Y_{i}}=(Y_{i1}, Y_{i2})^{T}$ represent the vector of observed continuous outcomes for patient $i \in N$, $\mathbf{Y}=(\mathbf{Y_{1}},\ldots \mathbf{Y_{N}})^{T}$ represent the observed outcomes for all patients and $T_{i}$ the treatment indicator for patient i. The error terms are assumed to be distributed as bivariate normal with zero mean and variance-covariance matrix $\Sigma_{12}$.

$$\begin{align}
(\varepsilon_{i1}, \varepsilon_{i2}) \sim N(\boldsymbol{0}, \Sigma_{12}) &&
\Sigma_{12}=\begin{pmatrix}
\sigma_{1}^{2} & \rho_{12}\sigma_{1}\sigma_{2}  \\
\rho_{12}\sigma_{1}\sigma_{2} & \sigma_{2}^{2}   \\
\end{pmatrix}
\end{align}$$

 <font size="3">  **Probability of response** </font>
 
In the case of composite endpoints, the required quantity is some function of the probability of response in the treatment group $p_{T}$ and in the control group  $p_{C}$.
In this case the overall responder index $S_{i}$ can be formed for patient $i$, where $S_{i}=1$ if $Y_{i1} \leq \eta_{1}, Y_{i2} \leq \eta_{2}$ and 0 otherwise, where $\eta_{1}, \eta_{2}$ are predefined responder thresholds. The probability of response for patient $i$ in the treatment arm $p_{iT}$ and the control arm $p_{iC}$, are as shown

$$\begin{align}
p_{iT}=P(S_{i}=1|T_{i}=1)= & \int_{-\infty}^{\eta_{1}}\int_{-\infty}^{\eta_{2}}f_{Y_{1},Y_{2}}(y_{i1},y_{i2}|T_{i}=1,\boldsymbol{\theta})dy_{2} dy_{1} \\
p_{iC}=P(S_{i}=1|T_{i}=0)= & \int_{-\infty}^{\eta_{1}}\int_{-\infty}^{\eta_{2}}f_{Y_{1},Y_{2}}(y_{i1},y_{i2}|T_{i}=0,\boldsymbol{\theta})dy_{2} dy_{1} 
\end{align}$$

where $\boldsymbol{\theta}$ is the vector of model parameters and we assume that $p_{T} \sim N(\delta_{T}, \sigma^{2}/n)$, $p_{C} \sim N(\delta_{C}, \sigma^{2}/n)$ and $\delta \sim N(\delta_{T}-\delta_{C}, 2\sigma^{2}/n)$.
 
 <font size="3">  **Power Function** </font>
 
 $$1-\beta = \Phi\left(\frac{\delta}{\sqrt{\tfrac{2\sigma^{2}}{n}}}-z_{\alpha}\right) $$

where $1-\beta$ is the required power, n is the number of patients per group and $z_{\alpha}$ is the $(1- \alpha)100^{th}$ standard normal percentile.




