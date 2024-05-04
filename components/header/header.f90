MODULE c_header
    IMPLICIT NONE
    PRIVATE
    PUBLIC :: header
 
 
 CONTAINS
    SUBROUTINE header()
        character(len=*), parameter :: HeaderContent = ""//&
        "<div id='headerContainer'>"//&
        "Webtran <a href='/#'>Home</a> <a href='/docs'>Documentation</a>"//&
        "</div>"

        print '(a)', HeaderContent
     
    END SUBROUTINE header
 
 
 
 END MODULE c_header
 