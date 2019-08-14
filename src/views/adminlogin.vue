
<template >
  <div id="login-page-background-color">
  <v-app id="inspire">
    <v-content>
      <v-container fluid fill-height>
        <v-layout align-center justify-center>
          <v-flex xs12 sm8 md4>
            <v-card class="elevation-12">
              <v-toolbar dark color="error">
                <v-toolbar-title>Login</v-toolbar-title>
              </v-toolbar>
              <v-card-text>
                <v-form ref="form" method="post" v-model="valid" lazy-validate>
                  <v-text-field prepend-icon="person" v-model="email" label="email" :rules="emailrules" type="text" required></v-text-field>
                  <v-text-field prepend-icon="lock" autocomplete="password" v-model="password" label="Password" :rules="passwordrules" id="password" type="password" required></v-text-field>
                  <v-card-actions>
                  <v-spacer></v-spacer>
                  <v-spacer></v-spacer>
                  
                  <v-btn color="error"  @click="validate">Login</v-btn>
                  <v-spacer></v-spacer>
                  <v-btn color="error" @click="reset">clear</v-btn>
                 
                  </v-card-actions>
                </v-form>
               <v-card class="error-messages">
                  
               </v-card>
              
              </v-card-text>
             
            </v-card>
          </v-flex>
        </v-layout>
      </v-container>
    </v-content>
  </v-app>
</div>
</template>
<script>


export default {
 data() {
   return {
     valid:true,
     email:'',
     password:'',
     alert:false,
     alert_data:'',
     errors:[],
     emailrules: [
        v => !!v || 'E-mail is required',
        v => /.+@.+/.test(v) || 'E-mail must be valid'
     ],
     passwordrules: [
        v => !!v || 'password is required',
        
     ]
   }
 },
 methods:{
   validate() {
     if (this.$refs.form.validate()) {

        this.$store.dispatch('retrieveToken',{
          
            email:this.email,
            password:this.password
         })
      }
    
   },
   reset () {
      this.$refs.form.reset()
    },
 }
      
}
</script>
<style>
#inspire {
  background-color:black;
}

</style>
