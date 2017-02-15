import MainView from '../main';
import $ from "jquery"
require( 'datatables.net-bs' )( window, $ );

export default class View extends MainView {
  // Called after the view becomes active
  mount() {
    super.mount();

    console.log('ZipsIndexView mounted');
    var table = $('#zips').DataTable(
      { "processing": true,
        "serverSide": true,
        "pageLength": 25,
        "searching": true,
        "searchDelay": 1500,
        "ordering": false,
        "lengthChange": false,
        "ajax": {
           "url": "/api" + window.location.pathname
        },
        "columns": [
            { "data": "zip_code" },
            { "data": "city" },
            { "data": "state" }
        ]
      });
      table.on( 'xhr', function ( e, settings, json ) {
        console.log( 'Ajax event occurred. Returned data: ', json );
      } );
  }
  unmount() {
    super.unmount();

    // Specific logic here
    console.log('ZipsIndexView unmounted');
  }
}
