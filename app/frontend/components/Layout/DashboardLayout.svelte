<script>
  import FaRegBell from "svelte-icons/fa/FaRegBell.svelte";
  import FaRegBookmark from "svelte-icons/fa/FaRegBookmark.svelte";
  import TiHomeOutline from "svelte-icons/ti/TiHomeOutline.svelte";
  import GoNote from "svelte-icons/go/GoNote.svelte";
  import FaMediumM from "svelte-icons/fa/FaMediumM.svelte";
  import TiPencil from "svelte-icons/ti/TiPencil.svelte";
</script>

<div class="h-full grid grid-cols-12">
  <aside
    class="col-span-1 flex flex-col items-center border-r-[1px] border-r-gray-300 px-5 py-16"
  >
    <div class="w-8 h-8">
      <FaMediumM />
    </div>
    <div class="my-16" />
    <div
      class="flex flex-col items-center pb-10 border-b-2 gap-10 border-b-gray-300"
    >
      <div class="w-8 h-8">
        <TiHomeOutline />
      </div>
      <div class="w-8 h-8">
        <FaRegBell />
      </div>
      <div class="w-8 h-8">
        <FaRegBookmark />
      </div>
      <div class="w-8 h-8">
        <GoNote />
      </div>
    </div>

    <div class="my-6" />
    <div class="w-8 h-8">
      <TiPencil />
    </div>
  </aside>
  <div class="px-5 py-16 col-span-8">
    <slot />
  </div>
  <aside class="col-span-3 border-l-[1px] border-l-gray-300 px-5 py-16">
    Search
  </aside>
</div>
