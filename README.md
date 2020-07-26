# PIVOT MASTER

## Perceived Errors
  These are only perceived errors and might not be errors after all.
* In the spec folder, file 00_track_pivots_spec.rb, the total_points method is indicated to sum the points that were pivoted, this sums up to 20, but the expected result is 13. The total sum of unique assignee pivots is 13, taking into consideration the last appearance of each assignee, this is the formula that has been employed to make this test pass, although, the wordings say otherwise. 