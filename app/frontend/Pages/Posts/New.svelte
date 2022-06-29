<script context="module">
  import Layout from "../../components/Layout/PostLayout.svelte";
  export const layout = Layout;
</script>

<script>
  import { Link, useForm } from "@inertiajs/inertia-svelte";
  import FaMediumM from "svelte-icons/fa/FaMediumM.svelte";
  import "trix";
  import "@rails/actiontext";

  export let avatar;

  let contentRef;
  let form = useForm({
    title: null,
    content: null,
  });

  function submit() {
    $form
      .transform((data) => ({
        post: { ...data, content: contentRef?.value },
      }))
      .post("/posts");
  }
</script>

<nav class="flex justify-between px-10 py-5">
  <div class="h-8 w-8">
    <Link href="/">
      <FaMediumM />
    </Link>
  </div>

  <div>
    <div class=" h-14 w-14">
      <Link href="/me/settings">
        <img
          src={avatar}
          class="h-full w-full rounded-full object-cover"
          alt="avatar"
        />
      </Link>
    </div>
  </div>
</nav>
<div class="mx-auto w-10/12 py-16 md:w-8/12">
  <form on:submit|preventDefault={submit}>
    <div class="flex justify-end">
      <button
        class="rounded-2xl bg-green-600 py-4 px-5 text-white"
        type="submit">Publish</button
      >
    </div>
    <input
      type="text"
      placeholder="Title"
      class="my-10 font-serif text-3xl focus:outline-none md:text-4xl"
      bind:value={$form.title}
    />
    {#if $form.errors.title}
      <div class="text-red-400">{$form.errors.title}</div>
    {/if}
    <input id="content" type="hidden" name="content" bind:this={contentRef} />
    <trix-editor input="content" />
  </form>
</div>
