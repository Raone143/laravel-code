<template>
  <v-app id="Product">
    <v-container >
        <h3 class="display-1 mb-4">Hot products showing</h3>
        <v-layout row wrap>
            
        <v-flex xs2 pa-1 >
         <v-card align="left"  class="mx-auto" color="grey lighten-4" max-width="600" height="500">
             
            </v-card>
           
         </v-flex>  
        <v-flex xs2 pa-1>
              <v-responsive aspect-ratio="16/9">
        
             <v-img v-bind:src="getpic(contact.product_image1)"  height="500"  class="grey lighten-2"></v-img>
            
            <v-card-text class="pt-4" style="position:relative;" >

                <v-btn absolute color="orange" class="shite --text" fab medium top right>
                    <v-icon>shopping_cart</v-icon>

                </v-btn>
                <div class="display-1 font-weight-light orange--text mb-2">
                                {{contact.product_name}}
                </div>
                
               
                <div class="font-weight-light grey-text title mb-2">
                                <span>Price:{{contact.book_price}}</span>
                </div>  
                                                    
            </v-card-text>
                </v-responsive>
        </v-flex>
         </v-layout> 
         
       
    </v-container>
</v-app>
</template>
<script>
import Eventbus from '../main'
import productdislplay from './productdislplay'
export default {
    data() {
        return {

              img_url:'http://localhost:8000/thumbnail/', 
              item:'',
              id:'',
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
                        
                        
            
                    
                         let url = 'http://localhost:8000/api/Productdetails/'+id;
                         let headers = {
                            'method' : 'GET'
                         };
                         fetch(url,headers).then((response) => {
                             return response.json();
                        }).then((response) => {
                             console.log(response);  // eslint-disable-line no-console
                             this.contact = response.data;
                            
                            
                        },(error) => {
                            console.log("error",error);  // eslint-disable-line no-console
                         });
                    },
                   
                    initialize (id) {
                    this.fetchcontent(id);
                    
                    }
                }              
                    
}
</script>
<style scoped>
.v-card--reveal {
    align-items:center;
    bottom:0px;
    justify-content:center;
    opacity:0.5;
    position:absolute;
    width:100%;


}
</style>