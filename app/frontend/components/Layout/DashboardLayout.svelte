<div class="h-full grid grid-cols-12">
  <aside class="flex flex-col px-5 py-16 border-r-[1px] col-span-1 border-r-gray-300">
    <ul>
      <li>Home</li>
      <li>Notification</li>
    </ul>
  </aside>
  <div class="px-5 py-16 col-span-8">
    <slot></slot>
  </div>
    <aside class="px-5 py-16 border-l-[1px] col-span-3 border-l-gray-300"> Search</aside>
</div>
