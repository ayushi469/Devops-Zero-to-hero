# 🌍 How a Request Travels from Client to Server

Whenever a client (browser, mobile app, API, etc.) sends a request to a server, several networking processes happen before the server receives it.

The two most important steps are:

1. **DNS Resolution**
2. **TCP Three-Way Handshake**

---

# 1. DNS Resolution

Before connecting to a server, the client first needs to know the server's IP address.

Suppose you visit:

```text
https://www.google.com
```

Your browser first checks whether it already knows Google's IP address.

It looks in the following order:

```
Browser Cache
      ↓
Operating System Cache
      ↓
Router Cache
      ↓
DNS Server (ISP/Public DNS)
```

If the IP address is found, the client can directly communicate with the server.

Example:

```text
www.google.com
        ↓
142.250.183.14
```

This process is called **DNS Resolution**.

---

# 2. TCP Three-Way Handshake

After obtaining the server's IP address, the client establishes a TCP connection before sending data.

The TCP connection is created using the **Three-Way Handshake**.

```
Client                          Server

SYN        -------------------->

           <--------------------  SYN + ACK

ACK        -------------------->
```

### Step 1: SYN

The client sends a **SYN (Synchronize)** packet requesting to establish a connection.

---

### Step 2: SYN + ACK

The server acknowledges the client's request and sends back:

- SYN
- ACK

meaning:

> "I received your request, and I'm ready."

---

### Step 3: ACK

The client sends an ACK back to the server.

Now both the client and server know that the connection has been successfully established.

Only after this step can data be transmitted.

---

# Why Not a Two-Way Handshake?

Imagine only two steps:

```
Client ---- SYN ---->

      <---- ACK ----
```

The server does not know whether the client actually received its ACK.

In a **Three-Way Handshake**, both the client and the server confirm that the connection is established.

This makes the communication reliable.

---

# TCP vs UDP

Networking mainly uses two transport protocols:

- TCP (Transmission Control Protocol)
- UDP (User Datagram Protocol)

---

## TCP (Transmission Control Protocol)

TCP is a **connection-oriented** and **reliable** protocol.

It ensures:

- All packets are delivered.
- Packets arrive in the correct order.
- Lost packets are retransmitted.
- Duplicate packets are removed.
- Data integrity is maintained.

TCP uses:

- Sequence Numbers
- Acknowledgements (ACK)
- Retransmissions

If a packet is lost, TCP automatically resends it.

### Examples

- Gmail
- WhatsApp messages
- File Transfer (FTP)
- SSH
- HTTP / HTTPS

---

## UDP (User Datagram Protocol)

UDP is a **connectionless** and **fast** protocol.

It does **not** guarantee:

- Packet delivery
- Packet order
- Retransmission

Instead, it prioritizes speed over reliability.

### Examples

- Live Video Streaming
- Online Gaming
- VoIP Calls
- DNS Queries
- Live Cricket Streaming

---

# TCP vs UDP Comparison

| Feature | TCP | UDP |
|----------|-----|-----|
| Reliable | ✅ Yes | ❌ No |
| Connection | Connection-Oriented | Connectionless |
| Packet Ordering | Guaranteed | Not Guaranteed |
| Retransmission | Yes | No |
| Speed | Slower | Faster |
| Use Cases | Web, Email, SSH | Gaming, Streaming, DNS |

---

# OSI Model

The **OSI (Open Systems Interconnection) Model** is a conceptual framework that explains how data travels from one device to another over a network.

It consists of **7 layers**.

```
L7  Application
L6  Presentation
L5  Session
L4  Transport
L3  Network
L2  Data Link
L1  Physical
```

---

# Layer 7 – Application Layer

This is the layer where users interact with applications.

Examples:

- Chrome
- Firefox
- WhatsApp
- Postman
- Curl

Common Protocols:

- HTTP
- HTTPS
- FTP
- SMTP
- DNS

---

# Layer 6 – Presentation Layer

Responsible for:

- Encryption
- Decryption
- Compression
- Data Formatting

Without encryption, anyone intercepting the network traffic could read the data.

Example:

```
HTTPS
TLS/SSL Encryption
```

---

# Layer 5 – Session Layer

Responsible for:

- Establishing sessions
- Managing sessions
- Terminating sessions

Examples:

- Login sessions
- Authentication sessions
- Session cookies

---

# Layer 4 – Transport Layer

Responsible for:

- End-to-end communication
- Breaking large data into smaller segments
- Reliable delivery (TCP)
- Fast delivery (UDP)

Protocols:

- TCP
- UDP

---

# Layer 3 – Network Layer

Responsible for:

- Logical Addressing (IP Address)
- Routing
- Finding the best path to the destination

Protocols:

- IPv4
- IPv6
- ICMP

Devices:

- Router

---

# Layer 2 – Data Link Layer

Responsible for:

- MAC Address
- Frames
- Error Detection
- Communication inside the same local network

Device:

- Switch

---

# Layer 1 – Physical Layer

Responsible for transmitting data as:

- Electrical Signals
- Optical Signals
- Radio Signals

Examples:

- Ethernet Cable
- Fiber Cable
- Wi-Fi Signals

---

# OSI Model Summary

| Layer | Name | Examples |
|-------|------|----------|
| L7 | Application | HTTP, HTTPS, FTP, DNS |
| L6 | Presentation | SSL/TLS, Encryption, Compression |
| L5 | Session | Login Sessions |
| L4 | Transport | TCP, UDP |
| L3 | Network | IP, Routing |
| L2 | Data Link | MAC Address, Switch |
| L1 | Physical | Cable, Fiber, Wireless Signals |

---

# TCP/IP Model

Although the OSI model is useful for learning networking concepts, **the Internet actually uses the TCP/IP model**.

The TCP/IP model has **4 layers**.

```
Application Layer
Transport Layer
Internet Layer
Network Access Layer
```

---

## 1. Application Layer

This layer combines the responsibilities of OSI Layers 5, 6, and 7.

Protocols:

- HTTP
- HTTPS
- FTP
- SMTP
- DNS
- SSH

This is where applications such as Chrome, Postman, or WhatsApp communicate with the network.

---

## 2. Transport Layer

Responsible for end-to-end communication.

Protocols:

- TCP
- UDP

Functions:

- Reliable communication
- Segmentation
- Flow control
- Error recovery

---

## 3. Internet Layer

Responsible for:

- IP Addressing
- Routing
- Packet forwarding

Protocols:

- IPv4
- IPv6
- ICMP

Routers work mainly at this layer.

---

## 4. Network Access Layer

This layer handles communication over the physical network.

It is responsible for:

- MAC Addresses
- Ethernet
- Wi-Fi
- Frames
- Physical transmission

Devices:

- Switches
- Network Interface Cards (NICs)

---

# OSI vs TCP/IP

| OSI Model | TCP/IP Model |
|------------|--------------|
| Application | Application |
| Presentation | Application |
| Session | Application |
| Transport | Transport |
| Network | Internet |
| Data Link | Network Access |
| Physical | Network Access |

---

# Interview Tips for DevOps Engineers

You should be comfortable answering:

- What is an IP Address?
- What is a Subnet?
- What is CIDR?
- Difference between Public and Private Subnet?
- Explain DNS Resolution.
- Explain the TCP Three-Way Handshake.
- Difference between TCP and UDP.
- Explain all OSI layers.
- Difference between the OSI and TCP/IP models.
- At which OSI layer does a Router work?
- At which OSI layer does a Switch work?
- Why is TCP used for HTTP/HTTPS?
- Why does DNS commonly use UDP?
