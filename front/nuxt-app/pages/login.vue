<template>
<v-app>
  <v-card
    class="mx-auto mt-12 pa-12"
    width="60%"
    height="70%"
    outlined
  >
  <div class="pa-12">
   <v-text-field
        v-model="name"
        :counter="10"
        label="Name"
        required
      ></v-text-field>

      <v-text-field
        v-model="email" 
        label="E-mail"
        required
      ></v-text-field>
   </div>

   <v-btn class="mr-12 float-right" @click="submit()">submit</v-btn>
   <p>{{this.name}},{{this.email}}</p>

  </v-card>
  
  <div>
    <router-link to="/">index</router-link>
  </div>
  </v-app>
</template>

<script>
import axios from "axios";

export default {
   data: function() {    
    return {
      name: "",
      email: ""
    }
  },
  methods: {
    submit(){
       axios
          .post(`http://localhost:8080/login`, {
            name: this.name,
            email: this.email
          })
      .then(response => {
            console.log(response);
          });
    }
  }

}
</script>