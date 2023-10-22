<script>
import { notification } from "ant-design-vue";
export default {
  data() {
    return {
      msg: "Hello",
      modifying: false,
    };
  },
  methods: {
    updateHandlerStart() {
        this.modifying = true;
        setTimeout(() => {
            this.modifying = false;
        }, 2000000000000000000);
    },
    updateHandlerStop() {
        this.modifying = false;
    },
  },
  watch: {
    msg(newValue, oldValue) {
      console.log(`Modified: ${oldValue} => ${newValue}`);
      notification.info({
        message: "Listener",
        description: `${oldValue} => ${newValue}`,
      });
    },
  },
};
</script>

<template>
  <h3>Listener</h3>
  <p>{{ msg }}</p>
  <a-button type="primary" :loading="modifying" @click="updateHandlerStart">修改数据</a-button>
  <a-button @click="updateHandlerStop">停止数据</a-button>
</template>
