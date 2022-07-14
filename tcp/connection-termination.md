# TCP Connection Termination
---

- [ ] [TCP Connection Termination - geeksforgeeks](https://www.geeksforgeeks.org/tcp-connection-termination/)

In TCP 3-way Handshake Process we studied that how connections are established between client and server in Transmission Control Protocol (TCP) using SYN bit segments. In this article, we will study how TCP close connection between Client and Server. Here we will also need to send bit segments to a server which FIN bit is set to 1. 

TCP supports two types of connection releases like most connection-oriented transport protocols:

- Graceful connection release : In the Graceful connection release, the connection is open until both parties have closed their sides of the connection. 
- Abrupt connection release : In an Abrupt connection release, either one TCP entity is forced to close the connection or one user closes both directions of data transfer.

## Abrupt connection release
---
An abrupt connection release is carried out when an RST segment is sent. An RST segment can be sent for the below reasons: 
- When a non-SYN segment was received for a non-existing TCP connection. 
- In an open connection, some TCP implementations send an RST segment when a segment with an invalid header is received. This will prevent attacks by closing the corresponding connection. 
- When some implementations need to close an existing TCP connection, they send an RST segment. They will close an existing TCP connection for the following reasons: 
  - Lack of resources to support the connection
  - The remote host is now unreachable and has stopped responding.
When a TCP entity sends an RST segment, it should contain 00 if it does not belong to any existing connection else it should contain the current value of the sequence number for the connection and the acknowledgment number should be set to the next expected in- sequence number on this connection.

## Graceful Connection Release
---
The common way of terminating a TCP connection is by using the TCP header’s FIN flag. This mechanism allows each host to release its own side of the connection individually.

How mechanism works In TCP :

- Step 1 (FIN From Client) : Suppose that the client application decides it wants to close the connection. (Note that the server could also choose to close the connection). This causes the client to send a TCP segment with the FIN bit set to 1 to the server and to enter the FIN_WAIT_1 state. While in the FIN_WAIT_1 state, the client waits for a TCP segment from the server with an acknowledgment (ACK).
- Step 2 (ACK From Server) : When the Server received the FIN bit segment from Sender (Client), Server Immediately sends acknowledgement (ACK) segment to the Sender (Client).
- Step 3 (Client waiting) : While in the FIN_WAIT_1 state, the client waits for a TCP segment from the server with an acknowledgment. When it receives this segment, the client enters the FIN_WAIT_2 state. While in the FIN_WAIT_2 state, the client waits for another segment from the server with the FIN bit set to 1.
- Step 4 (FIN from Server) : The server sends the FIN bit segment to the Sender(Client) after some time when the Server sends the ACK segment (because of some closing process in the Server).
- Step 5 (ACK from Client) : When the Client receives the FIN bit segment from the Server, the client acknowledges the server’s segment and enters the TIME_WAIT state. The TIME_WAIT state lets the client resend the final acknowledgment in case the ACK is lost. The time spent by clients in the TIME_WAIT state depends on their implementation, but their typical values are 30 seconds, 1 minute, and 2 minutes. After the wait, the connection formally closes and all resources on the client-side (including port numbers and buffer data) are released.

In the below Figures illustrate the series of states visited by the server-side and also the Client-side, assuming the client begins connection tear-down. In these two state-transition figures, we have only shown how a TCP connection is normally established and shut down. 

Here we have not described what happens in certain scenarios like when both sides of a connection want to initiate or shut down at the same time. If you are interested in learning more about this and other advanced issues concerning TCP, you are encouraged to see Stevens’comprehensive book.
