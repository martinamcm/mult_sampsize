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

Let $\mathbf{Y_{i}}=(Y_{i1}, Y_{i2},Y_{i3})^{T}$ represent the vector of observed outcomes for patient $i \in N$ and $\mathbf{Y}=(\mathbf{Y_{1}},\ldots \mathbf{Y_{N}})^{T}$ represent the observed outcomes for all patients. $Y_{i1}$ and $Y_{i2}$ are the observed continuous measure and $Y_{i3}$ denotes the observed binary variable for latent $Y_{i3}^{*}$. We therefore let $\mathbf{Y_{i}^{*}}=(Y_{i1}^{}, Y_{i2}^{}, Y_{i3}^{*})^{T}$ denote the vector of observed and latent continuous measures for patient i, $\mathbf{Y^{*}}=(\mathbf{Y_{1}^{*}},\ldots \mathbf{Y_{N}^{*}})^{T}$ and $T_{i}$ represents the treatment indicator for patient i. Let $(\mu_{T1}, \mu_{C1})$, $(\mu_{T2}, \mu_{C2})$ and $(\mu_{T3}^{*}, \mu_{C3}^{*})$ equal the mean in the treatment and control arms in outcome $Y_{1}$, $Y_{2}$ and $Y_{3}^{*}$ respectively. The treatment effect for $Y_{1}$ and $Y_{2}$ is denoted as $\delta_{1}=\mu_{T1}-\mu_{C1}$ and $\delta_{2}=\mu_{T2}-\mu_{C2}$ respectively. For $Y_{3}$, $\delta_{3}^{*}=\mu_{T3}^{*}-\mu_{C3}^{*}$, where $\mu_{T3}^{*}=\Phi^{-1}(\pi_{T3}), \mu_{C3}^{*}=\Phi^{-1}(\pi_{C3}), \pi_{T3}=P(Y_{Ti3}=1)$ and $\pi_{C3}=P(Y_{Ci3}=1)$. 

The observed binary variable is related to its latent continuous variable by partitioning the latent variable space.

$$\begin{align}
Y_{i3} = \begin{cases}
  0, & \text{if }  Y_{i3}^{*}< 0, \\
  1 , & \text{if } Y_{i3}^{*} \geq 0
  \end{cases}
\end{align}$$

 We can model the error terms as multivariate normal with zero mean and variance-covariance matrix $\Sigma_{123}$. Note that the error variances for $\varepsilon_{3}^{*}$ is $\sigma_{3}=1$. 

$$\begin{align}
(\varepsilon_{i1}^{}, \varepsilon_{i2}^{}, \varepsilon_{i3}^{*}) \sim N(\boldsymbol{0}, \Sigma_{123}) &&
\Sigma=\begin{pmatrix}
\sigma_{1}^{2} & \rho_{12}\sigma_{1}\sigma_{2} & \rho_{13}\sigma_{1} \\
\rho_{12}\sigma_{1}\sigma_{2} & \sigma_{2}^{2} & \rho_{23}\sigma_{2}   \\
\rho_{13}\sigma_{1} & \rho_{23}\sigma_{2} & 1
\end{pmatrix}
\end{align}$$

 <font size="3">  **Power Function** </font>
 
 $$\begin{align}
 1-\beta \approx P \left( \bigcup_{k=1}^{3} Z_{k}^{\dagger}>z_{k}^{\dagger} \mid \boldsymbol{\delta}^{*} \right) = & \Phi \left( -z_{1}^{\dagger} \right) + \Phi \left( -z_{2}^{\dagger} \right)+ \Phi \left( -z_{3}^{\dagger} \right) - \Phi_{2}\left( -z_{1}^{\dagger}, -z_{2}^{\dagger} ; \Gamma_{12}\right)- \\& \Phi_{2}\left( -z_{1}^{\dagger}, -z_{3}^{\dagger} ; \Gamma_{13}\right)-\Phi_{2}\left( -z_{2}^{\dagger}, -z_{3}^{\dagger} ; \Gamma_{23}\right)+\Phi_{3}\left( -z_{1}^{\dagger}, -z_{2}^{\dagger}, -z_{3}^{\dagger} ; \Gamma_{123}\right)
 \end{align}$$

where, $$z_{k}^{\dagger}= \begin{cases}
z_{\alpha}-\tfrac{\delta_{k}}{\sigma_{k}}\sqrt{\tfrac{n}{2}}, k=1,2 \\
z_{\alpha}-\delta_{k}\sqrt{\tfrac{n}{2}}, k=3 
\end{cases}$$

$1-\beta$ is the required power, n is the number of patients per group, $z_{\alpha}$ is the $(1- \alpha)100^{th}$ standard normal percentile and $\Gamma_{12}, \Gamma_{13}, \Gamma_{23}, \Gamma_{123}$ are the correlation matrices for outcomes $(Y_{1},Y_{2}), (Y_{1}^{},Y_{3}^{*}), (Y_{2},Y_{3}^{*})$ and $(Y_{1},Y_{2},Y_{3}^{*})$ respectively.



