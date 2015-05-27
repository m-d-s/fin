code MyProgram

-----------------------------  main  ---------------------------------

  function main ()
    --
    -- This is a generic User-Level program.  Feel free to modify it and
    -- use it during debugging.
    --
      var
        retVal: int
      print ("\nMy user-level program is running!!!\n")
      retVal = Sys_Create ("Test")
      printInt(retVal)
      Sys_Shutdown ()

    endFunction

endCode
