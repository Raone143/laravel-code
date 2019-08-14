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
        </v-toolbar>

      <v-spacer></v-spacer> 
      <v-content>
           <v-container>


    
     
                  <div id="product-table-color">
                        <h2 class="diplay-2 mb-4" >Basket</h2>
                     <table class="table table-cart" >
                        <tr >
                           <td>Product Image</td>
                           <td> Product Name</td>
                           <td>Qty</td>
                           <td>Price</td>
                           
                        </tr>
                        <tr>
                          <td><v-img v-bind:src="getpic(items.product_image1)" aspect-ratio="1"  height="200" width="200" class="grey lighten-2"></v-img></td>
                          <td>{{items.product_name}}</td>
                           <td>
                                <v-btn fab dark small color="primary" @click="qtyincrement('qty',1)">
                                    <v-icon dark>add</v-icon>
                                </v-btn>
                               {{qty}}
                                <v-btn fab dark small color="primary" @click="qtydecrement('qty',1)">
                                    <v-icon dark>remove</v-icon>
                                </v-btn>
                                                            
                          </td>
                           <td class="text-right">{{items.book_price * qty }}</td>
                          
                        </tr>
                       
                       <tr>
                           <v-divider></v-divider>
                           <td>&nbsp;</td>
                           <td>Total Amount</td>
                           
                           <td>{{items.book_price * qty}}</td>
                       </tr>
                      
                       <tr>
                           
                           <td></td>
                           <td><v-btn color="primary">Back to Shoppingcart</v-btn></td>
                           
                           
                           <td><v-btn dark large color="primary">Place order</v-btn></td>
                       </tr>
                     </table>
                  </div>
                  <!-- /.container -->
               
           
        
         
        

    </v-container>
      </v-content>
        <v-content>
            <footercontent></footercontent>
        </v-content>
        
 </v-app>
</template>
<script>
import Basket from './Basket.vue'

import footercontent from './footercontent.vue'
export default {
    components : { Basket,footercontent },
    data() {
        return {
         drawer:false,
         id:'',
         dialog:false,
         img_url:'http://localhost:8000/thumbnail/', 
         item:'',
         items:'',
         id:'',
         total:'',
         qty:1,
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
                             this.items= response.data;
                              
                        },(error) => {
                            console.log("errofr",error);  // eslint-disable-line no-console
                         });
                         
                         
                    },
                   
                    initialize () {
                    this.fetchcontent();
                    
                    },
                    qtyincrement(property,qty) {
                        this[property] += qty
                    },
                    qtydecrement(property,qty) {
                          if (this[property] === 1) return
                        this[property] -= qty
                    },
        
                       
                    
                     
                        
    }              

}

</script>
<style>
#test {
  background-color:black;
  color:white;
}

#product-table-color {
    background-color:black;
    color:white;
}

</style>