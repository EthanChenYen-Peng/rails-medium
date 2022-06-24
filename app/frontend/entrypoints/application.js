import axios from 'axios'
import "./index.css"
// import Layout from '../pages/_layout.svelte'

import { createInertiaApp } from '@inertiajs/inertia-svelte'
// import { InertiaProgress } from '@inertiajs/progress'

const pages = import.meta.glob('../Pages/**/*.svelte')

const csrfToken = document.querySelector('meta[name=csrf-token]').content
axios.defaults.headers.common['X-CSRF-Token'] = csrfToken

// InertiaProgress.init()

createInertiaApp({
  resolve: async name => {
    const page = await pages[`../Pages/${name}.svelte`]()
    // return Object.assign({layout: Layout}, page)
    return page
  },
  setup({ el, App, props }) {
    new App({ target: el, props })
  },
})
