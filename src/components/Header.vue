<template>
    <header>
        {{ title }}
        <Button text="this is Submit button" />
        {{ text }} <span v-html="text1"></span>
        <button :disabled="isButtonDisabled">Button</button>
        <span v-bind="objectOfAttrs">object</span>
        <div v-if="type === 'A'">
            A
        </div>
        <div v-else-if="type === 'B'">
            B
        </div>
        <div v-else-if="type === 'C'">
            C
        </div>
        <div v-else>
            Not A/B/C
        </div>

        <ul v-for="user in users">
            {{user}}
        </ul>

    </header>
</template>

<script>

import Button from './Button.vue';
import datas from "./data.json";

console.log(datas);
export default {
    data() {
        return {
            users: datas,
            type: 'C',
            text: "hamza",
            text1: "<h1>hamza</span>",
            isButtonDisabled: true,
            objectOfAttrs: {
                id: 'container',
                class: 'wrapper'
            },
            items: [
                {
                    name: 'chair',
                    type: 'furniture'
                },
                {
                    name: "tiger",
                    type: "animale"
                }
            ],
            numbers: [1,2,3,4,5,6,7],
            sets: [[ 1, 2, 3, 4, 5 ], [6, 7, 8, 9, 10]],
        }
    },
    computed: {
       
    },
    methods:{
         evenNumbers(numbers){
            return numbers.filter(n => n%2 === 0)
        }
    },  
    name: 'Header',
    props: {
        title: {
            type: String,
            default: 'This is default'
        }
    },
    components: {
        Button
    }
}
</script>