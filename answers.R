## ---- answers1 ----
cat("
  **Answer:** *If we look at the `dat_1` object two of the SNPs have `FALSE` in the `mr_keep` column. This is because they were unable to be harmonised during the `harmonise_data` function.*
  
  *We can see what the reason is for those being excluded below, see the `palindromic` and `ambiguous` columns:*
")


## ---- answers2 ----
str(subset(dat_1, !mr_keep))
    

## ---- answers3 ----

cat("
**Answer:** *The IVW seems to be giving substantially different estimates to the other methods. The other methods appear to suggest the result is closer to the null. Therefore the IVW estimate is sensitive to alternative pleiotropic models. In the original paper, the overall conclusion was that pleiotropy appeared to be driving the signal, and it was unlikely that urate levels had a large influence on coronary heart disease.*
    ")

## ---- answers4 ----

cat("
    **Answer:** *The IVW estimate was previously showing a modest causal influence of LDL on Alzheimer's disease. But after removing a single very influential outlier, the effect seems to be completely attenuated to the null. In MR, we tend to expect that if there the exposure is causal for the outcome, the expect there to be a consistent result from each of the SNPs. So a single outlier variant driving the entire result is a major red flag.*
    ")

## ---- answers5 ----

cat("
    **Answer:** *MR is susceptible to other biases. One that is relevant to Alzheimer's disease is survival bias. Only individuals who are health enough to survive to old age are able to be included in studies of Alzheimer's diseas, where disease onset is late in life. That means that our Alzheimer's disease sample might be ascertained for individuals with lower LDL cholesterol levels, because individuals with higher LDL levels are more liable to die from heart disease before disease onset. Therefore, there is a risk that survival bias could lead to LDL cholesterol appearing to be protective of Alzheimer's disease. One could speculate that if LDL cholesterol increased Alzheimer's disease risk then survival bias could artifically attenuate that association towards the null.*
    ")

## ---- answers6 ----

cat("
**Answers:** *We see that an effect remains, but it is almost halved from the original raw analysis. This is likely more reliable, because the SNPs that were removed likely primarily caused cognition, and so they were reverse causal instruments for education (i.e. invalid)*
    ")



## ---- answers7 ----

cat("
**Answer:** *The HDL effect is strongly attenuated, meaning that its effect seems to have largely been driven by sharing genetic factors with LDL cholesterol. Once LDL cholesterol was included in the model then that pleiotropic effect on HDL was accounted for. It's important to be aware that the success of multivariable MR at accounting for pleiotropy will be only as good as you are able to account for the relevant confounders / pleiotropic pathways as covariates.*    
    ")

