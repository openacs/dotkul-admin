<master>  
  <property name="title">Metadata - @path@</property>
  <property name="header_stuff">
    <style>
      #node-tree {
	margin: 0;
	padding: 0 50px 0px 0;
	text-align: left;
	float: left;
	width: 350px;
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

    <script type="text/javascript" src="resources/xloadtree/xtree.js"></script>
    <script type="text/javascript" src="resources/xloadtree/xmlextras.js"></script>
    <script type="text/javascript" src="resources/xloadtree/xloadtree.js"></script>
    <link type="text/css" rel="stylesheet" href="resources/xloadtree/xtree.css" />
  </property>
  

<div id="node-tree">
  <h2>Tree</h2>
    <script type="text/javascript">
      /// XP Look
      webFXTreeConfig.rootIcon       = "resources/xloadtree/images/xp/folder.png";
      webFXTreeConfig.openRootIcon   = "resources/xloadtree/images/xp/openfolder.png";
      webFXTreeConfig.folderIcon     = "resources/xloadtree/images/xp/folder.png";
      webFXTreeConfig.openFolderIcon = "resources/xloadtree/images/xp/openfolder.png";
      webFXTreeConfig.fileIcon       = "resources/xloadtree/images/xp/file.png";
      webFXTreeConfig.lMinusIcon     = "resources/xloadtree/images/xp/Lminus.png";
      webFXTreeConfig.lPlusIcon      = "resources/xloadtree/images/xp/Lplus.png";
      webFXTreeConfig.tMinusIcon     = "resources/xloadtree/images/xp/Tminus.png";
      webFXTreeConfig.tPlusIcon      = "resources/xloadtree/images/xp/Tplus.png";
      webFXTreeConfig.iIcon          = "resources/xloadtree/images/xp/I.png";
      webFXTreeConfig.lIcon          = "resources/xloadtree/images/xp/L.png";
      webFXTreeConfig.tIcon          = "resources/xloadtree/images/xp/T.png";

      //var tree = new WebFXLoadTree("WebFXLoadTree", "tree1.xml");
      //tree.setBehavior("classic");

      var tree = new WebFXTree("Root");

      tree.add(new WebFXLoadTreeItem("Root II", "children?path=/"));

      document.write(tree);
    </script>
</div>

<div id="node-properties">
  <h2>Properties</h2>
  <h3>Type: @node_type@</h3>
  <listtemplate name="properties"></listtemplate>
</div>
