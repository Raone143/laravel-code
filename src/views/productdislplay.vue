<template>
  
    <v-container >
        <h3 class="display-1 mb-4">Hot products showing</h3>
        <v-layout row wrap>
            
        <v-flex xs2 pa-1 v-for="(item,index) in contact" @click="productnav(item.id)">
         <v-card align="left"  class="mx-auto" color="grey lighten-4" max-width="600" height="360">
               <v-responsive  aspect-ratio="16/9">

             <v-img v-bind:src="getpic(item.product_image1)"  aspect-ratio="1"  class="grey lighten-2"></v-img>
            
            <v-card-text class="pt-4"  style="position:relative;" >

                <v-btn absolute color="orange" class="shite --text" fab medium top right>
                    <v-icon>shopping_cart</v-icon>

                </v-btn>
                <div class="display-1 font-weight-light orange--text mb-2">
                                {{item.product_name}}
                </div>
                
               
                <div class="font-weight-light grey-text title mb-2">
                                <span>Price:{{item.book_price}}</span>
                </div>  
                                                    
            </v-card-text>
                </v-responsive>
            </v-card>
           
         </v-flex>  

         </v-layout> 
         
       
    </v-container>

</template>
<script>
import Eventbus from '../main'
import Productdetails from './Productdetails.vue'
import test from './test.vue'
export default {
    data() {   
        return {

              img_url:' http://localhost:8000/thumbnail/', 
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
                    this.initialize()
                },
      methods: {
                        
                        
                        
                        getpic(index) {
                        let url = 'http://localhost:8000/thumbnail/';
                        return url+index;
                        },
    
                        fetchcontent () {
                        let url = 'http://localhost:8000/api/displayproduct/';
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
                    productnav(id){
                      this.proid = id;
                      Eventbus.$emit("prouctdetails",this.proid);
                      this.$router.push({name:'test',params:{PId:id}});
                   
                    },

                    initialize () {
                    this.fetchcontent();
                    
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