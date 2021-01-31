
# Task 2.3

# regarding the runtime? 
runtime becomes much longer

# number of cycles performed in contrast to the previous results from Task 2.2?
14 cycles vs 4 cycles
 1. water-project-cost-sharing=n physician-fee-freeze=y export-administration-act-south-africa=y 44 ==> crime=y 44    <conf:(1)> lift:(1.75) lev:(0.04) [18] conv:(18.91)
 2. water-project-cost-sharing=n physician-fee-freeze=y export-administration-act-south-africa=y 44 ==> Class=republican 44    <conf:(1)> lift:(2.59) lev:(0.06) [27] conv:(27.01)
 3. water-project-cost-sharing=y religious-groups-in-schools=n superfund-right-to-sue=n 44 ==> aid-to-nicaraguan-contras=y 44    <conf:(1)> lift:(1.8) lev:(0.04) [19] conv:(19.52)
 4. water-project-cost-sharing=y religious-groups-in-schools=n crime=n 44 ==> aid-to-nicaraguan-contras=y 44    <conf:(1)> lift:(1.8) lev:(0.04) [19] conv:(19.52)
 5. water-project-cost-sharing=y religious-groups-in-schools=n crime=n 44 ==> Class=democrat 44    <conf:(1)> lift:(1.63) lev:(0.04) [16] conv:(16.99)
 6. education-spending=y export-administration-act-south-africa=n Class=republican 44 ==> adoption-of-the-budget-resolution=n 44    <conf:(1)> lift:(2.54) lev:(0.06) [26] conv:(26.7)
 7. religious-groups-in-schools=n immigration=y crime=n 44 ==> physician-fee-freeze=n 44    <conf:(1)> lift:(1.76) lev:(0.04) [19] conv:(19.02)
 8. physician-fee-freeze=n religious-groups-in-schools=y superfund-right-to-sue=y 44 ==> Class=democrat 44    <conf:(1)> lift:(1.63) lev:(0.04) [16] conv:(16.99)
 9. education-spending=y duty-free-exports=n export-administration-act-south-africa=n 44 ==> physician-fee-freeze=y 44    <conf:(1)> lift:(2.46) lev:(0.06) [26] conv:(26.1)
10. education-spending=y export-administration-act-south-africa=n Class=republican 44 ==> physician-fee-freeze=y 44    <conf:(1)> lift:(2.46) lev:(0.06) [26] conv:(26.1)


#  Do you observe a difference regarding the runtime in contrast to the Apriori algorithm? Is it faster or slower? How many rules does it find in total?
Much faster
Minimum support: 0.1 (44 instances)
Minimum metric <confidence>: 0.9
Number of cycles performed: 18

FPGrowth found 40 rules (displaying top 10)

 1. [crime=y, immigration=y, el-salvador-aid=y, water-project-cost-sharing=y]: 44 ==> [religious-groups-in-schools=y]: 44   <conf:(1)> lift:(1.6) lev:(0.04) conv:(16.49) 
 2. [adoption-of-the-budget-resolution=y, mx-missile=y, water-project-cost-sharing=y, handicapped-infants=y]: 44 ==> [aid-to-nicaraguan-contras=y]: 44   <conf:(1)> lift:(1.8) lev:(0.04) conv:(19.52) 
 3. [export-administration-act-south-africa=y, crime=y, immigration=y, education-spending=y, Class=republican]: 44 ==> [physician-fee-freeze=y]: 44   <conf:(1)> lift:(2.46) lev:(0.06) conv:(26.1) 
 4. [export-administration-act-south-africa=y, immigration=y, el-salvador-aid=y, education-spending=y, Class=republican]: 44 ==> [physician-fee-freeze=y]: 44   <conf:(1)> lift:(2.46) lev:(0.06) conv:(26.1) 
 5. [immigration=y, el-salvador-aid=y, superfund-right-to-sue=y, water-project-cost-sharing=y]: 45 ==> [religious-groups-in-schools=y]: 44   <conf:(0.98)> lift:(1.56) lev:(0.04) conv:(8.43) 
 6. [export-administration-act-south-africa=y, immigration=y, education-spending=y, Class=republican]: 45 ==> [crime=y]: 44   <conf:(0.98)> lift:(1.72) lev:(0.04) conv:(9.67) 
 7. [export-administration-act-south-africa=y, immigration=y, education-spending=y, Class=republican]: 45 ==> [el-salvador-aid=y]: 44   <conf:(0.98)> lift:(2.01) lev:(0.05) conv:(11.53) 
 8. [religious-groups-in-schools=y, export-administration-act-south-africa=y, crime=y, immigration=y, education-spending=y]: 45 ==> [el-salvador-aid=y]: 44   <conf:(0.98)> lift:(2.01) lev:(0.05) conv:(11.53) 
 9. [religious-groups-in-schools=y, export-administration-act-south-africa=y, immigration=y, el-salvador-aid=y, education-spending=y]: 45 ==> [crime=y]: 44   <conf:(0.98)> lift:(1.72) lev:(0.04) conv:(9.67) 
10. [export-administration-act-south-africa=y, crime=y, immigration=y, physician-fee-freeze=y, education-spending=y]: 45 ==> [el-salvador-aid=y]: 44   <conf:(0.98)> lift:(2.01) lev:(0.05) conv:(11.53) 


# what do you observe? How many rules are found in total?
No rules found!

# Now play around with different parameter settings for metricType and the value for minMetric. You can also change the upperBoundMinSupport and lowerBoundMinSupport parameters if you want. Run at least three different settings of metricType and minMetric combinations. Do you observe any difference regarding runtime and the rules that are found?Do you observe any difference regarding runtime and the rules that are found?
lift higher , fewer rules, seems faster

# 3.3
What are the Precision, Recall and F-Measure values of the model? Are the results better or worse than with the J48 Tree?
J34 Tree, Time: 0.08
Precision  Recall   F-Measure
0.790      0.814    0.802

Random Tree, Time: 0.04
Precision  Recall   F-Measure
0.760      0.746    0.753


deoth = 5 
Precision  Recall   F-Measure
0.786      0.808    0.797

depth = 7 
Precision  Recall   F-Measure
0.780      0.808    0.794

Bayes
 Precision  Recall   F-Measure
 0.802      0.844    0.823
 
 Random Forest
 0.788      0.856    0.821
 
 Logisctic Regression
 0.793      0.880    0.834
 
 Ada boost
 0.779      0.846    0.811   
 
