create function message_ref(
    date_from timestamp,
    date_to timestamp
) return sys_refcursor as
    ret_cursor sys_refcursor;
begin
    open ret_cursor for
        select m.id,
               m.name,
               u.rating,
               m.message_date,
               m.text
        from message m
                 left join users u on m.name = u.name
        where m.message_date between date_from and date_to;
    return ret_cursor;
end message_ref;
/

