<script>
  import FaRegBell from "svelte-icons/fa/FaRegBell.svelte";
  import FaRegBookmark from "svelte-icons/fa/FaRegBookmark.svelte";
  import TiHomeOutline from "svelte-icons/ti/TiHomeOutline.svelte";
  import GoNote from "svelte-icons/go/GoNote.svelte";
  import FaMediumM from "svelte-icons/fa/FaMediumM.svelte";
  import TiPencil from "svelte-icons/ti/TiPencil.svelte";
  import { Link } from "@inertiajs/inertia-svelte";

  export let avatar;
</script>

<div class="grid h-full grid-cols-12">
  <aside
    class="col-span-2 flex flex-col items-center border-r-[1px] border-r-gray-300 px-5 py-16 md:col-span-1"
  >
    <div class="h-8 w-8">
      <FaMediumM />
    </div>
    <div class="my-16" />
    <div
      class="flex flex-col items-center gap-10 border-b-2 border-b-gray-300 pb-10"
    >
      <div class="h-8 w-8">
        <TiHomeOutline />
      </div>
      <div class="h-8 w-8">
        <FaRegBell />
      </div>
      <div class="h-8 w-8">
        <FaRegBookmark />
      </div>
      <div class="h-8 w-8">
        <GoNote />
      </div>
    </div>

    <div class="my-6" />
    <div class="h-8 w-8">
      <Link href="/posts/new">
        <TiPencil />
      </Link>
    </div>
    <div class="mt-auto h-14 w-14">
      <Link href="/me/settings">
        <img
          src={avatar}
          class="h-full w-full rounded-full object-cover"
          alt="avatar"
        />
      </Link>
    </div>
  </aside>
  <div class="col-span-8 px-5 py-16">
    <slot />
  </div>
  <aside
    class="hidden border-l-[1px] border-l-gray-300 px-5 py-16 md:col-span-3 md:block"
  >
    Search
  </aside>
</div>
