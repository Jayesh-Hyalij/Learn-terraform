# Port Forwarding Documentation

## Introduction to Port Forwarding

Port forwarding, also known as port mapping, is a networking technique that allows external devices to access services on a private network by redirecting communication requests from one IP address and port number combination to another.

It is commonly used to enable remote access to services hosted within a private local-area network (LAN) from outside networks, such as the internet.

Port forwarding is essential in environments where Network Address Translation (NAT) is used, as NAT hides internal IP addresses behind a single public IP.

## Why Port Forwarding is Needed

- To enable access to services hosted on private networks from external networks.
- To allow remote management of devices such as servers, IP cameras, gaming consoles, and home automation systems.
- To facilitate communication in NAT environments where internal IP addresses are not directly accessible.
- To improve security by exposing only specific ports rather than entire devices.

## How Port Forwarding Works

When a request arrives at a router or firewall on a specific external port, the device forwards the request to a designated internal IP address and port.

This involves configuring the router or firewall to listen on the external port and redirect traffic to the appropriate device inside the network.

The process ensures that services running on private IP addresses can be accessed from outside the local network.

## Types of Port Forwarding

- **Local Port Forwarding:** Redirects traffic from a local port on the client machine to a remote server. Commonly used in SSH tunneling.
- **Remote Port Forwarding:** Allows a remote server to access a local service by forwarding a port from the server to the client.
- **Dynamic Port Forwarding:** Uses a SOCKS proxy to dynamically forward traffic through an SSH tunnel, allowing flexible port forwarding.

## Practical Examples

### Example 1: Forwarding HTTP Traffic to a Web Server

Assuming a web server is running on a local machine at IP 192.168.1.100 on port 80, configure the router to forward external port 8080 to internal port 80.

This allows users to access the web server via `http://<router_public_ip>:8080`.

### Example 2: SSH Port Forwarding

To access a remote SSH server through a firewall, use local port forwarding:

```bash
ssh -L 2222:localhost:22 user@remote_host
```

This command forwards local port 2222 to the remote host's SSH port 22, allowing SSH access through the tunnel.

### Example 3: Docker Container Port Forwarding

When running Docker containers, port forwarding is used to map container ports to host machine ports:

```bash
docker run -d -p 8080:80 nginx
```

This maps port 80 inside the container to port 8080 on the host, making the web server accessible via `http://localhost:8080`.

## Configuring Port Forwarding on Routers

Port forwarding configuration varies by router model and manufacturer. Generally, the steps include:

1. Access the router's web interface (usually via `http://192.168.1.1` or similar).
2. Navigate to the port forwarding or virtual server section.
3. Add a new port forwarding rule specifying:
   - External port (the port on the router to listen on).
   - Internal IP address (the IP of the device to forward traffic to).
   - Internal port (the port on the device to forward traffic to).
   - Protocol (TCP, UDP, or both).
4. Save the settings and restart the router if necessary.

## Related Networking Concepts

- **Network Address Translation (NAT):** Translates private IP addresses to a public IP address for internet access.
- **Firewall:** Controls incoming and outgoing network traffic based on security rules.
- **DMZ (Demilitarized Zone):** A network area that exposes services to the internet while protecting the internal network.

## Security Considerations

- Only forward ports that are necessary for your applications.
- Use strong authentication and encryption on exposed services.
- Regularly monitor logs and network traffic for suspicious activity.
- Keep router firmware and software up to date to patch vulnerabilities.

## References

- Official Docker Networking Documentation: [https://docs.docker.com/network/](https://docs.docker.com/network/)
- General Port Forwarding Guide: [https://www.howtogeek.com/66214/how-to-forward-ports-on-your-router/](https://www.howtogeek.com/66214/how-to-forward-ports-on-your-router/)
- SSH Port Forwarding Guide: [https://www.ssh.com/academy/ssh/tunneling/example](https://www.ssh.com/academy/ssh/tunneling/example)

---

This documentation provides an in-depth overview and practical guidance on port forwarding for networking and Docker use cases.
