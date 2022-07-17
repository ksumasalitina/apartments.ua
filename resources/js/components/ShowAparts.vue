<template>
<div>
    <div class="col-md-15 text-center">
        <input type="date" placeholder="З"  class="find-form" name="startDate" v-model="startDate">
        <input type="date" placeholder="По" class="find-form" name="endDate" v-model="endDate">
        <select class="find-form" name="people" v-model="people">
            <option selected disabled>Людей</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
        </select>
        <button class="btn btn-dark" @click="getResult">Пошук</button>
    </div>
    <div v-if="visible">

        <h2 class="find-apart rooms-header" align="center"><em>Доступні номери для бронювання:</em></h2>
        <div class="center-box w-75">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Тип</th>
                    <th scope="col">Ліжка</th>
                    <th scope="col">Кількість людей</th>
                    <th scope="col">Поверх</th>
                    <th scope="col">Вартість за 1 ніч</th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody v-for="res in result1">
                <tr>
                    <td>{{res.description}}</td>
                    <td>{{res.beds}}</td>
                    <td>{{res.people}}</td>
                    <td>{{res.floor}}</td>
                    <td>{{res.cost}}</td>
                    <td>
                    </td>
                </tr>
                </tbody>
            </table>
    </div>
    </div>
</div>
</template>

<script>
import axios from 'axios';
export default {
    props: ['data'],
    data: ()=>({
        bookings:[],
        result:[],
        result1: [],
        rooms:[],
        startDate: '',
        endDate: '',
        people: 0,
        visible: false
    }),
    methods: {
        getBookings: function (){
            axios.get('/api/show/')
                .then(res => {
                    this.bookings = res.data.bookings;
                })
        },
        getRooms: function (){
            axios.get('/api/show/')
                .then(res => {
                    this.rooms = res.data.rooms;
                })
        },
        getResult:function (){
            let j = 0;
            let k = 0;
            this.visible = true;
            for(let i=0; i<this.bookings.length; i++){
                if(this.bookings[i].arrival<=this.endDate &&this.bookings[i].departure>=this.startDate){
                    this.result[j] = this.bookings[i].room_id;
                    j++;
                }
            }
            for(let i=0;i<this.rooms.length;i++){
                if((!this.result.includes(this.rooms[i].id)) && this.rooms[i].people>=this.people
                    && this.rooms[i].apartment_id==this.data){
                    this.result1[k] = this.rooms[i];
                    k++;
                }
            }

        },

    },
    mounted() {
        this.getBookings();
        this.getRooms()
    }
}
</script>


