#Using KMeans Clustering

import numpy as np
from sklearn.cluster import KMeans
import warnings
warnings.filterwarnings('ignore')

# Step 1: Collect data on network speeds/bandwidths of all users
# Array of network speeds/bandwidths

print('Enter the Bandwidths')
arr=list(map(int,input().split()))
arr.sort()
speeds=np.array(arr)

# Step 2: Initialize number of clusters

min_transfers = 1  # Minimum number of transfers sender can handle
max_transfers = 4  # Maximum number of transfers sender can handle (Based on Cloud Service Provider's RAM Specs)
k = min(max(len(speeds) // max_transfers, 1), len(speeds) // min_transfers)  # Compute number of clusters
print('K Value is: ',k)

# Steps 3-4: Normalize and cluster data

X = (speeds - np.mean(speeds)) / np.std(speeds)  # Normalize data
'''print('\n\nNormalized Cluster:')
print(X)
print('X Reshapes:\n',X.reshape(-1, 1))'''

kmeans = KMeans(n_clusters=k).fit(X.reshape(-1, 1))  # Apply KMeans clustering

# Step 5: Assign users to nearest cluster

labels = kmeans.predict(X.reshape(-1, 1))  # Assign labels to each data point

#Sorting the Labels
labels=np.sort(labels)

#Printing the Clusters and the Bandwidths

print('\nThe Clusters (Using KMeans Clustering)!\n')
for i in range(len(arr)):
    print(f"{arr[i]}\t\tGroup: {labels[i]}")

# Step 6: Calculate average network speed/bandwidth for each cluster

cluster_speeds = np.zeros(k)
for i in range(k):
    cluster_speeds[i] = np.mean(X[labels == i] * np.std(speeds) + np.mean(speeds))
    
print('\n\n\nCluster Speeds:\n',cluster_speeds)



#Note that the total number of clusters is inversily proportional to the Maximum Transfers Allowed.
#More the transfers tolerated by the device, the lesser grouping of data will be present