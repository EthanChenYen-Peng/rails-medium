<script>
  let y;

  $: changeColor = y > 300;
</script>

<nav
  class="sticky top-0 flex items-center border-b-[1px] border-b-black px-10 py-7  transition-colors duration-500 {changeColor
    ? 'bg-white'
    : 'bg-amber-400'}"
>
  <span>Logo</span>
  <ul class="ml-auto flex items-center gap-4">
    <li>Signin</li>
    <li
      class="rounded-3xl px-4 py-2  text-white transition-colors duration-500  {changeColor
        ? 'bg-green-600'
        : 'bg-black'}"
    >
      Get Started
    </li>
  </ul>
</nav>
<svelte:window bind:scrollY={y} />
