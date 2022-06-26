<script context='module'>
  import Layout from '../../components/Layout/UserSettingLayout.svelte'
  export const layout = Layout
</script>

<div class="py-20 mx-auto max-w-[800px] md:w-2/3 px-5">
  <h1 class="text-4xl font-bold">About You</h1>

  <div class="my-8 border-b border-gray-200">
  </div>
  <div class="mt-5 grid grid-cols-6">
    <div class="col-span-4">
      <h3 class="text-2xl font-medium">Name</h3>
      <p>
        Your name appears on your Profile page, as your byline, and in your responses. It is a required field.
      </p>
    </div>
    <div class='col-span-1 col-start-6'>
      <button class="px-4 py-2 text-gray-500 border border-gray-300 rounded-full">Edit</button>
    </div>

  </div>

</div>
