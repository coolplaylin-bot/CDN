<script>
import { faker } from "@faker-js/faker";
import { notification } from "ant-design-vue";
import 'ant-design-vue/dist/reset.css'
const names = [];

export default {
  data() {
    return {
      names: names,
    };
  },
  methods: {
    addNameHandler() {
      let name = faker.person.fullName()
      this.names.push(name);
      notification.success({
        message: "Add name",
        description: `${name} has been added`,
      });
    },
    removeNameHandler() {
      if (this.names.length === 0) {
        notification.error({
          message: "Remove name",
          description: `There are no names to remove`,
        });
      } else {
        this.names.pop(0);
        notification.success({
          message: "Remove name",
          description: `One of names has been removed`,
        });
      }
    },
  },
  computed: {
    CheckWhetherEmpty() {
      return this.names.length > 0 ? "YES" : "NO";
    },
  },
};
</script>
<template>
  <div :id="me">
  <h3>数值侦听变化</h3>
  <br />
  <a-button type="primary" @click="addNameHandler">添加数据</a-button
  ><a-button @click="removeNameHandler">移除数据</a-button>
  <br />
  <br />
  <p>数据：{{ names.length }}</p>
  <p>有没有数据：{{ CheckWhetherEmpty }}</p>
  <ul>
    <li v-for="(name, index) of names" :key="index">{{ name }}</li>
  </ul>
  </div>
</template>

<style>
</style>