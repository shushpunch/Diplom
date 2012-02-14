// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.


$(function() {
  $("#document_user_tokens").tokenInput("/users.json", {
    crossDomain: false,
    prePopulate: $("#document_user_tokens").data("pre"),
    theme: 'facebook',
    hintText: 'Введите любую букву',
    noResultsText: 'Не найдено',
    searchingText: "Поиск..."
  });
});


$(function(){
  $('#reason_en_form,#reason_del_form,#reason_trans_form,#reason_chan_form').hide();
  $('#mod_form').grewform({
	  '#document_type_id option[value="1"]:selected':{show:'#reason_en_form'},
	  '#document_type_id option[value="4"]:selected':{show:'#reason_del_form'},
	  '#document_type_id option[value="2"]:selected':{show:'#reason_trans_form'},
	  '#document_type_id option[value="3"]:selected':{show:'#reason_chan_form'},
	  '#document_type_id option[value="5"]:selected':{show:'#div_txt_qqq3'}
	  });
});
        


//$(function(){
//  $('#div_txt_qqq1,#div_txt_qqq2').hide();
//  $('#new_document').grewform({
//	  '#document_reason_id option[value=qqq1]:selected':{show:'#div_txt_qqq1'},
//	  '#document_reason_id option[value=qqq2]:selected':{show:'#div_txt_qqq2'}
//	  });
//});


$('$id_селекта').change(function(){	alert($(this).val());
});
function getSelectedText(id){
	var s = document.getElementById(id);
	if (s.selectedIndex == -1) return "";
	return s.options[s.selectedIndex].text;
}
