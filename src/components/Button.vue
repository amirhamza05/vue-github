<template>
    <button>{{ text }}</button>
</template>

<script>
export default {
    name: 'Button',
    props: {
        text: {
            type: String,
            default: 'Submit Button'
        }
    }
}
</script>