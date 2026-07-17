# 🌐 Networking Basics for DevOps Engineers

Networking is one of the fundamental skills every DevOps Engineer should understand. Most cloud services, Kubernetes clusters, CI/CD pipelines, and servers communicate over a network.

---

# 📖 Basic Terminology

## 1. IP Address

An **IP (Internet Protocol) Address** is a unique identifier assigned to every device connected to a network or the internet.

**Example (IPv4):**

```text
192.168.1.10
```

### IPv4 Facts

- IPv4 consists of **32 bits**.
- It is divided into **4 octets**.
- Each octet contains **8 bits (1 byte)**.

```text
IPv4 = 32 bits

8 bits     8 bits     8 bits     8 bits
--------   --------   --------   --------
192        168        1          10
```

Each octet can store values from:

```text
0 - 255
```

Binary representation:

```text
11111111.11111111.11111111.11111111
```

Since each octet contains **8 bits**, there are:

```text
2⁸ = 256 possible values
```

Hence each octet ranges from:

```text
0 to 255
```

---

## 2. Subnet

A **Subnet (Subnetwork)** is a smaller network created by dividing a larger network.

Instead of putting all devices into one large network, we divide them into smaller groups.

### Why do we use Subnets?

- Improve security
- Better network isolation
- Easier network management
- Reduce broadcast traffic
- Efficient utilization of IP addresses

---

## 3. Private Subnet

A **Private Subnet** does **not** have direct internet access.

Servers inside a private subnet can communicate with each other but cannot be accessed directly from the internet.

**Examples**

- Database Servers
- Internal APIs
- Backend Services

---

## 4. Public Subnet

A **Public Subnet** has internet connectivity.

Resources inside a public subnet can access the internet through an **Internet Gateway**, and if configured correctly, they can also receive incoming internet traffic.

**Examples**

- Web Servers
- Bastion Hosts
- Load Balancers

---

## 5. CIDR Range

CIDR stands for:

> **Classless Inter-Domain Routing**

CIDR defines:

- Network address
- Number of available IP addresses
- Network size

CIDR notation is written as:

```text
IP Address / Prefix Length
```

Example:

```text
192.168.1.0/24
```

---

# 📚 Understanding Network Bits and Host Bits

Consider the IP address:

```text
192.168.1.2
```

If the subnet mask is:

```text
192.168.1.0/24
```

Then:

```text
192.168.1   → Network Portion
2           → Host Portion
```

The network portion remains the same for every device in that subnet.

Only the host portion changes.

Example:

```text
192.168.1.1
192.168.1.2
192.168.1.3
192.168.1.4
```

Here,

```text
192.168.1
```

is fixed, while the last number changes.

---

# 📚 Reserved IP Addresses

For a `/24` network:

```text
192.168.1.0/24
```

Some IP addresses are reserved.

| IP Address | Purpose |
|------------|---------|
| 192.168.1.0 | Network Address |
| 192.168.1.255 | Broadcast Address |

These addresses cannot be assigned to devices.

Therefore:

```text
Total IPs = 256

Reserved = 2

Usable = 254
```

---

# 📚 Calculating the Number of IP Addresses

IPv4 contains **32 bits**.

The CIDR prefix tells us how many bits belong to the network.

The remaining bits belong to the host.

### Formula

```text
Host Bits = 32 - CIDR

Total IPs = 2^(Host Bits)

Usable IPs = Total IPs - 2
```

---

# Example 1

```text
192.168.1.0/24
```

Calculation:

```text
32 - 24 = 8 Host Bits

2⁸ = 256 Total IPs

Usable IPs = 256 - 2 = 254
```

---

# Example 2

```text
192.168.1.0/30
```

Calculation:

```text
32 - 30 = 2 Host Bits

2² = 4 Total IPs

Usable IPs = 4 - 2 = 2
```

Available IPs:

```text
192.168.1.0   → Network Address
192.168.1.1   → Usable
192.168.1.2   → Usable
192.168.1.3   → Broadcast Address
```

---

# Example 3

```text
10.0.0.0/16
```

Calculation:

```text
32 - 16 = 16 Host Bits

2¹⁶ = 65,536 Total IPs

Usable IPs = 65,534
```

---

# Quick CIDR Cheat Sheet

| CIDR | Total IPs | Usable IPs |
|------|----------:|-----------:|
| /32 | 1 | 1 (Single Host) |
| /30 | 4 | 2 |
| /29 | 8 | 6 |
| /28 | 16 | 14 |
| /27 | 32 | 30 |
| /26 | 64 | 62 |
| /25 | 128 | 126 |
| /24 | 256 | 254 |
| /23 | 512 | 510 |
| /22 | 1024 | 1022 |
| /21 | 2048 | 2046 |
| /20 | 4096 | 4094 |
| /16 | 65,536 | 65,534 |

> **Note:** In AWS VPCs, AWS reserves **5 IP addresses** in every subnet instead of the usual 2.

---

# Key Takeaways

- Every device on a network has an IP address.
- IPv4 consists of **32 bits (4 octets)**.
- Each octet ranges from **0 to 255**.
- Subnets divide large networks into smaller networks.
- CIDR determines the network size.
- Host Bits = `32 - CIDR`
- Total IPs = `2^(Host Bits)`
- Usable IPs = `Total IPs - 2` *(except for `/31`, `/32`, and cloud providers like AWS, which have different rules).*
