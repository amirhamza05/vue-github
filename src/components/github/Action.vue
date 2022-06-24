<template>
    <div v-if="user !== null">
        <button class="btn btn-primary mr-1" @click="getFollowersList()">Followers</button>
        <button class="btn btn-info mr-1" @click="getFollowingList()">Following</button>
        <button class="btn btn-success mr-1" @click="getRepositoryList()">Repository</button>
        <hr />
    </div>
    <div v-if="actionType.startsWith('followers')">
        <Followers :user="user" :actionType="actionType" />
    </div>

    <div v-if="actionType.startsWith('following')">
        <Following :user="user" :actionType="actionType" />
    </div>
    <div v-if="actionType.startsWith('repository')">
        Repository
    </div>
    

</template>

<script>

import axios from 'axios'
import Followers from './Followers.vue'
import Following from './Following.vue'

export default {
    name: 'Action',
    data() {
        return {
            user: null,
            actionType: 'followers',
        }
    },
    props: {
        user: {
            type: Object,
            default: null
        }
    },
    
    methods: {
        getFollowersList() {
            this.actionType = "followers";
        },
        getFollowingList(){
            this.actionType = "following";
        },
        getRepositoryList(){
            this.actionType = "repo";
        }
    },

    components: {
        Followers, Following
    }
}
</script>