program ping
    USE c_footer
    USE c_header
    implicit none
    character(len=*), parameter :: Head = '<!doctype html>' //&
       '<html lang="en">' //&
       '<head><meta charset="utf-8">' //&
       '<link rel="icon" sizes="256x256" type="image/ico" href="/public/favicon.ico">'//&
       '<title>Documentation</title>' //&
       '<link rel="stylesheet" href="/styles/styles.css">' //&
       '<script type="text/javascript" src="https://livejs.com/live.js"></script>'//&
       '</head>'//&
       '<body>'

    character(len=*), parameter :: CONTENT = '<div class="content">' //&
        '<h1> Documentation </h1>' //&
        '<div class="content">' //&
        '<h2> Installation </h2>' //&
        '<div class="content">' //&
        '<p> Only Linux is supported as of now. </p>' //&
        '<h3> Dependencies </h3>' //&
        '<p> Ensure NodeJS and NPM is installed. </p>'  //&
        '<p> Install $ <code>sudo apt install gfortran spawn-fcgi</code> </p>' //&
        '<h3> Setup </h3>' //&
        '<p>Download the sample project and run <code>npm i</code></p>' //&
        '<h3>Running</h3>' //& 
        '<p>Use <code>npm run build</code> to build your project to /build/.</p>' //&
        '<p>Use <code>npm run start</code> to host the built project.</p>' //&
        '<p>Use <code>npm run dev</code> to build, watch and host.</p>' //&
        '</div>'//&
        '<h2> Usage </h2>'//&
        '</div>'//&
        '</div>'

    !Return
    print '(a)', Head
    call header()
    print '(a)', CONTENT
    call footer()

 
 end program ping
 
 
 
 
 
 
 
 