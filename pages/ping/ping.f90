program ping
   implicit none
   character(len=*), parameter :: HEADER = '<!doctype html>' //&
      '<html lang="en">' //&
      '<head><meta charset="utf-8">' //&
      '<link rel="icon" sizes="256x256" type="image/ico" href="/public/favicon.ico">'//&
      '<title>Ping!</title>' //&
      '<link rel="stylesheet" href="/styles/styles.css">' //&
      '</head>'//&
      '<body>'

   character(len=*), parameter :: FOOTER = '</body></html>'

   integer date_time(8)
   character*10 b(3)

   character(len=*), parameter :: TextFromServer = 'Hello world!'

   character(len=8) :: year = ""
   character(len=8) :: month = ""
   character(len=8) :: day= ""


   call date_and_time(b(1), b(2), b(3), date_time)

   write(year, 10) date_time(1)
10 format (I4)

   write(month, 20) date_time(2)
20 format (I4)

   write(day, 30) date_time(3)
30 format (I4)

   print '(a)', HEADER

   print '(a)', '<h1>', TextFromServer, '</h1>'

   print '(a)', '<p>'
   print '(a)', 'The day is ', year, '/', month,  '/', day, '.'
   print '(a)', '</p>'

   print '(a)', FOOTER

end program ping







