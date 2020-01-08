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
        v-model="email"
        label="Email"
        required
      ></v-text-field>

      <v-text-field
        v-model="password" 
        label="password"
        required
      ></v-text-field>
   </div>
   <v-btn class="mr-12 float-right" @click="submit()">submit</v-btn>
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
      email: "",
      password: ""
    }
  },
  methods: {
    submit(){
       axios
          .post(`http://localhost:8080/login`, {
            email: this.email,
            password: this.password
          })
      .then(response => {
            console.log(response.status);
          });
    }
  }

}
</script>