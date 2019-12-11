<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
#userTable {
  border: 2px solid #42b983;
  border-radius: 3px;
  background-color: #fff;
}
#userTable  tr td{
    border:1px solid gray;
}
.hidden{
    display: none;
}

</style>
</head>
<body>
    <div id="app">
        <p id="vuejs_date_time"></p>
        <table id="userTable">
            <thead>
                <th>id</th>
                <th>Employee name</th>
                <th>Employee code</th>
                <th>Employee Sal</th>
                <th>Action</th>
            </thead>
            <tr v-for="overviews in overview">
            <form v-bind:id="'frmemp'+overviews.id+''"  method="post">
                    <td>
                        {{overviews.id}}
                    </td>
                    <td class="text-right">
                        <span id="emp_name_hid">{{overviews.emp_name}}</span>
                        <span id="emp_name_sh"><input type="text" v-model="overviews.emp_name" name="emp_name"></span>
                    </td>
                    <td class="text-right">
                        <span id="emp_code_hid">{{overviews.emp_code}}</span>
                        <span id="emp_code_sh"><input type="text" v-model="overviews.emp_code" name="emp_code"></span>
                    </td>
                    <td class="text-right">
                        <span id="emp_sal_hid">{{overviews.emp_sal}}</span>
                        <span id="emp_sal_sh"><input type="text" v-model="overviews.emp_sal" name="emp_sal"></span>
                    </td>
                <td>
                <span>
                <input type="button" class="button" v-bind:id="'btn_edit'+overviews.id+''" v-on:click="chng_btn('frmemp'+overviews.id+'','btn_edit'+overviews.id+'', overviews.id)" value="EDIT">
                </span>
                |<span>Delete</span></td>
                </form>
            </tr>
        </table>
  </div>
 </body>
 </html>
<script>
	new Vue({
  el: "#app",
  data() {
    return {
      overview: [],
      isEdit_data: false
    }

  },
  methods: {
  getOverview() {
	$.ajax({
	   url: 'http://localhost/vue_task/fetch.php',
       type: 'get',
       dataType: 'JSON',
	   success: (response) => {
              this.overview =  response.users;
              //console.log(response);
				}
	
	   });
    },
    chng_btn(form_id,btn_id,id){
        let btn_id_val=$('#'+btn_id).val();
        let frm_data = $('#'+form_id).serialize();
        alert(frm_data);
        if(btn_id_val == 'EDIT'){
			let btn_value = $('#'+btn_id).val('SAVE');
          
            alert(frm_data);
            console.log(frm_data);
            $('#emp_name_sh').show();
            $('#emp_code_sh').show();
            $('#emp_sal_sh').show();
            $('#emp_name_hid').hide();
            $('#emp_code_hid').hide();
            $('#emp_sal_hid').hide();
            $.ajax({
                
                
						type: "POST",
						data : frm_data,
						url: 'http://localhost/vue_task/edit.php?id="+id',
						success: function(data,statusCode) {
						  if(statusCode == 'success') {
						  }
						}
					})
		}
        else{
            let btn_value=$('#'+btn_id).val('EDIT'); 
            $('#emp_name_sh').hide();
            $('#emp_code_sh').hide();
            $('#emp_sal_sh').hide();
            $('#emp_name_hid').show();
            $('#emp_code_hid').show();
            $('#emp_sal_hid').show();
        }
        
    }
  },
  
  created(){
    this.getOverview();
    $('#emp_name_sh').hide();
    $('#emp_code_sh').hide();
    $('#emp_sal_sh').hide();
  }
})
</script>
</body>
