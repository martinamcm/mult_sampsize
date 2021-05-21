---
title: ""
header-includes:
   - \usepackage{xfrac}
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

 <font size="3">  **Univariate Normal Model** </font>

Let $Y_{i1}$ represent the observed continuous outcome for patient $i \in N$, $\mathbf{Y}=(\mathbf{Y_{1}},\ldots \mathbf{Y_{N}})^{T}$ represent the observed outcomes for all patients and $T_{i}$ the treatment indicator for patient i. Let $\mu_{T1}$ and $\mu_{C1}$ equal the mean in the treatment and control arms respectively and $\delta_{1}=\mu_{T1}-\mu_{C1}$. We can model the error term as normal with zero mean and variance $\sigma_{1}^{2}$.

<font size="3"> **Power Function** </font>

$$1-\beta = \Phi \left( \frac{\delta_{1}}{\sqrt{2\sigma_{1}^{2} / n}} - z_{\alpha/2} \right)$$

where $1-\beta$ is the required power, n is the number of patients per group and $z_{\alpha/2}$ is the $(1- \alpha /2)100^{th}$ standard normal percentile.


