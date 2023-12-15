<script src="https://cdn.tailwindcss.com"></script>
 <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            clifford: '#da373d',
          }
        }
      }
    }
  </script>
  
  <div class="container flex flex-row justify-center">
        <nav class="bg-gray-800 flex items-center gap-3 px-3 py-3 text-white rounded-2xl ">
            <div class="w-16 logo px-4 cursor-pointer">
                <img src="./public/images/me.jpg" class="rounded-3xl shadow-white-lg" alt="">
            </div>
            <ul class="flex flex-row items-center gap-2 p-2">
                <li>
                    <a href=""
                        class="px-3 py-2 hover:transparent text-white bg-gray-700 ease-in-out rounded-lg transition-all cursor-pointer">
                        Dashboard
                    </a>
                </li>
                <li>
                    <a href=""
                        class="px-3 py-2 hover:transparent hover:bg-gray-700 ease-in-out rounded-lg transition-all cursor-pointer">
                        Activity
                    </a>
                </li>
                <li>
                    <a href=""
                        class="px-3 py-2 hover:transparent hover:bg-gray-700 ease-in-out rounded-lg transition-all cursor-pointer">
                        Schedule
                    </a>
                </li>
                <li>
                    <a href=""
                        class="px-3 py-2 hover:transparent hover:bg-gray-700 ease-in-out rounded-lg transition-all cursor-pointer">
                        Integration
                    </a>
                </li>
                <li>
                    <a href=""
                        class="px-3 py-2 hover:transparent hover:bg-gray-700 ease-in-out rounded-lg transition-all cursor-pointer">
                        Setting
                    </a>
                </li>
            </ul>
            <div class=" logo px-4 cursor-pointer flex items-center gap-3">
                <input type="text"
                    class="placeholder:text-white bg-gray-700 focus-within:outline-none focus-within:ring-transparent rounded-md focus:outline-none"
                    placeholder="search">
                <button class="bg-blue-700 px-3 py-2 rounded-lg hover:bg-blue-800">Submit Report</button>
                <button class="bg-gray-700 px-3 py-2 rounded-lg  hover:-rotate-6">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
                    </svg>

                </button>
            </div>
        </nav>
    </div>
 <div class=" border-gray-400 h-auto w-64 rounded-sm sticky">
                    <div
                        class="tagsDiv flex flex-wrap gap-2 p-2 hover:shadow-lg transition-all ease-in-out bg-transparent rounded-md text-gray-700 border mt-2">
                        <div class="author">
                            <div class="img-div flex flex-row justify-center mt-2">
                                <img src="./public/images/me.jpg" class="w-16 rounded-full border" alt="">
                            </div>
                            <div class="author-name flex items-center justify-center text-end font-bold">
                                <p class="name px-2 mt-3">Robin</p>
                            </div>
                            <div class="description p-2 text-sm text-center">
                                Flowbite is an open-source library of UI components built with the utility-first
                            </div>
                            <div class="social flex justify-center gap-3 py-2">
                                <a href="">
                                    <img src="./public/images/github.png" class="w-10 border p-1 rounded-full" alt="">
                                </a>
                                <a href="">
                                    <img src="./public/images/youtube.png" class="w-10 border p-1 rounded-full" alt="">
                                </a>
                                <a href="">
                                    <img src="./public/images/twitter.png" class="w-10 border p-1 rounded-full" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
