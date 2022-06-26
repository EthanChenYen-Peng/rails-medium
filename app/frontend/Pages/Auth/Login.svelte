<script>
  import { useForm, page } from "@inertiajs/inertia-svelte";
  let form = useForm({
    email: null,
    password: null,
  });

  function submit() {
    $form
      .transform((data) => ({
        user: { ...data },
      }))
      .post("/users/sign_in");
  }
</script>

<div class="container flex flex-col items-center justify-center h-full">
  <h1 class="mb-[100px] font-serif text-4xl">Sign In</h1>
  <form
    on:submit|preventDefault={submit}
    class="flex w-11/12 max-w-[400px] flex-col gap-3 rounded-sm bg-gray-100 px-7 py-6 font-serif "
  >
    <input
      type="email"
      bind:value={$form.email}
      name="email"
      id=""
      class="w-full px-2 py-1"
      placeholder="Eamil"
    />
    {#if $form.errors.email}
      <div class="text-red-400">{$form.errors.email}</div>
    {/if}
    <input
      type="password"
      bind:value={$form.password}
      name="email"
      id=""
      class="w-full px-2 py-1"
      placeholder="Password"
    />
    {#if $form.errors.password}
      <div class="text-red-400">{$form.errors.password}</div>
    {/if}
    <button
      class="px-2 py-2 text-black bg-green-200 transition-colors hover:bg-green-700 hover:text-white"
    >Sign In</button
    >
  </form>

  {#if $page.props.flash.alert}
    <div class="text-red-500 ">{$page.props.flash.alert}</div>
  {/if}
</div>
