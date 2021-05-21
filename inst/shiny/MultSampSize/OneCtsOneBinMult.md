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


 <font size="3">  **Latent Variable Model** </font>

Let $\mathbf{Y_{i}}=(Y_{i1}, Y_{i2})^{T}$ represent the vector of observed outcomes for patient $i \in N$ and $\mathbf{Y}=(\mathbf{Y_{1}},\ldots \mathbf{Y_{N}})^{T}$ represent the observed outcomes for all patients. $Y_{i1}$ is the observed continuous measure and $Y_{i2}$ denote the observed binary variable for latent $Y_{i2}^{*}$. We therefore let $\mathbf{Y_{i}^{*}}=(Y_{i1}^{}, Y_{i2}^{*})^{T}$ denote the vector of observed and latent continuous measures for patient i, $\mathbf{Y^{*}}=(\mathbf{Y_{1}^{*}},\ldots \mathbf{Y_{N}^{*}})^{T}$ and $T_{i}$ represents the treatment indicator for patient i. Let $(\mu_{T1}, \mu_{C1})$ and $(\mu_{T2}^{*}, \mu_{C2}^{*})$ equal the mean in the treatment and control arms in outcome $Y_{1}$ and $Y_{2}^{*}$ respectively. The treatment effect for $Y_{1}$ is denoted as $\delta_{1}=\mu_{T1}-\mu_{C1}$. For $Y_{2}$, $\delta_{2}^{*}=\mu_{T2}^{*}-\mu_{C2}^{*}$, where $\mu_{T2}^{*}=\Phi^{-1}(\pi_{T2}), \mu_{C2}^{*}=\Phi^{-1}(\pi_{C2})$ and $\pi_{T2}=P(Y_{Ti2}=1), \pi_{C2}=P(Y_{Ci2}=1)$. 

The observed binary variable is related to its latent continuous variable by partitioning the latent variable space.

$$\begin{align}
Y_{i2} = \begin{cases}
  0, & \text{if }  Y_{i2}^{*}< 0, \\
  1 , & \text{if } Y_{i2}^{*} \geq 0
  \end{cases}
\end{align}$$

Following these assumptions, We can model the error terms as bivariate normal with zero mean and variance-covariance matrix $\Sigma_{12}$. Note that the error variances for $\varepsilon_{2}^{*}$ is $\sigma_{2}=1$. 

$$\begin{align}
(\varepsilon_{i1}^{}, \varepsilon_{i2}^{*}) \sim N(\boldsymbol{0}, \Sigma_{12}) &&
\Sigma_{12}=\begin{pmatrix}
\sigma_{1}^{2} & \rho_{12}\sigma_{1}  \\
\rho_{12}\sigma_{1} & 1   \\
\end{pmatrix}
\end{align}$$

 <font size="3">  **Power Function** </font>
 
 $$1-\beta \approx P \left( \bigcup_{k=1}^{2} Z_{k}^{\dagger}>z_{k}^{\dagger} \mid \boldsymbol{\delta}^{*} \right) = \Phi \left( -z_{1}^{\dagger} \right) + \Phi \left( -z_{2}^{\dagger} \right) - \Phi_{2}\left( -z_{1}^{\dagger}, -z_{2}^{\dagger} ; \Gamma_{12}\right) $$

where, $$z_{k}^{\dagger}= \begin{cases}
z_{\alpha}-\tfrac{\delta_{k}}{\sigma_{k}}\sqrt{\tfrac{n}{2}}, k=1 \\
z_{\alpha}-\delta_{k}\sqrt{\tfrac{n}{2}}, k=2 
\end{cases}$$

$1-\beta$ is the required power, n is the number of patients per group, $z_{\alpha}$ is the $(1- \alpha)100^{th}$ standard normal percentile and $\Gamma_{12}$ is the correlation matrix.

