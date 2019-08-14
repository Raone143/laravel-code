import Vue from 'vue'
import Router from 'vue-router'
import adminlogin from './views/adminlogin.vue'
import About from './views/About.vue'
import logout from './views/logout.vue'
import Home from './views/Home.vue'
import admincategory from './views/admincategory.vue'
import Basket from './views/Basket.vue'

import test from './views/test.vue'
import Viewcart from './views/Viewcart.vue'

Vue.use(Router)


export default new Router({
  mode: 'history',
  
  routes: [
    { 
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/admincategory',
      name: 'admincategory',
      component: admincategory
    },
    
    {
      path: '/test/:PId',
      name: 'test',
      component: test
    },
    {
      path: '/Viewcart/:PId',
      name: 'Viewcart',
      component: Viewcart
    },
   
    {
      path: '/Basket',
      name: 'Basket',
      component: Basket
    },
    
    {
      path: '/adminlogin',
      name: 'adminlogin',
      component: adminlogin
    },
    
    {
      path: '/logout',
      name: 'logout',
      component: logout
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: About
    }
  ]
})

