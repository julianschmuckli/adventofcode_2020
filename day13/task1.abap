* Input declaration
DATA: lv_input               TYPE string,
      lv_times               TYPE TABLE OF i,
      lv_temp_times          LIKE lv_times,
      lv_input_earliest_ts   TYPE i,
      lv_lowest_departure    TYPE i VALUE 99999999,
      lv_lowest_departure_id TYPE i VALUE 0.

* Assign with the puzzle input.
lv_input_earliest_ts = 1001796.
lv_input = '37,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,41,x,x,x,x,x,x,x,x,x,457,x,x,x,x,x,x,x,x,x,x,x,x,13,17,x,x,x,x,x,x,x,x,23,x,x,x,x,x,29,x,431,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,19'.

DATA: lv_checked       TYPE abap_bool VALUE abap_false,
      lv_current_index TYPE i VALUE 0.

SPLIT lv_input AT ',' INTO TABLE DATA(lv_input_times).

" Filter the values
LOOP AT lv_input_times INTO DATA(lv_time).
  IF lv_time NE 'x'.
    APPEND lv_time TO lv_times.
  ENDIF.
ENDLOOP.

IF lines( lv_times ) GE 1.
  DO.
    DATA(cur_index) = sy-index.
    lv_lowest_departure = 99999999.

    LOOP AT lv_times INTO DATA(lv_cur_time). " 37, 41, 457, ...
      READ TABLE lv_temp_times INTO DATA(lv_current) INDEX sy-tabix. " Read the current state of the teno times.

      IF lv_current IS INITIAL.
        APPEND lv_cur_time TO lv_temp_times.
      ELSE.
        IF lv_current LE lv_input_earliest_ts.
          lv_current = ( lv_current / ( cur_index - 1 ) ) * cur_index.
          MODIFY lv_temp_times FROM lv_current INDEX sy-tabix. " Index from the do-loop
        ENDIF.
      ENDIF.
    ENDLOOP.

    " Find the lowest departure time.
    LOOP AT lv_temp_times INTO DATA(lv_cur_temp_time).
      IF lv_cur_temp_time LE lv_lowest_departure.
        lv_lowest_departure = lv_cur_temp_time.
        READ TABLE lv_times INTO lv_lowest_departure_id INDEX sy-tabix. " Fetch the bus id.
      ENDIF.
    ENDLOOP.

    IF lv_input_earliest_ts LE lv_lowest_departure.
      EXIT.
    ENDIF.
  ENDDO.

  DATA(lv_result) = ( lv_lowest_departure - lv_input_earliest_ts ) * lv_lowest_departure_id.

  WRITE: 'Bus ID: ' && lv_result.
ENDIF.
