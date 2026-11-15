#### CIDR & Subnetting

#### What is CIDR?
- Classless Inter-Domain Routing (CIDR) is the system that replaced the old class-A/B/C scheme in 1993. A network is written as
- address/prefix-length → 10.0.0.0/24
- The prefix length (the number after the slash) tells routers how many of the 32 bits belong to the network portion:
- 10.0.0.0/24 → 24 network bits + 8 host bits → 256 addresses (254 usable)
- 10.0.0.0/30 → 30 network bits + 2 host bits → 4 addresses (2 usable)
- CIDR lets ISPs advertise aggregated “supernets” such as 203.0.113.0/22 instead of listing a thousand individual /24 routes—shrinking global routing
  tables and conserving address space.

- Classless Inter-Domain Routing (CIDR) is a compact way to write IP address ranges and their network masks.

#### Why is CIDR notation useful?
- It lets network engineers allocate address space precisely, aggregate routes and keep routing tables smaller.

#### How is an IP address structured?
- An IPv4 address consists of four 8-bit numbers (octets) ranging from 0 to 255, separated by dots.

#### What does the number after the slash mean? (/16 /24)
- The slash value (e.g. /24) shows how many bits belong to the network prefix; the rest identify individual hosts.

#### How does this calculator help?
- Paste any IP/CIDR and it instantly shows netmask, broadcast address, usable host range and a visual bit map.

#### Example of - **10.0.0.0/16**   **10.0.1.0/24**

- **10.0.0.0**  Is IP address mein 4 parts hote hain. In parts ko Octets kehte hain. 
- 10 **Octet 1**
- 0 **Octet 2**
- 0 **Octet 3**
- 0 **Octet 4**
- Har octet = 8 bits -->> Total = 4 × 8 = 32 bits

- IP address IPv4 mein hota hai aur usmein hamesha 32 bits hote hain.

- Computer IP ko Binary (0 aur 1) mein samajhta hai.

#### Example:  **10.0.0.0**

- Binary:
- 00001010.00000000.00000000.00000000
- Har 8 binary digits milkar ek octet banate hain.

#### CIDR kya hota hai?   Classless Inter-Domain Routing
- Example: **10.0.0.0/16**

- Ismein do cheezein hain:
- 10.0.0.0 = IP address / network address
- /16 = Prefix length, yaani Network bits ki sankhya
- Yaani /16 ka matlab pehle 16 bits Network ke liye reserved hain.Aur baaki bits Host ke liye.

#### Formula:

- Network Bits = CIDR = /16 /24 ye wala number
- Host Bits = 32 - CIDR & Network Bits
- Total IPs = 2 ^ Host Bits

- Ab values rakho:

CIDR = 16
Host Bits = 32-16 = 16

**Total IP addresses ka formula**
- Total IPs = 2 ^ Host Bits
- 2^16 = 65,536   Tumhare /16 VPC mein total 65,536 IP addresses hain.

#### IP range kaise niklegi?
**10.0.0.0/16**

#### Range:
- Starting: 10.0.0.0
- Ending: 10.0.255.255

#### CIDR kaise decide karna hai?

**Maan lo tumhe ek subnet banana hai jisme kam se kam 50 IP addresses chahiye**

- Ab /26 check karte hain:

**Host Bits** = 32-26 = 6
Total IPs = 2^6 = 64 IPs
- AWS mein 5 reserve hote hain:
**Usable IPs = 64-5 = 59 IPs
- Toh /26 tumhari requirement ke liye sufficient hai.
- Yaani requirement ke according CIDR choose kar sakte ho.