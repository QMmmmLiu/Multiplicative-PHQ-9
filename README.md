# A Multiplicative Model of Psychopathology in Applications to Depression

**Introduction**

Defining and quantifying uncertainty play vital roles in measuring psychopathology. _Additive models_ (AM) maintain that psychopathology is the sum of individual components (e.g., depressed mood = low positive affect + high negative affect [1]) and changes in a linear and additive fashion (e.g., depression at one month = change + depression at baseline). The prevalence of additive models comes from statistical conventions and lack of alternatives, rather than theoretical basis or empirical observations, leading to methodological rigidity that can hinder psychopathology research. For example, research has found treatment-induced change in psychopathology to show multiplicative patterns: Psychotherapy can result in changes proportional to the baseline symptoms wherein post-treatment symptom severity = treatment effect  pre-treatment severity [2]–[4]. Thus, we propose _multiplicative models_ (MM) that depict psychopathology with greater flexibility and higher faithfulness.

MMs represent psychopathology more faithfully than AMs. AMs imply normality of the psychopathology construct [5]. Normality in psychopathology suggest that those who score low on psychopathology are as rare as those who score high on psychopathology and that such proportions are symmetric. In the general population, however, empirical research shows that data collected on psychopathology follow lognormality. That is, the data are asymmetrically distributed with the majority of the population scoring low on indices of psychopathology and sizably smaller proportion of the population showing high severity [6], [7]. Thus, lognormality from MMs may better describe psychopathology [8], [9].

Conceptually, lognormality in MMs highlights the importance of idiosyncratic characteristics and intra-individual dynamics in assessing severe psychopathology (e.g., [10]). As the variance in lognormal distribution changes given its median, individuals with high severity exhibit highly occasion-varying and person-specific symptoms.

Methodologically, misusing AMs can lead to underpowered studies with as low as 25% statistical power compared to that of MMs. Thus, when correctly specified, MMs can have lower sample size requirement, which can lead to greater cost-efficiency for oftentimes-expensive clinical experiments [11]–[14]. In addition, MMs are invariant across scales, intuitive in interpretation, and robust against outliers [11]. Consequently, MMs have both conceptual and methodological advantages over traditional AMs.

**Method**

The current study focuses on the use of MMs on depression, as measured by PHQ-9 in three panels of the PROMIS open dataset (_n_ = 175) [15]i. We examined distributional forms via visualization and the inter-panel and item-rest relations via different AMs and MMs. Inter-panel relations were examined through fixed-effects and mixed-effects linear and polynomial models (see notes in Table 1a and 1b for specific model forms). Item-rest relations were represented via using the individual item to predict the sum of other items (SOI, i.e., sum scores – the individual item score). MMs are applied by first log-transforming all but dummy variables, then fitting respective models, and finally back-transforming certain parameters.ii This effectively fits log-log fixed-effect and mixed-effect linear models.

**Results**

Lognormality provides a better fit for PHQ-9 scores at all time points than normality [5] (see Figure 1).  Consistent with MMs assumptions, the variability in depression scores increases as severity increases (see Figure 2). Both suggest greater plausibility for MMs than AMs.

In modeling depression development across time, multiplicative forms of fixed-effects, fixed-trend (Table 1a), random-intercept, and random-intercept/-slope models (Table 1b) all outperformed their additive counterpartsiii. The multiplicative random-intercept random-slope model best captured the development of depression over time. Depression development hinges upon individual levels: those with greater severity can show greater change; as time progresses, the rate of change can also increase. This differs from an additive relationship where a time-invariant change is assumed constant across individuals.iv MMs accentuate the room for improvement in individuals with high depression severity. Moreover, random-intercept and random-slope components highlight that individuals differ in baseline medianv and progress at distinct ratios. Altogether, the progression of depression differs across individuals by both random variability and individuals&#39; prior depression levels in a multiplicative fashion.

Using multilevel models to account for multiple measurement occasions, we report results from AMs and MMs focusing on using individual item to predict SOI (Table 2a and 2b).  This shows how the levels of one symptom can relate to the severity in other depressive symptoms. All items showed multiplicative patterns in predicting SOI, encouraging investigation of a multiplicative structure whereby other depression symptoms  individual symptom = depression. For example, those who endorse &quot;nearly every day&quot; of &quot;Trouble falling or staying asleep, or sleeping too much&quot; can show depression score 185% higher on other depressive symptoms than those who endorse &quot;Not at all&quot;. Unlike AMs, a ratio effect of 185% in MMs inherently emphasizes individual differences (e.g., for individuals with a baseline of 10, this means 8.5 increase and with a baseline of 5, this means only a 4.25 increase).

**Discussion**

We demonstrated methodological novelty and empirical utility in applying MMs to psychopathology research. The small sample size and the exploratory nature of the study demand future research efforts. Despite these limitations, the study sheds light on the strengths of using MMs to study psychopathology, with regard to both change over time and interconnections among symptoms. MMs more faithfully align with observed data than AMs. MMs offer intuitive interpretation of effects: MMs express effects in terms of ratios (e.g., while an additive effect of 3-point decrease on PHQ-9 loses interpretability to someone unfamiliar with the unit or the range of PHQ-9, a multiplicative effect of 80% is readily interpretable). MMs show greater appreciation of the complexity among symptom connections: the influence of one symptom can vary drastically based on severity of other symptoms. Furthermore, MMs allow methodological freedom, beyond the strict (and sometimes unrealistic) assumptions of AMs, to better depict the empirical observations of and to allow wider theoretical range for psychopathology. Future directions may include formalization of multiplicative measurement models. Altogether, the results of this study suggest that multiplicative models provide a conceptual and methodological stepping stone to better understanding psychopathology constructs and intervention effects.



References:

[1] D. Watson and A. Tellegen, &quot;Toward a consensual structure of mood.,&quot; _Psychol. Bull._, vol. 98, no. 2, pp. 219–235, 1985.

[2] L. L. Hawley _et al._, &quot;Cognitive-Behavioral Therapy for Depression Using Mind Over Mood: CBT Skill Use and Differential Symptom Alleviation,&quot; _Behav. Ther._, vol. 48, no. 1, pp. 29–44, Jan. 2017.

[3] S. Occhipinti, S. K. Chambers, S. Lepore, J. Aitken, and J. Dunn, &quot;A longitudinal study of post-traumatic growth and psychological distress in colorectal cancer survivors,&quot; _PLoS One_, vol. 10, no. 9, pp. 1–12, 2015.

[4] N. L. Kocovski, J. E. Fleming, L. L. Hawley, M.-H. R. Ho, and M. M. Antony, &quot;Mindfulness and acceptance-based group therapy and traditional cognitive behavioral group therapy for social anxiety disorder: Mechanisms of change,&quot; _Behav. Res. Ther._, vol. 70, pp. 11–22, Jul. 2015.

[5] H. Cramér, &quot;On the composition of elementary errors,&quot; _Scand. Actuar. J._, vol. 1928, no. 1, pp. 13–74, Jan. 1928.

[6] S. Tomitaka and T. A. Furukawa, &quot;Mathematical model for the distribution of major depressive episode durations,&quot; _BMC Res. Notes_, vol. 7, no. 1, p. 636, 2014.

[7] S. Tomitaka, Y. Kawasaki, K. Ide, H. Yamada, H. Miyake, and T. A. Furukaw, &quot;Distribution of Total Depressive Symptoms Scores and Each Depressive Symptom Item in a Sample of Japanese Employees,&quot; _PLoS One_, vol. 11, no. 1, p. e0147577, Jan. 2016.

[8] R. Gibrat, _Les Inégalités économiques_, 1st ed. Paris, France: Recueil Sirey, 1931.

[9] E. Limpert, W. A. Stahel, and M. Abbt, &quot;Log-normal Distributions across the Sciences: Keys and Clues,&quot; _Bioscience_, vol. 51, no. 5, p. 341, 2001.

[10] M. J. V. Fennell and J. D. Teasdale, &quot;Cognitive therapy for depression: Individual differences and the process of change,&quot; _Cognit. Ther. Res._, vol. 11, no. 2, pp. 253–271, Apr. 1987.

[11] Q. Liu and S. E. Maxwell, &quot;Multiplicative treatment effects in randomized pretest-posttest experimental designs.,&quot; _Psychol. Methods_, Jun. 2019.

[12] Open Science Collaboration, &quot;Estimating the reproducibility of psychological science,&quot; _Science (80-. )._, vol. 349, no. 6251, pp. aac4716–aac4716, Aug. 2015.

[13] J. L. Tackett, C. M. Brandes, K. M. King, and K. E. Markon, &quot;Psychology&#39;s Replication Crisis and Clinical Psychological Science,&quot; _Annu. Rev. Clin. Psychol._, vol. 15, no. 1, pp. 579–604, May 2019.

[14] H. Pashler and C. R. Harris, &quot;Is the Replicability Crisis Overblown? Three Arguments Examined,&quot; _Perspect. Psychol. Sci._, vol. 7, no. 6, pp. 531–536, Nov. 2012.

[15] P. Pilkonis, &quot;PROMIS 1 Wave 2 Depression.&quot; Harvard Dataverse.

[16] K. P. Burnham and D. R. Anderson, _Model Selection and Multimodel Inference: A Practical Information-Theoretic Approach_, 2nd Editio. New York: Springer-Verlag, 2002.

