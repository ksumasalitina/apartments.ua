<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Example Component</div>

                    <div class="card-body">
                        I'm an example component.
                    </div>
                    <input type="number" name="rate" v-model="rate">
                    <button type="submit" @click="test">ok</button>
                    <div >
                        <li v-for="test in post">
                        <div >
                                <h3>{{test.name}}</h3>
                        </div>
                        </li>
                    </div>
                </div>
                </div>
            </div>
        </div>

</template>

<script>
import axios from 'axios';
    export default {
        data: () => ({
            rate:0,
            post: [],
            //visible:true
        }),
        methods:{
            /*getPosts: function (){
                axios.get('/api/test/')
                    .then(res => {
                        this.post = res.data.filter(b=>b.rate==this.rate);
                    })
            }*/
            test: function (){
                axios.post('/api/ttest/', {rare: 0}).then(response => {
                    console.log(response.data);
                }).catch(error=>{
                    console.log(error);
                })
            }
            }
        }

</script>
