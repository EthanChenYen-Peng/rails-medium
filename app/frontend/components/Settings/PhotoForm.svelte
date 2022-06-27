<script>
  import { useForm } from "@inertiajs/inertia-svelte";
  import MdAccountCircle from "svelte-icons/md/MdAccountCircle.svelte";
  export let user;

  let editing = false;
  let inputRef;

  let form = useForm({
    avatar: null,
  });

  $: {
    if (editing) {
      inputRef.removeAttribute("disabled");
      inputRef.focus();
    } else {
      inputRef?.setAttribute("disabled", "true");
    }
  }

  function handleSubmit() {
    $form.transform((data) => ({ user: { ...data } })).put("/me/settings");
    editing = false;
  }
</script>

<div class="mt-5 grid grid-cols-6">
  <div class="col-span-6 flex flex-col gap-6 md:col-span-4">
    <h3 class="text-2xl font-medium">Photo</h3>
    <p>
      Your photo appears on your Profile page and with your stories across
      Medium.
    </p>
  </div>
  <div>
    <form>
      <input
        type="file"
        class="hidden"
        bind:this={inputRef}
        on:input={(e) => ($form.avatar = e.target.files[0])}
        disabled
      />
      <div
        on:click={() => {
          inputRef?.click();
        }}
        class="h-[120px] w-[120px] {editing
          ? 'text-gray-500'
          : 'text-gray-300'}"
      >
        <MdAccountCircle />
      </div>
      {#if $form.errors.username}
        <div class="text-red-400">{$form.errors.username}</div>
      {/if}
    </form>
  </div>
  <div
    class="col-span-6 mt-5 flex items-center gap-3 md:col-span-1 md:mt-0 md:justify-end"
  >
    {#if editing}
      <button
        on:click={handleSubmit}
        class="rounded-full border border-green-600 px-4 py-2 text-green-600"
        >Save</button
      >
      <button
        on:click={() => (editing = false)}
        class="rounded-full border border-gray-300 px-4 py-2 text-gray-500"
        >Cancel</button
      >
    {:else}
      <button
        on:click={() => (editing = true)}
        class="rounded-full border border-gray-300 px-4 py-2 text-gray-500"
        >Edit</button
      >
    {/if}
  </div>
</div>
