ad_page_contract {} {
  {path /}
}

ns_write {HTTP/1.0 200 OK
Pragma: no-cache
Cache-Control: no-cache
Content-Type: application/xml
MIME-Version: 1.0
Connection: close

}

ns_write {<?xml version="1.0"?>
}

proc rec path {
  set type [dotkul::get_node_type $path]
  if {$type == ""} {
    set type node
  }
  ns_write "<$type"
  set path_tail [lindex [split $path "/" ] end]
  ns_write " name=\"$path_tail\""
  foreach {property value} [dotkul::get_node_properties $path] {
    ns_write " $property=\"$value\""
  }
  ns_write ">\n"
  foreach child_path [dotkul::get_node_children $path] {
    rec $path/$child_path
  }
  ns_write "</$type>\n"
}


rec $path
