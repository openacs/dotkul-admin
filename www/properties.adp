<master src="/www/blank-master">  
  <property name="title">Metadata - @path@</property>
  <property name="header_stuff">
    <style>
      #node-properties {
	margin: 0;
	padding: 0 0 0 20px;
	border-left: 1px dotted #dcdcdc;
	text-align: left;
	float: left;
	width: 350px;
      }
    </style>
  </property>
  
<div id="node-properties">
  <h2>@node_name@ <if @node_type@ not nil><em>(@node_type@)</em></if></h2>
  <listtemplate name="properties"></listtemplate>
</div>
