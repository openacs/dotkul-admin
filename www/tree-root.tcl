ad_page_contract {
    Pick root node
} {
    target
    {root "site-map"}
}

multirow create roots node url selected_p roots_url

foreach child [dotkul::get_node_children /] {
    multirow append roots $child "tree-view?path=/$child" \
	[string equal $child $root] \
	"tree-root?root=$child&target=$target"
}


