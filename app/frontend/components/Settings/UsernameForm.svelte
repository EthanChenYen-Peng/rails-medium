<script>
  import { useForm } from "@inertiajs/inertia-svelte";

  export let user;

  let editingName = false;
  let nameInputRef;

  let form = useForm({
    username: user.username,
  });

  $: {
    if (editingName) {
      nameInputRef.removeAttribute("disabled");
      nameInputRef.focus();
    } else {
      nameInputRef?.setAttribute("disabled", "true");
    }
  }

  function handleSubmit() {
    $form.transform((data) => ({ user: { ...data } })).put("/me/settings");
    editingName = false;
  }
</script>

<div class="mt-5 grid grid-cols-6">
  <div class="col-span-6 flex flex-col gap-6 md:col-span-4">
    <h3 class="text-2xl font-medium">Username</h3>
    <form>
      <input
        bind:this={nameInputRef}
        type="text"
        bind:value={$form.username}
        class="w-full border-b border-b-gray-300 px-2 py-1 text-xl focus:outline-none"
        disabled
      />

      {#if $form.errors.username}
        <div class="text-red-400">{$form.errors.username}</div>
      {/if}
    </form>
    <p>
      Your name appears on your Profile page, as your byline, and in your
      responses. It is a required field.
    </p>
  </div>
  <div
    class="col-span-6 mt-5 flex items-center gap-3 md:col-span-1 md:col-start-6 md:mt-0 md:justify-end"
  >
    {#if editingName}
      <button
        on:click={handleSubmit}
        class="rounded-full border border-green-600 px-4 py-2 text-green-600"
        >Save</button
      >
      <button
        on:click={() => (editingName = false)}
        class="rounded-full border border-gray-300 px-4 py-2 text-gray-500"
        >Cancel</button
      >
    {:else}
      <button
        on:click={() => (editingName = true)}
        class="rounded-full border border-gray-300 px-4 py-2 text-gray-500"
        >Edit</button
      >
    {/if}
  </div>
</div>
