ad_page_contract {
    Metadata browser
} {
    {path /}
}

if { ![string equal [string index $path end] /] } {
    append path /
}

set document {<?xml version="1.0"?>}
append document \n {<tree>}

foreach child [lsort [dotkul::get_node_children $path]] {
    set child_path $path$child

    set label $child
    set node_type [dotkul::get_node_type $child_path]
    if { ![empty_string_p $node_type] } {
        append label " ($node_type)"
    }
    set action_url ".?path=$child_path"
    set src_url "children?path=$child_path"

    append document "  <tree text=\"[ad_quotehtml $label]\" action=\"$action_url\" "

    if { [llength [dotkul::get_node_children $child_path]] > 0  } {
        append document "src=\"$src_url\" "
    }

    append document "/>" \n
}

append document </tree>

ns_return 200 text/xml $document
