<template>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <div class="container">
        <div class="row">
            <div class="col-md-12 p-2">
                <input type="text" class="border p-2" v-model="handle">
                <button class="btn btn-success ml-2" @click="searchUserInfo()">Search Github Profile</button>
            </div>
            <div class="col-md-6 p-3 border">
                <User :user="user" />
            </div>
            <div class="col-md-6 border p-3">
                <Action :user="user" />
            </div>
        </div>
    </div>

</template>

<script>
import { ContentLoader } from 'vue-content-loader'
import axios from 'axios'
import User from './github/User.vue'
import Action from './github/Action.vue'

export default {
    name: 'Github',
    data() {
        return {
            user: null,
            handle: null,
        }
    },
    
    methods: {
        searchUserInfo() {
            if(this.handle == null)return;
            axios.get('https://api.github.com/users/' + this.handle).then((response) => {
                this.user = response.data;
            }).catch((error) => {
                console.log("error found");
            });
        }
    },
    components: {
        User, Action, ContentLoader
    }
}
</script>