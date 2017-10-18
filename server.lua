socket = require('socket')
port = 3030
server = socket.bind('*',port)
io.write("ListeninG To PorT "..port.."\n")
sv = server:accept()
io.write("ConnectioN EstablisheD SuccessfullY\n")

while true do
	msg = sv:receive()
	io.write(msg .. "\n")
	io.write("ServeR ResponD : ")
	sv:send(io.read() .. "\n")
end
io.read()
