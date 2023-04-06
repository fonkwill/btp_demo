using my.bookshop as my from '../db/data-model';
using { z001_srv_metadata as z001 } from '../srv/external/z001_srv_metadata';


service CatalogService @(requires: 'Admin') {
    @readonly entity Books as projection on my.Books;
}

service SalesService  @(requires: 'Admin') {
    @readonly entity salesorder as projection on z001.SEPM_I_SalesOrder_E;
    @readonly entity salesorderitem as projection on z001.SEPM_I_SalesOrderItem_E;
}
