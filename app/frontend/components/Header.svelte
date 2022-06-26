<script>
  import { Link } from "@inertiajs/inertia-svelte";
  let y;

  $: changeColor = y > 300;
</script>

<nav
  class="sticky top-0 flex items-center border-b-[1px] border-b-black px-10 py-7  transition-colors duration-500 {changeColor
    ? 'bg-white'
    : 'bg-amber-400'}"
>
  <span>Logo</span>
  <ul class="flex items-center ml-auto gap-4">
    <li>
      <Link href='/users/sign_in'>Sign In</Link>
    </li>
    <li
      class="rounded-3xl px-4 py-2  text-white transition-colors duration-500  {changeColor
        ? 'bg-green-600'
        : 'bg-black'}"
    >
      <Link href="/users/sign_up">Get Started</Link>
    </li>
  </ul>
</nav>
<svelte:window bind:scrollY={y} />
