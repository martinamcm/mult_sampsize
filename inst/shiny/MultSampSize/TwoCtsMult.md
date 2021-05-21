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

Let $\mathbf{Y_{i}}=(Y_{i1}, Y_{i2})^{T}$ represent the vector of observed continuous outcomes for patient $i \in N$, $\mathbf{Y}=(\mathbf{Y_{1}},\ldots \mathbf{Y_{N}})^{T}$ represent the observed outcomes for all patients and $T_{i}$ the treatment indicator for patient i. Let $(\mu_{T1}, \mu_{C1})$ and $(\mu_{T2}, \mu_{C2})$ equal the mean in the treatment and control arms in outcome $Y_{1}$ and $Y_{2}$ respectively. The treatment effect for each outcome is denoted as $\delta_{1}=\mu_{T1}-\mu_{C1}$ and $\delta_{2}=\mu_{T2}-\mu_{C2}$. We can model the error terms as bivariate normal with zero mean and variance-covariance matrix $\Sigma_{12}$.

$$\begin{align}
(\varepsilon_{i1}, \varepsilon_{i2}) \sim N(\boldsymbol{0}, \Sigma_{12}) &&
\Sigma_{12}=\begin{pmatrix}
\sigma_{1}^{2} & \rho_{12}\sigma_{1}\sigma_{2}  \\
\rho_{12}\sigma_{1}\sigma_{2} & \sigma_{2}^{2}   \\
\end{pmatrix}
\end{align}$$

 <font size="3">  **Power Function** </font>

$$1-\beta \approx P \left( \bigcup_{k=1}^{2} Z_{k}>z_{k} \mid \boldsymbol{\delta} \right) = \Phi \left( -z_{1} \right) + \Phi \left( -z_{2} \right)- \Phi_{2}\left( -z_{1}, -z_{2} ; \Gamma_{12} \right) $$

where $1-\beta$ is the required power, $z_{k}=z_{\alpha}-\tfrac{\delta_{k}}{\sigma_{k}}\sqrt{\tfrac{n}{2}}$, n is the number of patients per group, $z_{\alpha}$ is the $(1- \alpha )100^{th}$ standard normal percentile and $\Gamma_{12}$ is the correlation matrix.
