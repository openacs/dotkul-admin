multirow create md key value
foreach key [lsort [nsv_array names acs_metadata]] {
  multirow append md $key [nsv_get acs_metadata $key]
}
