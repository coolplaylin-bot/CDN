<script>
import { faker } from "@faker-js/faker";
export default {
  data() {
    return {
      msg: "",
      checked: false,
    };
  },
  methods: {
    main() {
      return {
        name: faker.person.fullName(),
        bio: faker.person.bio(),
      };
    },
  },
};
</script>

<template>
  <h3>表单输入绑定</h3>
  <input type="text" :style="{ width: '200px' }" v-model="msg" />
  <p>{{ msg }}</p>
  <p>{{ main() }}</p>
  <input type="checkbox" v-model="checked" id="checkbox" />
  <label for="checkbox">{{ checked }}</label>
</template>
