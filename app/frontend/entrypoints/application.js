import axios from "axios";
import "./index.css";
import Layout from "../components/Layout/DashboardLayout.svelte";
import { createInertiaApp } from "@inertiajs/inertia-svelte";
import { InertiaProgress } from "@inertiajs/progress";

const pages = import.meta.glob("../Pages/**/*.svelte");

const csrfToken = document.querySelector("meta[name=csrf-token]").content;
axios.defaults.headers.common["X-CSRF-Token"] = csrfToken;

InertiaProgress.init();

createInertiaApp({
  resolve: async (name) => {
    const page = await pages[`../Pages/${name}.svelte`]();
    if (!page.layout) {
      return Object.assign({ layout: Layout }, page);
    }
    return page;
  },
  setup({ el, App, props }) {
    new App({ target: el, props });
  },
});
