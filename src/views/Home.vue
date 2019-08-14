<template>
<div id="Home">
   
    <v-navigation-drawer dark v-model="drawer" app temporary>
         <v-list>
             <v-list-tile>
                 <v-list-tile-content>
                     <v-list-tile-title>
                         Menu
                     </v-list-tile-title>
                 </v-list-tile-content>
             </v-list-tile>
        </v-list>
     </v-navigation-drawer>
        <v-toolbar dark>
            <v-toolbar-side-icon @click="drawer = !drawer"></v-toolbar-side-icon>
            <v-toolbar-title>Shoppingcart</v-toolbar-title>
            
            <v-spacer> </v-spacer>
            
            <v-toolbar-items>
            <v-btn flat>
                Products
            </v-btn>
            
             
            <v-btn  flat>
            <v-badge left color="green">
                <span slot="badge">0</span>
                <v-icon>shopping_cart</v-icon></v-badge>
                Basket
                
            </v-btn>
                
            
         
      
            </v-toolbar-items>
        </v-toolbar>
            
        <v-content>
          <productdislplay />
        </v-content>
          <v-content>
          <footercontent/>
        </v-content>

</div> 


  
</template>

<script>
   
  import productdislplay from '../views/productdislplay'
  import footercontent from '../views/footercontent.vue'
  export default {
    components: {
    productdislplay,
    footercontent
      
    },
    data() {
      return {
        drawer:''
      }
    }
  }
</script>
<style>
#Home {
  background-color:black;
  color:white;
}
</style>