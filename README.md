# Multi-Patch Malaria Model: The Case of Low Migration

## Overview
This project develops and analyzes a multi-patch metapopulation model to investigate malaria dynamics. The model explicitly incorporates both mosquito and human population dynamics, which are essential for malaria transmission.

Migration is permitted only among susceptible, exposed, and recovered human compartments, while infected individuals remain confined to their respective patches.

The study combines analytical techniques (regular perturbation theory) and numerical simulations to explore how low migration rates influence disease persistence and control strategies.

---

## Key Features
- Multi-patch metapopulation framework for malaria transmission
- Explicit modeling of human and mosquito population dynamics
- Migration limited to non-infectious human compartments
- Regular perturbation theory applied to study infectious dynamics
- Numerical simulations to assess malaria transmission under varying:
  - Migration rates
  - Local basic reproduction numbers ($\mathcal{R}_0$)
- **Key Insight:** At very low migration rates, patches behave almost as isolated units, simplifying local analysis

---

## Mathematical Approach
- **Model Type:** SEIRS-type multi-patch metapopulation model  
- **Analysis Methods:**
  - Regular perturbation theory for low migration scenarios
  - Stability analysis of equilibria
- **Computational Tools:** Python (`NumPy`, `SciPy`, `Matplotlib`) for numerical simulations

---

## Conclusion

Migration plays a vital role in shaping malaria transmission dynamics across interconnected regions. This study explored a multi-patch malaria model to understand how varying migration rates affect disease spread and persistence.  

Key findings include:  
- Using the **regular perturbation theorem**, the stability of equilibria under low migration can be inferred from the stability of isolated patches.  
- Numerical simulations confirm that **very low migration rates** confine malaria largely to the initial outbreak patch, aligning with theoretical expectations.  
- As migration increases, malaria spreads more easily, even to patches where the local reproduction number $\mathcal{R}_{0i\varepsilon} < 1$.  

These results highlight **migration as a key driver of sustained malaria transmission and spatial disease persistence**.

---

## Recommendations

The findings provide valuable insights for targeted interventions and policy planning. We recommend:

1. **Targeted Control in High-Risk Patches**  
   Focus on patches where ($\mathcal{R}_{0i\varepsilon} > 1 $).  
   Interventions that increase **human recovery rates** ($\gamma_{hi} $) and **mosquito mortality rates** ($\mu_{vi} $) can help reduce transmission, ensuring optimal allocation of resources.

2. **Regional Coordination**  
   Strengthen collaboration between neighboring regions to synchronize interventions, minimize reinfection risks, and promote a global disease-free equilibrium.

3. **Model Refinement and Data Integration**  
   - Determine optimal thresholds for classifying migration rates as low ($\varepsilon$).  
   - Extend the model to include **fast migration scenarios**, **seasonal and spatial variations**, **human behavior**, **stochastic effects**, and **real-time data** to improve predictive accuracy.

4. **Community Engagement**  
   Develop education campaigns targeting mobile populations to raise awareness on prevention methods and the importance of early diagnosis and treatment.

5. **Policy Integration**  
   Incorporate migration patterns into public health strategies, prioritizing mobile and high-risk populations.

---

Addressing these recommendations will enhance malaria control efforts, especially in regions with frequent human mobility. Recognizing migration's role is essential for achieving long-term malaria reduction and eventual elimination.
