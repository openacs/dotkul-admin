ad_page_contract {
    Metadata browser
} {
    {path /}
}

if { ![string equal [string index $path end] /] } {
    append path /
}

multirow create properties key property_type value 

set node_path [string range $path 0 end-1]

set node_type [dotkul::get_node_type $node_path]

set root_node [lindex [split $node_path /] end]

if { [empty_string_p $root_node] } {
    set root_node "Root"
}

set root_src_url "children?path=$node_path"

