## Configuration Low Latency Intel Ethernet
```
1. Flow Control (FlowControl)

    Set to Disabled: Flow control is used to prevent network congestion by pausing traffic if the NIC or switch buffer becomes full. In competitive gaming, it can introduce unnecessary delays, so it is best to disable it unless you're experiencing packet loss.

2. Idle Power Down Restriction (IdleRestrict)

    Set to Disabled: This setting allows the NIC to enter low-power states when idle, which can save energy. However, it can introduce delays when the NIC is waking up. Disable it to ensure the NIC is always ready for instant communication.

3. Interrupt Moderation (InterruptMo)

    Set to Disabled: Interrupt moderation can group multiple interrupts into one to reduce CPU load. While this can save resources, it also introduces latency by aggregating packets. Disable it for lower latency in gaming, where immediate responses are essential.

4. IPv4 Checksum Offload (IPChecksumOffload)

    Set to Enabled: This offload function offloads the checksum calculation to the NIC. It can improve CPU performance but doesn't directly impact latency in a significant way. Leave it enabled, as it's useful for CPU offloading without adding noticeable latency.

5. Jumbo Packet (JumboPacket)

    Set to Disabled: Jumbo frames (larger packet sizes, typically 9000 bytes) are often used in high-throughput scenarios like large file transfers, but they can cause packet fragmentation or delays when used in low-latency applications. Disable it to avoid potential issues with packet loss or delay.

6. Large Send Offload V2 (IPv4) (LsoV2IPv4) and Large Send Offload V2 (IPv6) (LsoV2IPv6)

    Set to Disabled: LSO offloads the segmentation of large TCP packets from the CPU to the NIC. However, this can increase latency as it delays sending smaller packets. Disable both for low-latency gaming, where immediate packet transmission is needed.

7. ARP Offload (PMARPOffload)

    Set to Disabled: Address Resolution Protocol (ARP) offloading can help the NIC handle ARP requests more efficiently, but in a gaming context, this is generally unnecessary and can cause delays in certain conditions. Disable ARP offload to reduce any potential network lag.

8. NS Offload (PMNSOffload)

    Set to Disabled: Neighbor Solicitation (NS) offload is similar to ARP but for IPv6. This setting is primarily useful in larger enterprise environments and may not provide significant benefits for gaming. Disable to avoid any potential latency introduced by this feature.

9. Packet Priority & VLAN (PriorityVLAN)

    Set to Disabled: VLAN tagging and packet prioritization are more relevant in networking environments with multiple types of traffic (like VoIP, video, and data). In a competitive gaming scenario, disable this to prevent added complexity and latency.

10. Speed & Duplex (SpeedDuplex)

    Set to 1000 Mbps or Auto (if supported): Ensure that the NIC is set to the highest speed supported by your network (1 Gbps is the common standard). The Auto setting is usually fine, but manually setting it to 1000 Mbps ensures no issues with speed negotiation. Don't set it to 100 Mbps unless you are troubleshooting network issues.

11. TCP Checksum Offload (IPv4) (TCPChecksum) and TCP Checksum Offload (IPv6) (TCPChecksum)

    Set to Enabled: These settings offload checksum calculations for TCP traffic to the NIC, reducing CPU load without introducing significant latency. Enable both for efficiency and lower CPU utilization without any noticeable impact on latency.

12. UDP Checksum Offload (IPv4) (UDPChecksum) and UDP Checksum Offload (IPv6) (UDPChecksum)

    Set to Enabled: Similar to TCP checksum offloading, enabling UDP checksum offloading helps offload processing from the CPU to the NIC, improving efficiency without adding latency. Enable both settings.

13. Wake on Magic Packet (WakeOnMagic)

    Set to Disabled: Wake-on-LAN features allow your NIC to wake up the system upon receiving a "magic packet." This feature is unnecessary for gaming and could introduce latency or other interruptions. Disable it for optimal gaming performance.

14. Wake on Pattern Match (WakeOnPattern)

    Set to Disabled: Similar to Wake-on-Magic, this feature can also introduce unwanted delays. Disable it to keep your NIC focused on low-latency communication without interruptions.

15. Interrupt Moderation Rate (ITR)

    Set to Lowest possible rate (or Disable): The Interrupt Moderation Rate controls how often interrupts are processed by the CPU. A higher ITR value can reduce CPU load but increase latency, while a lower value can increase CPU load but reduce latency. Set the ITR to the lowest possible value for the best gaming performance.

16. Locally Administered Address (NetworkAddress)

    Set to Default: The locally administered address is a custom MAC address. Unless you have a specific need (like network management or troubleshooting), leave this as the default (or blank) to avoid issues.

17. Wake On Magic Packet From S5 (WakeOnMagicP)

    Set to Disabled: Similar to other Wake-on-LAN features, this wakes your NIC from a deep sleep state (S5) when it receives a magic packet. Disable it to prevent any delays during gaming.
```
## Recv Segment Coalescing (IPv4) (RscIPv4)
```
Setting: Disable
Reason: RSC for IPv4 aggregates multiple incoming packets into a larger segment to reduce CPU usage. While this helps improve throughput for file transfers or general browsing, it can increase latency in real-time applications   like gaming. Disabling it ensures packets are processed immediately, reducing the delay between receiving and processing each packet.
```
## Recv Segment Coalescing (IPv6) (RscIPv6)
```
Setting: Disable
Reason: Similar to IPv4, RSC for IPv6 combines multiple packets into a larger segment, which can introduce latency due to aggregation. Disabling RSC for IPv6 ensures that packets are processed as soon as they arrive, which is crucial for maintaining low latency in competitive gaming.
```
