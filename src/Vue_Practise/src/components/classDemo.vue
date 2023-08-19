<script>
import { notification } from "ant-design-vue";
export default {
  data() {
    return {
    };
  },
  methods: {
    thefuck() {
        notification.error({
          message: "他妈的",
          description: "你他妈点我干啥子",
        });
    },
  },
};
</script>

<template>
  <input type="text">
  <a-button @click="thefuck" type="primary">登录</a-button>
</template>

<style>
</style>
