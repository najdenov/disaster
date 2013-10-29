//=  require 'jquery'
//=  require 'jquery_ujs'
//=  require 'rails_admin/jquery.remotipart.fixed'
//=  require 'jquery.ui.effect'
//=  require 'jquery.ui.sortable'
//=  require 'jquery.ui.autocomplete'
//=  require 'jquery.ui.datepicker'
//=  require 'rails_admin/jquery.ui.timepicker'
//=  require 'rails_admin/ra.datetimepicker'
//=  require 'rails_admin/jquery.colorpicker'
//=  require 'rails_admin/ra.filter-box'
//=  require 'rails_admin/ra.filtering-multiselect'
//=  require 'rails_admin/ra.filtering-select'
//=  require 'rails_admin/ra.remote-form'
//=  require 'rails_admin/jquery.pjax'
//=  require 'jquery_nested_form'
//=  require 'rails_admin/ra.nested-form-hooks'
//=  require 'bootstrap'
//=  require 'rails_admin/ra.widgets'
//=  require 'rails_admin/ui'
//=  require 'rails_admin/custom/ui'
//=  require 'tinymce-jquery'
//=  require 'rails_admin/caption'

function tinymce_load(){
tinymce.init({
selector: "textarea",
plugins: "code", "image"
//plugins: [
//"advlist autolink lists link image charmap print preview anchor",
//"searchreplace visualblocks code fullscreen autoresize",
//"insertdatetime media table contextmenu paste"
//],
//menu : "core",
//toolbar: "undo redo | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link"
});
}
$(window).load(tinymce_load());
$(document).on('pjax:complete', tinymce_load );

