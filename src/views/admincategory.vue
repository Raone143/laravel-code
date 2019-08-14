<template>
<v-app id="about">
  <div class="about">
    <Navbar></Navbar>
  </div>
  <div class="table">
      <v-toolbar flat color="white">
        <v-toolbar-title>CATEGORY TYPES</v-toolbar-title>
        <v-divider
          class="mx-2"
          inset
          vertical
        ></v-divider>
        <v-spacer></v-spacer>
        <v-dialog v-model="dialog" max-width="500px">
          <v-btn slot="activator" color="primary" dark class="mb-2">ADD CATEGORY</v-btn>
          <v-card>
            <v-card-title>
              <span class="headline">{{ formTitle }}</span>
            </v-card-title>
  
            <v-card-text>
              <v-container grid-list-md>
                <v-layout wrap>
                     <input type="hidden" v-model="editedItem.id" >
                     
                  <v-flex xs12 sm6 md4>
                    
                    <v-text-field v-model="editedItem.categoryname" label="categoryname" required :rules="categoryrules" ></v-text-field>
                  </v-flex>
                  <v-flex xs12 sm6 md4>
                    <v-text-field v-model="editedItem.position" label="position" :rules="positionrules" required ></v-text-field>
                  </v-flex>
                  
                                
                 
                </v-layout>
              </v-container>
            </v-card-text>
  
            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn color="blue darken-1" flat @click.native="close">Cancel</v-btn>
              <v-btn color="blue darken-1" flat @click.native="save">Save</v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
      </v-toolbar>
      <v-data-table
        :headers="headers"
        :items="contact"
        hide-actions
        class="elevation-1"
      >
      <template v-slot:no-data>
        <v-alert :value="true" align="center" color="error" icon="warning">
          Sorry, nothing to display here :(
        </v-alert>
      </template>
        <template slot="items" slot-scope="props">
         
         
          <td>{{ props.item.categoryname }}</td>
          <td>{{ props.item.position }}</td>
          
          
          <td >
            <v-icon
              medium
              
              color="success"
              @click="editItem(props.item)"
            >
              edit
            </v-icon>
            <v-icon
              medium
              color="error"
              @click="deleteItem(props.item)"
            >
              delete
            </v-icon>
          </td>
        </template>
        <template slot="no-data">
          <v-btn color="primary" @click="initialize">Reset</v-btn>
        </template>
      </v-data-table>
  </div>

 
  </v-app>
</template>
<script>

import Navbar from '@/components/Navbar'

export default {
  components:{ Navbar},
  data () {
    return {
          dialog: false,
          headers: [
            {
              text: 'categoryname',
              align: 'left',
              sortable: false,
              value: ''
            },
            { text: 'position', value: '' },
            { text: 'Action', value: '' },
           
            
          ],
          
          categoryrules:[
              v => !!v || 'categoryname is required',
          ],
          positionrules:[
              v => !!v || 'position is required'
          ],
          contact: [],
          editedIndex: -1,
          editedItem: {
            id:'',
            categoryname: '',
            position: ''
            
            
            
          },
          defaultItem: {
            
          }
    }
  },
  computed: {
    formTitle () {
      return this.editedIndex === -1 ? 'New Category Item' : 'Edit Category Item'
    }
  },

  watch: {
    dialog (val) {
      val || this.close()
    }
  },

  created () {
    this.initialize()
  },

  methods: {
    
    
    fetchcontent () {
        let url = 'http://localhost:8000/api/Categoryname/';
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

    initialize () {
      this.fetchcontent();
      
    },
    

    editItem (item) {
      this.editedIndex = this.contact.indexOf(item)
      this.editedItem = Object.assign({}, item)
      this.dialog = true
    },

    deleteItem (item) {
      
      const index = this.contact.indexOf(item)
      confirm('Are you sure you want to delete this item?') && this.contact.splice(index, 1)
      
              
              let url = 'http://localhost:8000/api/Book/'+item.id;
            fetch(url, {
               method:'delete'
               }).then((response) => {
                
                  return  response.json();
              })

    },

    close () {
      this.dialog = false
      setTimeout(() => {
        this.editedItem = Object.assign({}, this.defaultItem)
        this.editedIndex = -1
      }, 300)
    },

    save () {

       
       
     if (this.editedIndex > -1) {
          
          
            let id = this.editedItem.id;
            
              let url = 'http://localhost:8000/api/Book/'+id;
              let formData = new FormData();
                formData.append('_method','put');
                formData.append('book_name', this.editedItem.book_name);
                formData.append('isbn_no', this.editedItem.isbn_no);
                formData.append('book_price', this.editedItem.book_price);
                formData.append('product_image1',this.file);
                
              
              fetch(url, {
               method:'post',
               body: formData
              
                
                
              }).then((response) => {
                
                  return  response.json();
              })

        
        Object.assign(this.contact[this.editedIndex], this.editedItem)
        this.$router.go('about');
      } else {


        let formData = new FormData();
        
        formData.append('book_name', this.editedItem.book_name);
        formData.append('isbn_no', this.editedItem.isbn_no);
        formData.append('book_price', this.editedItem.book_price);
        formData.append('product_image1',this.file);
        
        
        
        let url = 'http://localhost:8000/api/Book';
        let dataRequest = {
          method:'post',
          body: formData

        };
       

        fetch(url,dataRequest).then((response) => {

          return response.json();
          
          

        }).then((data) => {

        
       
          console.log(data); // eslint-disable-line no-console
          
        })
         
       //this.contact.push(this.editedItem);
        this.$router.go('about');
        
        
        
      }
       
      this.close()
    }

  }
}
</script>
<style>
#about {
  background-color:black;
}
.table{
  width:80%;
  
  margin-left:19%;
  
  padding:20px;
}


</style>
