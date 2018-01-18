# N Factoriel 
An arithmetic circuit with simple basic handshaking is to be designed here. Design a sequential circuit for calculating n-factorial, where n is an 8-bit integer, and the result is a 32-bit integer.  
# How it works?
The circuit has a 1-bit start input, an 8-bit nBus input, a 1-bit done output, and a 32-bit nfBus data output. When a complete positive pulse appears on start, the 8-bit data will be read from the nBus and factorial calculation begins. When completed, the done output becomes 1 indicating that the output bus has a valid factorial value of the input. This signal remains asserted until the next calculation is to start.  

