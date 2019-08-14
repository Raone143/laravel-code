<template>
    <nav>
        <v-toolbar flat app color="black">
            <v-toolbar-side-icon color="grey" @click="drawer = !drawer"></v-toolbar-side-icon>
            <v-toolbar-title class="text-uppercase white--text">
                <span class="font-weight-light">Dashboard</span>
                <span>App</span>
            </v-toolbar-title>
            <v-spacer></v-spacer>
            <ul>
            
            <li ><v-btn slot="activator" color="success" @click="logout" dark class="mb-2">signout<v-icon right>exit_to_app</v-icon></v-btn></li>
            
            </ul>
        </v-toolbar>
        <v-navigation-drawer
        v-model="drawer"
        :mini-variant="mini"
        absolute
        dark
        temporary
      >
        <v-list class="pa-1">
          <v-list-tile v-if="mini" @click.stop="mini = !mini">
            <v-list-tile-action>
              <v-icon>chevron_right</v-icon>
            </v-list-tile-action>
          </v-list-tile>
  
          <v-list-tile avatar tag="div">
            <v-list-tile-avatar>
              <img src="https://randomuser.me/api/portraits/men/85.jpg">
            </v-list-tile-avatar>
  
            <v-list-tile-content>
              <v-list-tile-title>John Leider</v-list-tile-title>
            </v-list-tile-content>
  
            <v-list-tile-action>
              <v-btn icon @click.stop="mini = !mini">
                <v-icon>chevron_left</v-icon>
              </v-btn>
            </v-list-tile-action>
          </v-list-tile>
        </v-list>
  
        <v-list class="pt-0" dense>
          <v-divider light></v-divider>
  
          <v-list-tile
            v-for="item in items"
            :key="item.title"
            click=""
          >
            <v-list-tile-action>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-tile-action>
  
            <v-list-tile-content>
              <v-list-tile-title>{{ item.title }}</v-list-tile-title>
            </v-list-tile-content>
          </v-list-tile>
        </v-list>
      </v-navigation-drawer>

    </nav>
</template>
<script>
export default{
    data() {
        return {
                drawer: null,
                items: [
                    { title: 'Home', icon: 'dashboard' },
                    { title: 'Products', icon: 'question_answer' },
                    { title: 'Categories', icon: 'add_shopping_cart' }
                ],
                mini: false,
                right: null
                    }
    },
    methods: {

    logout() {
        let url = 'http://localhost:8000/api/logout';
        let headers = {
            'method' : 'post'
          };
          fetch(url,headers).then((response) => {
            
              this.$router.push('adminlogin');
          })



    }
       
    },
    computed: {
      loggedIn() {
        return this.$store.getters.loggedIn
      }
    }
}
</script>
<style>
li a {
    
    padding: 6px 16px;
    text-decoration: none;
    background-color: #ababab;
    font-size:20px;
    color:white;
    font-family:Arial, Helvetica, sans-serif;
    font-weight: normal;
    

    
}
</style>
