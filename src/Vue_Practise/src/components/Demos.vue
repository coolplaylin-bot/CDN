<script setup>
import { faker } from "@faker-js/faker";

const data = [
  {
    id: faker.string.uuid(),
    username: faker.internet.userName(),
    avatar: faker.image.avatar(),
  },
  {
    id: faker.string.uuid(),
    username: faker.internet.userName(),
    avatar: faker.image.avatar(),
  },
  {
    id: faker.string.uuid(),
    username: faker.internet.userName(),
    avatar: faker.image.avatar(),
  },
  {
    id: faker.string.uuid(),
    username: faker.internet.userName(),
    avatar: faker.image.avatar(),
  },
  {
    id: faker.string.uuid(),
    username: faker.internet.userName(),
    avatar: faker.image.avatar(),
  },
  {
    id: faker.string.uuid(),
    username: faker.internet.userName(),
    avatar: faker.image.avatar(),
  },
];

function change(name, e) {
  e.target.src = faker.image.avatar();
  console.log(`We've changed ${name}'s avatar.`);
}
</script>

<template>
  <div v-for="items of data" :key="items.id">
    <button @click.prevent="change(items.username, $event)">
      <img :src="items.avatar" :width="100" :height="100" />
    </button>
    <p>{{ items.username }}</p>
  </div>
</template>
