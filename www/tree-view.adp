<master src="/www/blank-master">
  <property name="header_stuff">
    <script type="text/javascript" src="/resources/dotkul-admin/xloadtree/xtree.js"></script>
    <script type="text/javascript" src="/resources/dotkul-admin/xloadtree/xmlextras.js"></script>
    <script type="text/javascript" src="/resources/dotkul-admin/xloadtree/xloadtree.js"></script>
    <link type="text/css" rel="stylesheet" href="/resources/dotkul-admin/xloadtree/xtree.css" />
  </property>

<div id="node-type">
  <script type="text/javascript">
    /// XP Look
    webFXTreeConfig.rootIcon		= "/resources/dotkul-admin/xloadtree/images/xp/folder.png";
    webFXTreeConfig.openRootIcon	= "/resources/dotkul-admin/xloadtree/images/xp/openfolder.png";
    webFXTreeConfig.folderIcon		= "/resources/dotkul-admin/xloadtree/images/xp/folder.png";
    webFXTreeConfig.openFolderIcon	= "/resources/dotkul-admin/xloadtree/images/xp/openfolder.png";
    webFXTreeConfig.fileIcon		= "/resources/dotkul-admin/xloadtree/images/xp/file.png";
    webFXTreeConfig.lMinusIcon		= "/resources/dotkul-admin/xloadtree/images/xp/Lminus.png";
    webFXTreeConfig.lPlusIcon		= "/resources/dotkul-admin/xloadtree/images/xp/Lplus.png";
    webFXTreeConfig.tMinusIcon		= "/resources/dotkul-admin/xloadtree/images/xp/Tminus.png";
    webFXTreeConfig.tPlusIcon		= "/resources/dotkul-admin/xloadtree/images/xp/Tplus.png";
    webFXTreeConfig.iIcon			= "/resources/dotkul-admin/xloadtree/images/xp/I.png";
    webFXTreeConfig.lIcon			= "/resources/dotkul-admin/xloadtree/images/xp/L.png";
    webFXTreeConfig.tIcon			= "/resources/dotkul-admin/xloadtree/images/xp/T.png";
    webFXTreeConfig.blankIcon		= "/resources/dotkul-admin/xloadtree/images/blank.png";

    var tree = new WebFXLoadTree("@root_node@", "@root_src_url@");

    document.write(tree);
  </script>
</div>
