import App from "./App.vue";
import {Button} from 'ant-design-vue'
import { createApp } from "vue";

const app = createApp(App)
app.use(Button)
app.mount("#app");
