CLASS zleg_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zleg_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_art TYPE STANDARD TABLE OF zleg_tab_art.

  it_art = VALUE #(
  ( client = sy-mandt id_art = 1 descr = 'Mini colores' desc2 = 'Un solo estuche, con mini colores'
    color = 'Varios' Piezas = 12 stock = 10
    URL = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-Kaco-Kalor-Color-Pencil-Set-02_7aa8d6df-b807-4b3a-aded-4eb4f4d4e0b4_600x.jpg?v=1771031614' )

  ( client = sy-mandt id_art = 2 descr = 'MONTHLY PLANNER' desc2 = 'Deal para planificar tus metas y proyectos'
    color = 'Café' Piezas = 1 stock = 100
    URL = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-1_c5c1f533-8cbd-4cab-b7d8-8fe1125dff3c_600x.jpg?v=1700616264' )

  ( client = sy-mandt id_art = 3 descr = 'Marcadores' desc2 = 'Para identificar los resultados en el reporte'
    color = 'Varios' Piezas = 10 stock = 20
    URL = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-stabilo-boss-1_400x.jpg?v=1602029211' )

 ( client = sy-mandt id_art = 4 descr = 'Lápiz' desc2 = 'Para anotaciones que se puedan eliminar fácilmente'
    color = 'Rosas' Piezas = 3 stock = 1
    URL = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-lapices-canciones-06_400x.jpg?v=1772503699' )

   ).

  INSERT zleg_tab_art FROM TABLE @it_art.
  IF sy-subrc = 0.
    out->write( 'Write successful' ).
  ELSE.
    out->write( 'Insert Wrong' ) .
  ENDIF.

  ENDMETHOD.
ENDCLASS.
