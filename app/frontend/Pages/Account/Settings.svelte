<script context="module">
  import Layout from "../../components/Layout/UserSettingLayout.svelte";
  export const layout = Layout;
</script>

<script>
  export let user;

  let username = user.username;

  let editingName = false;
  let nameInputRef;

  function enableNameInput() {
    nameInputRef.removeAttribute("disabled");
    nameInputRef.focus();
  }

  $: {
    if (editingName) {
      enableNameInput();
    } else {
      nameInputRef?.setAttribute("disabled", "true");
    }
  }
</script>

<div class="mx-auto max-w-[800px] py-20 px-5 md:w-2/3">
  <h1 class="text-4xl font-bold">About You</h1>

  <div class="my-8 border-b border-gray-200" />
  <div class="mt-5 grid grid-cols-6">
    <div class="col-span-6 flex flex-col gap-6 md:col-span-4">
      <h3 class="text-2xl font-medium">Username</h3>
      <form>
        <input
          bind:this={nameInputRef}
          type="text"
          bind:value={username}
          class="w-full border-b border-b-gray-300 px-2 py-1 text-xl focus:outline-none"
          disabled
        />
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
          on:click={() => (editingName = true)}
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
</div>
