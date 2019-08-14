import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import VueAxios from 'vue-axios'
import router from './router.js';
 
Vue.use(VueAxios, axios)
Vue.use(Vuex)

export default new Vuex.Store({
   state: {
     token: localStorage.getItem('access_token') || null
   },
   getters: {
     loggedIn(state) {
       return state.token != null
        }
     },
   mutations: {
       retrieveToken(state,token) {
         state.token = token
       }

      
      
   },
   actions: {
  
      retrieveToken(context,credentials) {
        return new Promise((resolve) => {
        let url = 'http://localhost:8000/api/login';
        axios.post(url,{ 
               email:credentials.email,
               password:credentials.password
              
                   
            }).then(response=>{ 
              const token  = response.data.access_token
              
              localStorage.setItem('access_token',token)  
              
              context.commit('retrieveToken',token)
              resolve(response)
              router.push({path:'/about'})

              }).catch(error => {
                
                if (error.response.status == 401){
                    //this.response.error(error.response.data.error)
                  }
                
              })
        })

      }
     
     }
   
      
})
