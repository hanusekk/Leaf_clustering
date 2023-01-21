# Leaf_clustering
Clusterization of leaves, scanned and processed in Matlab. The result is a representation of coefficients based on leaf features presented in three-dimensional space. 

# Introdution 

The goal of the project task is to quantitatively describe the shape of the leaves of three different tree species. For this purpose, ten leaves each were collected from cherry trees, a maple tree and a shrub (whose name is unknown to me). To work on the leaves in digital form, a scanner was used. Each leaf was scanned in grayscale. Sample images are shown in the Figure below. The environment used to describe the shape is Matlab version R2020b. The result of this project is to be a three-dimensional space, representing points corresponding to leaves in three different clusters.
Quantitative description is a research method by which an object can be described using its characteristics characteristics such as edge length, surface area, maximum diameters of the object vertically and
horizontal, center of gravity. With the help of such characteristics, basic aspect ratios can be determined.

![Liście](https://user-images.githubusercontent.com/92868145/213872348-75c24bfb-d091-4558-b852-864628a930e3.png)

# Code Implementation

Features such as area, perimeter, maximum diameter vertically and horizontally, and maximum dimension were determined. 

3 formulas were used such as
  * Compactness
        $W1=\frac{4 \cdot \pi \cdot S}{L^2}$ 
        where: S - area of the object, L- object perimeter

  * Feret Ratio
        $W10=\frac{L_h}{L_v} $
        where: $L_h$ - maximum horizontal diameter of the object, $L_v$-maximum vertical diameter of the object
        
  * Lp2 Ratio
        $W8=\frac{L_{max}}{L}$
        where: $L_{max}$ - Maximum size of the object, L- object perimeter
        
The given formulas were implemented in the Matlab environment, the results were saved as a vector of ten leaves. From Workspace, the coefficients were saved in a file with the extension .mat.

# Results

Scatter3 was used to represent the results. The loaded files with coefficients were presented in three-dimensional space. 

![scat5](https://user-images.githubusercontent.com/92868145/213873349-3d42b9c7-5776-4956-83ad-d8da54b3ed0b.png)

Analyzing the results obtained, it is clear that the 3 leaf species studied form their own clusters in the
three-dimensional space, very different from each other. Thus, when examining another unknown
leaf can be easily determined whether it belongs to any of these three species, by means of comparing the
distances from the centers of the clusters. To do this, the cluster center must be determined. The means were determined using the function
mean, then plotted on a three-dimensional space in the form *.


        
        
