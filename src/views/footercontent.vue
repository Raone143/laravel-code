<template>
    <div id="footer">
    <v-card dark flat-tile class=" white-text text-xs-center flex">
        <v-card-text>
            <v-btn >
                <v-icon size="24px">fab fa-facebook</v-icon>
            </v-btn>
            <v-btn><v-icon size="24px">fab fa-twitter</v-icon></v-btn>
             <v-btn><v-icon size="24px">fab fa-google-plus</v-icon></v-btn>
              <v-btn><v-icon size="24px">fab fa-linkedin</v-icon></v-btn>
        </v-card-text>
        <v-divider></v-divider>
        <v-card-text>
            Shopping cart footer text here
        </v-card-text>
        <v-card-text class="white-text text-center">
            &copy;2019-<strong>Shopping cart</strong>
        </v-card-text>
    </v-card>
    </div>
</template>
<script>

export default {
    data() {
        return {
            
        }
    }
}
</script>
<style>
#footer {
  background-color:black;    
  color:white;
}
</style>