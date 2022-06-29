<script context='module'>
  import Layout from '../../components/Layout/PostLayout.svelte'
  export const layout = Layout
</script>

<script>
  import { Link } from '@inertiajs/inertia-svelte'
  import FaMediumM from "svelte-icons/fa/FaMediumM.svelte";
  import "trix"
  import "@rails/actiontext"

  export let avatar
</script>

<nav class="flex justify-between px-10 py-5">
  <div class="w-8 h-8">
    <Link href='/'>
      <FaMediumM />
    </Link>
  </div>

    <div >

  <div class="mt-auto h-14 w-14">
    <Link href="/me/settings">
      <img
        src={avatar}
        class="object-cover w-full h-full rounded-full"
        alt="avatar"
      />
    </Link>
  </div>
    </div>
</nav>
<div class="w-10/12 py-16 mx-auto md:w-8/12">
<input type="text" placeholder="Title" class="my-10 font-serif text-3xl md:text-4xl focus:outline-none"/>
<trix-editor></trix-editor>
</div>
