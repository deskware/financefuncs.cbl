

      ****************************************
      * Program name: financefuncs.cbl
      * This program provides several examples
      * of financial function usage in
      * COMPUTE statements.
      *
      * Copyright 2000 Deskware, Inc.
      ****************************************
       1 dep_amt             PIC $$$$$.99.
       1 money_val           PIC $$$$$$$.99.
       1 payment_num         PIC -----.99.

       COMPUTE money_val = pv(10000, 0.1, 5).
       DISPLAY `The present value of a lump sum that is`&linefeed&
                `worth $10,000 5 years from now,`& linefeed&
                `assuming a 10% effective annual discount rate, is `&money_val. 

       COMPUTE money_val = fv(10000,0.1,5).
       DISPLAY linefeed &
                `The value of $10,000, at 10% effective annual interest,`&
                linefeed & `5 years from now is ` & money_val.

       COMPUTE money_val = pvannuity(1000, 0.00833, 48).
       DISPLAY linefeed&
                `The present value of 48 consecutive $1,000 monthly investments,`&
                linefeed&
                `assuming a 10% annual discount rate compounded monthly, is `&
                money_val.

       COMPUTE money_val = fvannuity(1000, 0.00833, 48).
       DISPLAY linefeed&`The value of $1,000 monthly investments`&linefeed&
                        `at 10% annual interest compounded monthly,`&linefeed&
                        `48 months from now is `&money_val.

       COMPUTE money_val = ANNUITY(15000,0.00833,48).
       DISPLAY linefeed&`Loan payment for 48 month, `&linefeed&
               `$15,000 loan at 10% annual interest,`&linefeed&
               `compounded monthly = `&money_val. 

       COMPUTE money_val = ANNUITYFV(20000,0.00833,48).
       DISPLAY linefeed&`Annuity amount for 48 month payment period`&linefeed&
               `if future value at end of 48 months is $20,000,`&linefeed&
               `assuming 10% annual interest compounded monthly = `&money_val.

       COMPUTE payment_num = numpmts(10000, 1500, 0.1).
       DISPLAY linefeed&`The number of annual payments necessary to equal `&
               linefeed&`$10,000 of present value, given`&
               linefeed&`$1,500 annuity payments, and a`&
               linefeed&`10% effective annual interest rate, is`&payment_num. 

       COMPUTE payment_num = numpmts(10000, 1000, 0.1).
       DISPLAY linefeed&`The number of annual payments necessary to equal `&
               linefeed&`$10,000 of present value, given`&
               linefeed&`$1,000 annuity payments, and a`&
               linefeed&`10% effective annual interest rate, is`&payment_num. 

       COMPUTE dep_amt = DDBAMT(10000,5,2,0).
       DISPLAY linefeed&`Using the double declining balance depreciation method, given`&
               linefeed&`Cost = $10,000,`&
               linefeed&`Life = 5 (years),`&
               linefeed&`Period of interest = 2 (end of second year),`&
               linefeed&`Salvage value of asset = $0,`&
               linefeed&`the depreciation amount is ` & dep_amt.

       COMPUTE dep_amt = SYDAMT(10000,5,2,0).
       DISPLAY linefeed&`Using the sum-of-years' digits depreciation method, given`&
               linefeed&`Cost = $10,000,`&
               linefeed&`Life = 5 (years),`&
               linefeed&`Period of interest = 2 (end of second year),`&
               linefeed&`Salvage value of asset = $0,`&
               linefeed&`the depreciation amount is ` & dep_amt.

       COMPUTE dep_amt = STRLINEAMT(10000,5,0).
       DISPLAY linefeed&`Using the straight line depreciation method, given`&
               linefeed&`Cost = $10,000,`&
               linefeed&`Life = 5 (years),`&
               linefeed&`Salvage value of asset = $0,`&
               linefeed&`the yearly depreciation amount is ` & dep_amt.
