<script>
import { faker } from "@faker-js/faker";
import { notification } from "ant-design-vue";

export default {
  data() {
    return {
      names: [],
      loading_add: false,
      loading_remove: false,
      disabled_add: false,
      disabled_remove: false,
    };
  },
  methods: {
    addNameHandler() {
      this.disabled_remove = true;
      this.loading_add = true;
      let name = faker.person.fullName();
      setTimeout(() => {
        this.names.push(name);
        notification.success({
          message: "Add name",
          description: `${name} has been added`,
        });
        this.loading_add = false;
        this.disabled_remove = false;
      }, 1000);
    },
    removeNameHandler() {
      this.loading_remove = true;
      this.disabled_add = true;
      setTimeout(() => {
        if (this.names.length === 0) {
          notification.error({
            message: "Remove name",
            description: `There are no names can be removed`,
          });
        } else {
          this.names.pop(0);
          notification.success({
            message: "Remove name",
            description: `One of names has been removed`,
          });
        }
        this.loading_remove = false;
        this.disabled_add = false;
      }, 1000);
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
    <h3>Value Listens for Changes</h3>
    <br />
    <a-button
      :disabled="disabled_add"
      :loading="loading_add"
      type="primary"
      @click="addNameHandler"
      >Add Data</a-button
    ><a-button
      :disabled="disabled_remove"
      :loading="loading_remove"
      @click="removeNameHandler"
      >Remove Data</a-button
    >
    <br />
    <br />
    <p>The Number of Data: {{ names.length }}</p>
    <p>Whether Exist Data: {{ CheckWhetherEmpty }}</p>
    <ul>
      <li v-for="(name, index) of names" :key="index">{{ name }}</li>
    </ul>
  </div>
</template>

<style>

* {
  font-family: CaskaydiaCoveNerdFontMono;
}
@font-face {
  font-family: CaskaydiaCoveNerdFontMono;
  src: url("/CaskaydiaCoveNerdFontMono-BoldItalic.ttf");
}

#me {
  width: 500px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

#me ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

#me ul li {
  margin: 10px 0;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #fff;
}

#me ul li:nth-child(even) {
  background-color: #efefef;
}
</style>
