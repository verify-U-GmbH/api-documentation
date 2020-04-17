<html>
<head>
    <link rel="stylesheet" href='<%= Routes.static_path(@conn, "/css/app.css") %>'/>
    <script>
        
        setTimeout(function() {
            document.getElementById("nav").classList.remove("hidden")
        }, 300)
    
    </script>
</head>
<body class="flex flex-col">
    <nav id="nav" class="z-50 flex hidden block w-full py-4 bg-white border-b bt-white">
      <a class="flex mx-4" href="/">
        <img class="w-24 ml-1" src="/img/verify_logo.png">
        <span class="mx-2 font-bold text-gray-700">API</span>
      </a>
      
      <a class="ml-4 font-semibold text-blue-600 hover:text-blue-700" href="/">
        Documentation
      </a>
    </nav>
    
    <div class="">
        <redoc spec-url='/docs/api/openapi.yaml'></redoc>
    </div>
<script src="/js/redoc.standalone.js">
</script>
</body>
</html>
