## Selected Projects

- [Adobe Classification](#adobe-classification)
- [Haumea](#Haumea)
- [Karhunen-Loève Image Processing](#KLIP)
- [Collective Decision-Making](#collective-decision-making)
- [Discount-Lift Tradeoffs](#discount-lift-tradeoff)
- [A/B Testing with Bayesian Posteriors](#ab-testing-bayesian)
- Bill Date Optimization
- Sequential A/B Testing
- Discount Testing
- Ethograms

<a id="adobe-classification"></a>

### Adobe Classification

The goal of this project was to assign metadata to marketing campaigns using Adobe Analytics. Prior to this project, marketing data was stored locally in our data warehouses but was unavailable in Adobe Analytics. What this project accomplished was syncing these two data sources so that we can easily build reports on the fly in Adobe Analytics using our internal data.

<img src = "Portfolio/Adobe-Classification/img/name_and_manager.png?raw=true">

*An example of a breakdown in Adobe Analytics that utilizes the classification implemented in this project. Notice, we are able to view each step in our signup flow using internal metrics such as marketing Manager and Department. This ability to roll up marketing campaigns into aggregate groups based on user-defined properties is crucial for alignment between Market Mix Models and Finance.*

![](https://img.shields.io/badge/SQL-white?logo=Microsoft%20SQL%20Server&logoColor=red) ![](https://img.shields.io/badge/Jupyter-white?logo=Jupyter) ![](https://img.shields.io/badge/Adobe%20Analytics-white?logo=Adobe&logoColor=red) ![](https://img.shields.io/badge/Python-white?logo=Python)

<a id="Haumea"></a>

### Modeling the Interior of the Dwarf Planet Haumea

Haumea is a dwarf planet located beyond Neptune’s orbit. Due to its small size, its shape cannot be accurately determined as the angular size is less than a pixel. Nonetheless, we can infer that Haumea is a rotating body with varying semi-major and semi-minor axes based on periodic changes in brightness that correspond to different ellipsoidal faces being exposed. To model the planet’s morphology and internal composition, we assume it is a Jacobi Ellipsoid and simulate a stable, 3D self-gravitating body with Haumea’s observed rotational period.

<img src="images/density_sim.gif?raw=true">

*Self-consistent 3D gravitational simulation of the dwarf planet Haumea.*

![](https://img.shields.io/badge/Numerical_Hydrodynamics-FF0000?color=important) ![](https://img.shields.io/badge/Astrophysics-gray?) ![](https://img.shields.io/badge/C++-00599C?logo=c%2B%2B)  

[View Code on Github](https://github.com/jakehanson/Haumea)

<a id="KLIP"></a>

### Karhunen-Loève Image Processing

In this project, I use the Karhunen-Loève Transform (KLT) to directly image exoplanets. This algorithm is a generalization of principal component analysis that diagonalizes the covariance matrix of a set of reference images. The result is a set of uncorrelated variables called Karhunen-Loève basis functions that can be ordered based on their importance.

In Astronomy, these basis functions capture systematic defects in the telescope optics that result in a speckle pattern that is the same order of magnitude as astrophysical sources. By subtracting the basis functions, you can remove the systematic defects while retaining the astrophysical signal - enabling the discovery of faint exoplanets in bright environments.

<img src = 'images/KLIP_Example.png?raw=true'>*Overview of Karhunen-Loève Image Processing. Notice that the birthmark, being a unique feature of the target image, is not removed by subtraction of the basis functions. Image by author.*

<img src = 'images/hr8799.jpeg?raw=true'>*VLT images of the HR8799 stellar system. Directly imaged exoplanets can be seen in white*.

[View Publication](https://iopscience.iop.org/article/10.3847/0004-637X/820/1/40/meta)

[View Code on GitHub](https://github.com/jakehanson/KLIP)

![](https://img.shields.io/badge/Image_Processing-important) ![](https://img.shields.io/badge/Astrophysics-gray?) ![](https://img.shields.io/badge/Applied_Mathematics-green)

<a id="collective-decision-making"></a>

### Collective Decision-Making in Ant Colonies

The nest site selection process in ants is a fascinating example of collective decision-making without centralized control. To better understand this process, we modeled the ant species Temnothorax Rugatulus as particles undergoing Brownian motion within the nest. By fine-tuning the parameters of the Brownian random walk, we were able to show that this simple model can select specific nest geometries based on the quorum density within the nest. When a quorum threshold is met, ants transition from slow nest exploration to rapid brood carrying, indicating the successful selection of a new nest site. Our study provides insight into the underlying mechanisms of ant collective decision-making and underscores the ability of natural selection to delegate critical aspects of a collective decision to the physical environment.

[View Publication](https://link.springer.com/article/10.1007/s11721-021-00196-4)

[View Web Simulation](https://elife-asu.github.io/wss-modules/modules/4-collective-behavior/)

[View Code on GitHub](https://github.com/jakehanson/wss-modules)

![JavaScript](https://img.shields.io/badge/JavaScript-yellow?logo=javascript) ![HTML](https://img.shields.io/badge/HTML-orange?logo=html5) ![CSS](https://img.shields.io/badge/CSS-blue?style=flat-square&logo=css3)

<a id="discount-lift-tradeoff"></a>

### Calculating the Discount-Lift Tradeoff

Marketing often faces the challenge of determining the discount threshold beyond which a discount would no longer be profitable. To evaluate this, it is crucial to have knowledge of the lifetime revenue (LTR) of your customers. Once the LTR is established, you can calculate the necessary lift required to make a specific discount profitable. Here, I use LTR data for five different products to generate segmented discount-lift curves that inform us of the required lift levels to achieve profitable discounts for each product offer.

<img src='./images/discount_lift_synthetic.png'>*The lift required (y-axis) for any given discount amount (x-axis). The different colors show that different products require different lifts in order to be profitable due to differences in LTR.*

![](https://img.shields.io/badge/Python-white?logo=Python) ![](https://img.shields.io/badge/SQL-white?logo=Microsoft%20SQL%20Server&logoColor=red) ![](https://img.shields.io/badge/Jupyter-white?logo=Jupyter) 

[View Code on Github](https://github.com/jakehanson/Haumea)

<a id="ab-testing-bayesian"></a>

### A/B Testing with Bayesian Posteriors

Bayesian confidence intervals are crucial in A/B testing as they allow us to estimate the uncertainty around the mean conversion rate of each experience. Without such estimates, we cannot draw conclusions about the effectiveness of our marketing strategies with any degree of confidence. Here, I use Bayes Theorem to constrain the uncertainty about the mean, which enables the calculation of reliable confidence intervals that give us a better understanding of the true conversion rate for each experience. This information is essential for making data-driven decisions and improving the success of marketing campaigns.

<img src = 'images/sample_distributions.png'>*Example of Bayesian inference in practice. Rather than reporting a single conversion rate, I report the conversion rate with an uncertainty estimate calculated using the Bayesian posterior. This allows one to easily visualize whether or not differences in conversion are significant.*

<img src="images/sim_2.gif?raw=true">*This simulation shows how additional observations affect the uncertainty estimate. The more we observe, the tighter the posterior distribution is centered about the true bias.*

[View the code used to generate Bayesian confidence intervals.](https://github.com/jakehanson/jakehanson.github.io/blob/master/Portfolio/AB%20Testing%20With%20Bayesian%20Posteriors/Bayesian%20Confidence%20Intervals%20-%20Portfolio.ipynb)

[View the theoretical summary.](https://github.com/jakehanson/jakehanson.github.io/blob/master/Portfolio/AB%20Testing%20With%20Bayesian%20Posteriors/bayesian_inference_in_AB_testing.pdf)

![](https://img.shields.io/badge/Marketing-gray) ![](https://img.shields.io/badge/AB_Testing-red) ![](https://img.shields.io/badge/Applied_Mathematics-green)

### Behavioral Heterogeneity and Information Sharing in Group Decision-Making

The project aims to investigate how information sharing affects the fitness of group-living animals, focusing on the ant species Temnothorax rugatulus during colony emigrations. Using clustering methods and network analysis, we quantify the degree of behavioral heterogeneity among ants and identify four behavioral castes: primary, secondary, passive, and wandering. We then characterize the distinct roles played by each caste in the spread of information during emigrations. We find that understanding the contribution of each worker can improve models of collective decision-making in this species and provide a deeper understanding of behavioral variation at the colony level. Ultimately, the study highlights the importance of behavioral heterogeneity in the spread of information among group-living animals and emphasizes the need for more accurate quantification of this heterogeneity.

<img src = 'images/col6_t1.png'>*This ethogram shows the behavior of every ant in the colony as a function of time. This is actual data derived from videos of nest site selection. See publication for more details.*

[View Publication](https://royalsocietypublishing.org/doi/full/10.1098/rspb.2019.2950)

[View Ethogram Code](https://github.com/jakehanson/Ethograms)

Data Science, Data Visualization, Network Theory, Information Theory, Complex Systems, Python, Jupyter

### Bill Date Optimization

Using high-resolution customer data linked to bank accounts we train a machine learning model to predict the best time to bill.

Python, Pandas, Data Viz, Machine Learning - XGBoost

---

### Discount Testing
Here we A/B test different discounts for the transunion (TU) report fee. The metric for success is the paids/offer and we find that different departments have different optimal TU fees. We build a model that targets the user with the correct TU fee based on their department and show that this results in a average lift of 30%.

Tableau, Python, Jupyter

---

### The Statistics of Sequential A/B Tests
One of the most common theoretical problems faced by marketers is what happens when a series of A/B tests are running simultaneosly. In other words, do the results from a test early on in a web visit bias the results of all later tests? Here, I prove that as long as the proportions of the test allocation are fixed in each branch across time, than the results of any individual test can be considered in isolation. That said, the time it takes for an individual test to converge increases exponentially the more tests that are running simultaneously.

Marketing, Web Optimization, AB Testing, Applied Mathematics

