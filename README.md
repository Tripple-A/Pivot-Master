# PIVOT MASTER

## Perceived Errors
  These are only perceived errors and might not be errors after all.
* In the spec folder, file 00_track_pivots_spec.rb, the total_points method is indicated to sum the points that were pivoted, this sums up to 20, but the expected result is 13. The total sum of unique assignee pivots is 13, taking into consideration the last appearance of each assignee, this is the formula that has been employed to make this test pass, although, the wordings say otherwise. 

* In the same file as stated above, the item_for method is indicated to find 'the item' for an assignee. The word 'the' is more likely to mean one particular item, but considering the assignee possesses more than one item, the last occuring item has been returned.

* In 03_person_spec.rb, logger is not passed into the person.add_item call to enable the add_item function optionally log an item in the presence of a Logger instance. I presume it should be passed considering we want the logging to be optional