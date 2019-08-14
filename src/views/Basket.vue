<template>

<v-app>
    <v-container>
    <h2 class="diplay-2 mb-4">Basket</h2>
    <v-list two-line>
        <template v-for="(product,index) in products">
          <v-list-tile :key="product.product_id" avatar>
              <v-list-tile-avatar>
                <img :src="product.photo"> 
              </v-list-tile-avatar>
          
          <v-list-tile-content>
              <v-list-tile-title v-html="product.title"></v-list-tile-title>
              <v-list-tile-sub-title v-html="product.sub_title"></v-list-tile-sub-title>
          </v-list-tile-content>
         </v-list-tile>
          <v-divider  v-if="index + 1 < products.length" :key="index"></v-divider>

        </template>
    </v-list>
    </v-container>
    </v-app>
</template>
<script>
export default{
    data(){
        return {
            products:[{
                drawer:false,
                product_id:'kitchen',
                
                photo:'https://use.vuetifyjs.com/images/cards/kitchen.jpg',
                title:'Qw cooking untensils',
                sub_title:'yout kitchen untensils deligh quantity chef.mode of kitchen by hand',
                price: 14.99,
                qty:0
            }]
        }
    }
}
</script>