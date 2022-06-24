<template>
    <div v-if="followers !== null">
        <div v-for="user in followers">
            <div class="">
                <img class="img-thumbnail" height="50" width="50" v-bind:src="user.avatar_url" />
                <div class="flex flex-col">
                    <strong>{{ user.login }}</strong>
                    <span>Technical advisor</span>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'

export default {
    name: 'Followers',
    data() {
        return {
            followers: null
        }
    },
    props: {
        user: {
            type: Object,
            default: null
        },
        actionType: {
            type: String,
            default: null
        }
    },

    watch: {
        user(value, oldValue) {
            this.getFollowersData();
        },
        actionType: {
            handler(newValue, oldValue) {
                this.getFollowersData();
            },
            immediate: true
        }
    },
    methods: {
        getFollowersData() {
            if(!this.user)return;
            axios.get(this.user.followers_url + "?per_page=10").then((response) => {
                this.followers = response.data;
            }).catch((error) => {
                console.log("error found");
            });
        }
    },
}
</script>