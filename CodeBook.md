<div id="code-book-for-getting-and-cleaning-data-course-project" class="section level1">
<h2>Code Book for Getting and Cleaning Data Course Project</h2>

<h3>Problem statement</h3>
<p>The purpose of this Course Project is to demonstrate student abilities to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. </p>

<h3>Raw data description</h3>

<p>The Human Activity Recognition database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. For purpose of Course Project data of time/frequency pre-processed sensor signals collected during experiment for 6 types of activities for 30 persons (splited randomly for generating training (70%) and test (30%) groups) were extracted. </p>
<p>Input files:</p>
<table border="1">
   <tr>
    <th><strong>Name in the given data set</strong></th>
    <th><strong>Data</strong></th>
    <th><strong>Description<strong></th>
   </tr>
   <tr><td>subject_train.txt</td><td>7352 obs. of 1 variable</td><td>Vector of persons in training set for each experiment observation </td></tr>
   <tr><td>X_train.txt</td><td>7352 obs. of 561 variable</td><td>Table of experimental observations of training group</td></tr>
   <tr><td>y_train.txt</td><td>7352 obs. of 1 variable</td><td>Vector of numeric codes of activities in training set for each experiment observation</td></tr>
   <tr><td>subject_test.txt</td><td>2947 obs. of 1 variable</td><td>Vector of persons in test set for each experiment observation </td></tr>
   <tr><td>X_test.txt</td><td>2947 obs. of 561 variable</td><td>Table of experimental observations of test group</td></tr>
   <tr><td>y_test.txt</td><td>2947 obs. of 1 variable</td><td>Vector of numeric codes of activities in training set for each experiment observation</td></tr>
   <tr><td>features.txt</td><td>561 obs. of 2 variable</td><td>Vector of names of time/frequency pre-processed sensor signals collected during experiment</td></tr>
   <tr><td>activity_labels.txt</td><td>6 obs. of 2 variables</td><td>Activity labels</td></tr>
  </table>
<hr></hr>
<h3>Steps of data tidying</h3>

<p>Loaded data are combined into data.frame using the following procedure: </p>
<ol>
 <li>vectors of subjects, activities and table of experimental observations for training and test data sets were bound by rows </li>
 <li>resulting data sets were bound by columns (cbind) in the “subject-activity-sensor_signals”-order into one data.frame with the first column contains an identifier of the subject who carried out the experiment, second column contains numeric codes of activities and the following 561 rows contain sensor signals data  </li>
 <li>resulting data.frame combined from the data of training and test experiment groups contains 10299 obs. of 563 variables</li>
</ol>

<p>According to the task, resulting data.frame was reduced to the 10299 obs. of 81 variables containing only the measurements with words "mean" and "std" in the column names.</p>

<p>Reduced data.frame set was normalized to "tidy data" by:</p>
<ul>
<li>columns were naming with the vector of sensor signals names</li>
<li>column with the subject was renaming to "subject"</li> 
<li>column with the activities was renaming to "activity" </li>
<li>numeric codes of activities in "activity"-column were renaming according to activity labels vector</li>
<li>column names normilizing by removing all dots and making all the names in one style (also known as CamelCase - see http://en.wikipedia.org/wiki/CamelCase) - first symbol in lower case, every following meaningful parts capitalized</li>
</ul>

<p><italic>Note:</italic></p>
<ul>
<li>columns names left with some capitalized symbols and wasn't expanded to  full names (using gsub and vector of appropriate replacements for each short name) just to keep readability.</li>
</ul>
<hr></hr>
<h3>Course Project result</h3>
<p>Normilized data.frame was summarized by each pair of subject/activity with calculating an averages for sensor signals time/frequency measurements and contains 180 obs. of 81 variables.</p>
<hr></hr>
