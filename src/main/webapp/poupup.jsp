<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 05/04/23
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<! DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0")>
        <title>Document</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    #modal{
      display: block;
    }
  </style>
</head>

<body class="bg-gray-200 flex flex-col items-center justify-center">
    <h1>Creare una Modal</h1>
    <button id="open-modal" class="p-3 m-3 bg-blue-300 rounded-md text-white">
      Apri Modal
    </button>
  <div id="modal" class="w-[500px] h-[500px] bg-white rounded-x1 p-3 hidden">
    <button id="close-modal" class="float-right">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
      </svg>
    </button>
  </div>


<script>
  const openModalBtn = document. getElementById ("open-modal");
  const closeModalBtn = document. getElementById ("close-modal");
  const modal = document.getElementById("modal");


  openModalBtn.addEventListener("click", openModal);
  closeModalBtn.addEventListener("click", closeModal);

  function openModal ( ) {
    console.log("apro modal");
  }

  function closeModal ( ) {
    console.log("chiudo modal");
  }
</script>

</body>

</html>