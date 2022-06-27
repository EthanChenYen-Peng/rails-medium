<script context="module">
  import Layout from "../../components/Layout/UserSettingLayout.svelte";
  export const layout = Layout;
</script>

<script>
  import UsernameForm from "../../components/Settings/UsernameForm.svelte";
  import PhotoForm from "../../components/Settings/PhotoForm.svelte";

  export let user;
</script>

<div class="mx-auto max-w-[900px] py-20 px-5 md:w-2/3">
  <h1 class="text-4xl font-bold">About You</h1>

  <div class="my-8 border-b border-gray-200" />
  <div class="flex flex-col gap-10">
    <UsernameForm user />
    <PhotoForm user />
  </div>
</div>
