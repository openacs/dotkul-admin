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
