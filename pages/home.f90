! webapp.f90
program home
   USE c_footer
   USE c_header
   implicit none

   character(len=*), parameter :: Head = '<!doctype html>' //&
      '<html lang="en">' //&
      '<head><meta charset="utf-8">' //&
      '<link rel="icon" sizes="256x256" type="image/ico" href="/public/favicon.ico">'//&
      '<title>Fortran</title>' //&
      '<link rel="stylesheet" href="/styles/styles.css">' //&
      '<script type="text/javascript" src="https://livejs.com/live.js"></script>'//&
      '</head>'//&
      '<body>'

   character(len=*), parameter :: some_dynamic_text = 'Hello, from Fortran!'

   ! Output HTML header.
   print '(a)', Head
   call header()
   print '(a)', '<h1>', some_dynamic_text, '</h1>'
   print '(a)', '<p>', 'Why use fortran as a web framework?', '</p>'
   print '(a)', '<div class="content">'
   print '(a)', '<h3>','It&apos;s more secure than fort knox. 🔒 ','<small>','*','</small>','</h3>'
   print '(a)', '<p>','Who programs in fortran? There&apos;s no one who can hack you.','</p>'
   print '(a)', '<h3>','It&apos;s', '<i>', ' light', '</i>', 'speed 🚀' ,'</h3>'
   print '(a)', '<p>','Low level preformance with high level simplicity in my HTML? Yes please!','</p>'
   print '(a)', '<h3>','It&apos;s stupid simple 🪑','</h3>'
   print '(a)', '<p>','Web frameworks are too bloated and slow these days, we return back to basics.','</p>'
   print '(a)', '<p>', '<small>', '* We make no guarantees on safety or security', '</small>', '</p>'
   print '(a)', '</div>'
   print '(a)', '<h3>', 'Still not convinced?',  '</h3>'
   print '(a)', '<p>', 'Don&apos;t believe me, believe the data.',  '</p>'
   print '(a)', '<img src="/public/proof.png" width="75%" style="border-radius:1em">'
   print '(a)', '<p>', '<small>', 'Citation: Trust me bro.', '</small>', '</p>'


   print '(a)', '<h3>', 'STILL not convinced?',  '</h3>'
   print '(a)', '<p>', 'Well, dont ask me. Ask professionals..',  '</p>'
   print '(a)', '<div class="content">'

   print '(a)', '<blockquote>','<span>','Good web framework is as little web framework as possible.','</span>'
   print '(a)', '<author>','Some German motherfucker','</author>','</blockquote>'
   print '(a)', '</div>'
   call footer()


end program home
