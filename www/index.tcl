ad_page_contract {
    Metadata browser
} {
    {path /}
}

if { ![string equal [string index $path end] /] } {
    append path /
}

set page "<h1>$path</h1>"

# path is /foo/bar/baz/ 
set pathv [split $path /]
# pathv = { {} foo bar blah.xyz }
set pathc [llength $pathv]
# pathc = 4

set children [dotkul::get_metadata $path]

multirow create nodes level label url type selected_p indent

multirow append nodes 0 "Root" [ad_conn url]?path=/ "root" \
  [string equal / $path] ""

set root /
for { set i 1 } { $i < $pathc - 1 } { incr i } {
    append root [lindex $pathv $i]
    multirow append nodes $i [lindex $pathv $i] [ad_conn url]?path=$root \
      [dotkul::get_metadata $root.type] [string equal $root/ $path] \
      [string repeat " " $i]
    append root /
}

# Unfinished hack to show siblings if there are no children

if { [llength $children] == 0 } {
    set children [dotkul::get_metadata $path]
} else {
    incr i
}

foreach child [lsort $children] {
    multirow append nodes $i $child [ad_conn url]?path=$path$child \
      [dotkul::get_metadata $path$child.type] 0 [string repeat " " $i]
}

multirow create properties key property_type value 

set node_path [string range $path 0 end-1]

set node_type [dotkul::get_node_type $node_path]

foreach { property value } [dotkul::get_node_properties $node_path] {
    set property_type [dotkul::get_property_type $node_type $property]

    switch $property_type {
        metadata_reference_list {
            set org_value $value
            set value {}
            foreach elm $org_value {
                append value "<a href=\"[ad_conn url]?path=$elm\">$elm</a> "
            }
        }
        metadata_reference {
            set value "<a href=\"[ad_conn url]?path=$value\">$value</a> "
        }
    }

    multirow append properties $property $property_type $value
}

template::list::create \
    -name properties \
    -elements {
        key {
            label "Property"
        }
        property_type {
            label "Type"
        }
        value {
            label "Value"
            display_template {@properties.value;noquote@}
        }
    }
