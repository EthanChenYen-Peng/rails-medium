<script context="module">
  import Layout from "../../components/Layout/AuthLayout.svelte";
  export const layout = Layout;
</script>

<script>
  import { useForm } from "@inertiajs/inertia-svelte";

  let form = useForm({
    email: null,
    password: null,
    username: null,
  });

  function submit() {
    $form
      .transform((data) => ({
        user: { ...data },
      }))
      .post("/users");
  }
</script>

<div class="container flex h-full flex-col items-center justify-center">
  <h1 class="mb-[100px] font-serif text-4xl">Join Medium</h1>
  <form
    on:submit|preventDefault={submit}
    class="flex w-11/12 max-w-[400px] flex-col gap-3 rounded-sm bg-gray-100 px-7 py-6 font-serif "
  >
    <input
      type="username"
      bind:value={$form.username}
      name="username"
      id=""
      class="w-full px-2 py-1"
      placeholder="Username"
    />
    {#if $form.errors.username}
      <div class="text-red-400">{$form.errors.username}</div>
    {/if}
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
      class="bg-green-200 px-2 py-2 text-black transition-colors hover:bg-green-700 hover:text-white"
      >Sign Up</button
    >
  </form>
</div>
