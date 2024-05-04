MODULE c_footer
    IMPLICIT NONE
    PRIVATE
  
    PUBLIC :: footer
  
  CONTAINS
  
    SUBROUTINE footer()
      PRINT '(a)', "<p>Copyright 2022 (C) falsefox</p></body></html>"
    END SUBROUTINE footer
  
  
  
  END MODULE c_footer