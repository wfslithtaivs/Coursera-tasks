<div id="code-book-for-getting-and-cleaning-data-course-project" class="section level1">
<h2>Code Book for Getting and Cleaning Data Course Project</h2>
<p>Input data from given UCI HAR Dataset:</p>

<table border="1">
   <tr>
    <th><strong>Name in the given data set</strong></th>
    <th><strong>Data</strong></th>
    <th><strong>Script name</strong></th>
   </tr>
   <tr><td>subject_train.txt</td><td>7352 obs. of 1 variable</td><td>subject_train </td></tr>
   <tr><td>X_train.txt</td><td>7352 obs. of 561 variable</td><td>X_train</td></tr>
   <tr><td>y_train.txt</td><td>7352 obs. of 1 variable</td><td>y_train</td></tr>
   <tr><td>subject_test.txt</td><td>2947 obs. of 1 variable</td><td>subject_test</td></tr>
   <tr><td>X_test.txt</td><td>2947 obs. of 561 variable</td><td>X_test</td></tr>
   <tr><td>y_test.txt</td><td>2947 obs. of 1 variable</td><td>y_test</td></tr>
   <tr><td>features.txt</td><td>561 obs. of 2 variable</td><td>features</td></tr>
   <tr><td>activity_labels.txt</td><td>6 obs. of 2 variables</td><td>labels</td></tr>
  </table>
<hr></hr>
<p>Loaded data combined into data set mData with following structure: </p>
<ul>
 <li>subject_train binded by rows with subject_test, the same done with y_train/y_test, X_train/X_test</li>
 <li>resulted data.frames binded by columns in the “subject, y, X” order</li>
 <li>resulted data.frame named with the “label” vector, “subject” &lt;- subject, “activity” &lt;- y </li>
 <li>mData (data.frame) 10299 obs. of 563 variables (561 obs. from training data + subject + activity)</li>
</ul>


<p>According to the task, mData was reduced to the 10299 obs. of 81 variables contained only the measurements with words "mean" and "std" in the columns names.</p>


<p>Reduced mData set was normalized to "tidy data" by:</p>
<ul>
<li>adding activity names from "labels"</li>
<li>normalizing columns names by removing all dots and making all the names in one style - first symbol in lower case, every following meaningful part capitalized</li>
</ul>

<p>Notes:</p>
<ul>
<li>activity names didn’t updated to lower case and removing underscore because it is data and shouldn’t been changed during tidying</li>
<li>columns names left with some capitalized symbols just to keep readability</li>
</ul>
<hr></hr>
<p>Resulted tidy data set “averageData” provides average time and frequency measurements for every activity for every subject and contains 180 obs. of 81 variables.</p>

<p>Resulted tidy data has:</p>
<ul>
<li>Each variable in a column.</li>
<li>Each observation in a row.</li>
<li>Each type of observational unit forms a table.</li>
</ul>
