<template>
 <v-app id="test">
    
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
                    <v-container >
        <h3 class="display-1 mb-4">Product Details</h3>
        <v-layout row wrap>
            
        <v-flex xs6  >
         <v-card align="left"  class="mx-auto" color="grey lighten-4" max-width="300" height="400">
                <v-responsive>
                     <v-img v-bind:src="getpic(item.product_image1)"  height="400" width="300" class="grey lighten-2"></v-img>
                </v-responsive>
            </v-card>
           
         </v-flex>  

         <v-flex xs6 >
             <v-card-text class="pt-4" style="position:relative;"  >
               
               
                <div class="display-1 font-weight-light orange--text mb-1">
                                {{item.product_name}}
                </div>
                <div class="font-weight-light grey-text title mb-1">
                                {{item.product_desc}}
                </div>  
                <div class="font-weight-light grey-text title mb-1">
                                <span>Price:{{item.book_price}}</span>
                </div>  
                 
                <div>
                    <v-btn color="success" @click="addToCart(item.id)">Add To cart</v-btn>
                    <v-btn color="info">Checkout</v-btn>
                </div>                                    
            </v-card-text>
         </v-flex>

          

         </v-layout> 
         
       
    </v-container>
        </v-content>    
        <v-content>
            <footercontent></footercontent>
        </v-content>
        
 </v-app>
</template>
<script>
import Productdetails from './Productdetails.vue'
import footercontent from './footercontent.vue'
export default {
    components : { footercontent },
    data() {
        return {
         drawer:false,
         id:'',
         dialog:false,
         img_url:'http://localhost:8000/thumbnail/', 
         item:'',
         items:'',
         id:'',
              cartItems: [],
              contact: [{
                        product_image1:'',
                        product_desc:'',
                        product_name:'',
                        book_price:''
              }]
                  
        
        }

    },
     created () {
          
                   
                     
                     this.initialize();
                },
     
      methods: {
                        
                        getpic(index) {
                        let url = 'http://localhost:8000/thumbnail/';
                        return url+index;
                        },
    
                        fetchcontent () {
                        
                         
                        
                         let id = this.$route.params.PId;
                         console.log(id);
                         let url = 'http://localhost:8000/api/Productdetails/'+id;
                         let headers = {
                            'method' : 'GET'
                         };
                         fetch(url,headers).then((response) => {
                             return response.json();
                        }).then((response) => {
                             console.log(response);  // eslint-disable-line no-console
                             this.item= response.data;
                            
                            
                        },(error) => {
                            console.log("error",error);  // eslint-disable-line no-console
                         });
                    },
                   
                    initialize () {
                    this.fetchcontent();
                    
                    },
                      addToCart(id) {
                        this.$router.push({name:'Viewcart',params:{PId:id}});
                        
                   }              

}
}
</script>
<style>
#test {
  background-color:black;
  color:white;
}
</style>