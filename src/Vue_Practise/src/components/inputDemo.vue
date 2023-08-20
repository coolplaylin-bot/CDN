<script>
export default {
    data() {
        return {
            msg: '',
            checked: false

        }
    }
}
</script>


<template>
<h3>表单输入绑定</h3>
<input type="text" :style="{width: '200px'}" v-model="msg">
<p>{{ msg }}</p>
<input type="checkbox" v-model="checked" id="checkbox">
<label for="checkbox">{{ checked }}</label>
</template>