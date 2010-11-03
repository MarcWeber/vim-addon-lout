let s:efm = 'set efm=%f:%l:%c:\ %m'
call actions#AddAction('run lout (ps)',  {'action': funcref#Function('actions#CompileRHSSimple', {'args': [[s:efm], ["lout", "-a", "-PDF", "-o", funcref#Function('return "./".expand("%:r:t").".ps"')   , funcref#Function('return expand("%")')]]})})
call actions#AddAction('run lout (eps)', {'action': funcref#Function('actions#CompileRHSSimple', {'args': [[s:efm], ["lout", "-a", "-EPS" , "-o",  funcref#Function('return "./".expand("%:r:t").".eps"'), funcref#Function('return expand("%")')]]})})
call actions#AddAction('run lout (pdf)', {'action': funcref#Function('actions#CompileRHSSimple', {'args': [[s:efm], ["lout", "-a", "-o", funcref#Function('return "./".expand("%:r:t").".pdf"')          , funcref#Function('return expand("%")')]]})})
