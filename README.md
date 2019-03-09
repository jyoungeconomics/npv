# npv
This code builds a function in R that can calculate the Net Present Value of Future Cash Flow Payments

You as the researcher must specify the following:
(i) The cash outlay/investment cost
(ii) The (average) annual cash flow payment amount
(iii) The time horizon - MUST be in the same time units (e.g. years) as the compounding
(iv) The discount rate (open to economic assumption or business savvy)

The salvage value payment at the end of the time horizon is optional, assumed to be 0 if that argument in the function is left blank. 

There is no limit to the decimal places of the discount rate, but it must be expressed in decimal form (e.g. "5%" ==> "0.05").

I have found no bugs yet, but keep an eye out and let me know. Also feel free to let me know if there are additional features that 
you would find useful (e.g. comparing NPV of two or more investments, bootstrapping confidence intervals, plotting).
