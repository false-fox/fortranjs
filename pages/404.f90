program err
   implicit none
   character(len=*), parameter :: HEADER = '<!doctype html>' //&
      '<html lang="en">' //&
      '<head><meta charset="utf-8">' //&
      '<link rel="icon" sizes="256x256" type="image/ico" href="/public/favicon.ico">'//&
      '<title>404</title>' //&
      '<link rel="stylesheet" href="/styles/styles.css">' //&
      '</head>'//&
      '<body>'

   character(len=*), parameter :: FOOTER = '</body></html>'

   ! Output HTML header.
   print '(a)', HEADER
   print '(a)', '<h1>', 'Error 404', '</h1>'
   print '(a)', '<p>', 'Not found', '</p>'
   print '(a)', FOOTER

end program err

