<template>
    <content-loader></content-loader>
    <div v-if="user !== null">
        <h1>{{ user.login }}</h1>
        <p>Name: {{ user.name }}</p>
        <p>company: {{ user.company }}</p>
        <p>blog: {{ user.blog }}</p>
        <p>location: {{ user.location }}</p>
        <p>bio: {{ user.bio }}</p>
        <p>public_repos: {{ user.public_repos }}</p>
        <p>public_gists: {{ user.public_gists }}</p>
        <p>followers: {{ user.followers }}</p>
        <p>following: {{ user.following }}</p>
        <img v-bind:src="user.avatar_url" />
    </div>

</template>

<script>
import axios from 'axios'
export default {
    name: 'User',
    data() {
        return {
            user: null,
        }
    },
    props: {
        user: {
            type: Object,
            default: null
        }
    },

}
</script>