<script>
  import FaMediumM from 'svelte-icons/fa/FaMediumM.svelte'
  import MdSearch from 'svelte-icons/md/MdSearch.svelte'
  import FaRegBell from 'svelte-icons/fa/FaRegBell.svelte'
  import FaRegBookmark from 'svelte-icons/fa/FaRegBookmark.svelte'
</script>
<nav class="flex items-center px-20 py-8 shadow-lg">
  <div class="w-8 h-8">
    <FaMediumM />
  </div>
  <ul class="flex ml-auto gap-10">
    <li class="w-8 h-8 text-gray-400">
      <MdSearch/>
    </li>
    <li class="w-6 h-6 text-gray-400">
      <FaRegBookmark/>
    </li>
    <li class="w-6 h-6 text-gray-400">
      <FaRegBell/>
    </li>
  </ul>
</nav>

<slot></slot>
