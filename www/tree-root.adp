<html>
  <head>
  <title>Root Nodes</title>
  <style type="text/css">
    .root-selector {
    }
    .root-selector a {
      font-weight: bold;
      border: 1px solid white;
      background-color: white;
      color: black;
      text-decoration: none;
      padding-left: 4px;
      padding-right: 4px;
    }
    .root-selector a:hover {
      border: 1px solid black;
      background-color: #ddd;
    }
    .popup-menu {
      position: absolute;
      background-color: #cfcfcf;
      border-style: solid;
      border-width: 1px;
      border-color: #efefef #505050 #505050 #efefef;
      visibility: hidden;
    }
  </style>
  </head>
  <body>

    <div onclick="" class="root-selector">
      <a href="#">@root@</a>
    </div>
    
    <ul>
      <multiple name="roots">
        <li><a href="@roots.url@" target="@target@" onclick="javascript:window.location='@roots.roots_url@'">@roots.node@</a></li>
      </multiple>
    </ul>

  </body>
</html>
