<master>  
  <property name="title">Metadata - @path@</property>
  <property name="header_stuff">
    <style>
      #node-tree {
	margin: 0;
	padding: 0 50px 0px 0;
	text-align: left;
	float: left;
	width: 250px;
        font-size: 85%;
      }
      #node-tree ul {
        padding: 4px;
        padding-left: 16px;
      }
      #node-tree li {
        list-style: circle;
      }
      #node-tree .type {
        font-size: 75%;
        color: grey;
      }     
      #node-tree .here {
        background-color: blue;
        color: white;
      }
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

<div id="node-tree">
  <h2>Tree</h2>
  <pre><multiple name="nodes">@nodes.indent@ <a href="@nodes.url@">@nodes.label@</a> (@nodes.type@)
  </multiple>
</div>

<div id="node-properties">
  <h2>Properties</h2>
  <h3>Type: @node_type@</h3>
  <listtemplate name="properties"></listtemplate>
</div>
