---
title: Data_2020
displaytext: Data 2020
layout:  col-sidebar
tab: true
order: 4
tags: top10
---

# OWASP Top 10 2020 Data Analysis Plan

## Goals
To collect the most comprehensive dataset related to identified application vulnerabilities to-date to enable analysis for the Top 10 and other future research as well. This data should come from a variety of sources; security vendors and consultancies, bug bounties, along with company/organizational contributions. Data will be normalized to allow for level comparison between Human assisted Tooling and Tooling assisted Humans.

<br/>

## Analysis Infrastructure 
Plan to leverage the OWASP Azure Cloud Infrastructure to collect, analyze, and store the data contributed. 

<br/>

## Contributions
We plan to support both known and pseudo-anonymous contributions. The preference is for contributions to be known; this immensely helps with the validation/quality/confidence of the data submitted. If the submitter prefers to have their data stored anonymously and even go as far as submitting the data anonymously, then it will have to be classified as "unverified" vs. "verified".

### Verified Data Contribution
Scenario 1: The submitter is known and has agreed to be identified as a contributing party.<br/>
Scenario 2: The submitter is known but would rather not be publicly identified.<br/>
Scenario 3: The submitter is known but does not want it recorded in the dataset.<br/>

### Unverified Data Contribution
Scenario 4: The submitter is anonymous.  (Should we support?)

The analysis of the data will be conducted with a careful distinction when the unverified data is part of the dataset that was analyzed.

<br/>

## Contribution Process
There are a few ways that data can be contributed:
1.	Email a CSV/Excel file with the dataset(s) to brian.glas@owasp.org
2.	Upload a CSV/Excel file to a "contribution folder" (coming soon)

Template examples can be found in GitHub: [https://github.com/OWASP/Top10/tree/master/2021/Data](https://github.com/OWASP/Top10/tree/master/2021/Data)

<br/>

## Contribution Period
We plan to accept contributions to the new Top 10 from May to Nov 30, 2020 for data dating from 2017 to current.

<br/>

## Data Structure
The following data elements are **required** or optional. <br/>
The more information provided the more accurate our analysis can be.<br/>
At a bare minimum, we need the time period, total number of applications tested in the dataset, and the list of CWEs and counts of how many applications contained that CWE.<br/>
If at all possible, please provide the additional metadata, because that will greatly help us gain more insights into the current state of testing and vulnerabilities.<br/>


### Metadata
* Contributor Name (org or anon)<br/>
* Contributor Contact Email<br/>
* **Time period (2019, 2018, 2017)**<br/>
* **Number of applications tested**<br/>
* Type of testing (TaH, HaT, Tools)<br/>
* Primary Language (code)<br/>
* Geographic Region (Global, North America, EU, Asia, other)<br/>
* Primary Industry (Multiple, Financial, Industrial, Software, ??)<br/>
* Whether or not data contains retests or the same applications multiple times (T/F)<br/>

### CWE Data
* **A list of CWEs w/ count of applications found to contain that CWE**<br/>

_If at all possible, please provide core CWEs in the data, not CWE categories._<br/>
_This will help with the analysis, any normalization/aggregation done as a part of this analysis will be well documented._


#### Note:
If a contributor has two types of datasets, one from HaT and one from TaH sources, then it is recommended to submit them as two separate datasets.<br/>
*HaT = Human assisted Tools (higher volume/frequency, primarily from tooling)*<br/>
*TaH = Tool assisted Human (lower volume/frequency, primarily from human testing)*<br/>

<br/>

## Survey
Similarly to the Top Ten 2017, we plan to conduct a survey to identify up to two categories of the Top Ten that the community believes are important, but may not be reflected in the data yet. We plan to conduct the survey in May or June 2020, and will be utilizing Google forms in a similar manner as last time. The CWEs on the survey will come from current trending findings, CWEs that are outside the Top Ten in data, and other potential sources.


<br/>

## Process
At a high level, we plan to perform a level of data normalization; however, we will keep a version of the raw data contributed for future analysis. We will analyze the CWE distribution of the datasets and potentially reclassify some CWEs to consolidate them into larger buckets. We will carefully document all normalization actions taken so it is clear what has been done.

We plan to calculate likelihood following the model we developed in 2017 to determine incidence rate instead of frequency to rate how likely a given app may contain at least one instance of a CWE. This means we aren't looking for the frequency rate (number of findings) in an app, rather, we are looking for the number of applications that had one or more instances of a CWE. We can calculate the incidence rate based on the total number of applications tested in the dataset compared to how many applications each CWE was found in.

In addition, we will be developing base CWSS scores for the top 20-30 CWEs and include potential impact into the Top 10 weighting.

Also, would like to explore additional insights that could be gleaned from the contributed dataset to see what else can be learned that could be of use to the security and development communities.
