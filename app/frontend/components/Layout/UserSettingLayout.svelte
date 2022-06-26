<script>
  import FaMediumM from "svelte-icons/fa/FaMediumM.svelte";
  import MdSearch from "svelte-icons/md/MdSearch.svelte";
  import FaRegBell from "svelte-icons/fa/FaRegBell.svelte";
  import FaRegBookmark from "svelte-icons/fa/FaRegBookmark.svelte";
</script>

<nav class="flex items-center px-20 py-8 shadow-lg">
  <div class="h-8 w-8">
    <FaMediumM />
  </div>
  <ul class="ml-auto flex gap-10">
    <li class="h-8 w-8 text-gray-400">
      <MdSearch />
    </li>
    <li class="h-6 w-6 text-gray-400">
      <FaRegBookmark />
    </li>
    <li class="h-6 w-6 text-gray-400">
      <FaRegBell />
    </li>
  </ul>
</nav>

<slot />
