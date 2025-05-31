# Port Forwarding Documentation

## Introduction to Port Forwarding

Port forwarding is a network technique that allows external devices to access services on a private network by redirecting communication requests from one address and port number combination to another.

It is commonly used to allow remote computers to connect to a specific computer or service within a private local-area network (LAN).

## Why Port Forwarding is Needed

- To enable access to services hosted on private networks from external networks.
- To allow remote management of devices such as servers, cameras, or gaming consoles.
- To facilitate communication in NAT (Network Address Translation) environments.

## How Port Forwarding Works

When a request arrives at a router on a specific port, the router forwards the request to the designated internal IP address and port.

This process involves configuring the router to listen on a port and redirect traffic to the appropriate device inside the network.

## Types of Port Forwarding

- **Local Port Forwarding:** Redirects traffic from a local port to a remote server.
- **Remote Port Forwarding:** Allows a remote server to access a local service.
- **Dynamic Port Forwarding:** Uses SOCKS proxy to dynamically forward traffic.

## Practical Examples

### Example 1: Forwarding HTTP Traffic to a Web Server

Assuming a web server is running on a local machine at IP 192.168.1.100 on port 80, configure the router to forward external port 8080 to internal port 80.

This allows users to access the web server via `http://<router_public_ip>:8080`.

### Example 2: SSH Port Forwarding

To access a remote SSH server through a firewall, use local port forwarding:

```bash
ssh -L 2222:localhost:22 user@remote_host
```

This forwards local port 2222 to the remote host's SSH port.

## Configuring Port Forwarding on Routers

Port forwarding settings vary by router model. Typically, you access the router's web interface, navigate to the port forwarding section, and add rules specifying:

- External port
- Internal IP address
- Internal port
- Protocol (TCP/UDP)

## Security Considerations

- Only forward necessary ports.
- Use strong authentication on exposed services.
- Monitor forwarded ports for unauthorized access.

## References

- Official Docker Networking Documentation: [https://docs.docker.com/network/](https://docs.docker.com/network/)
- General Port Forwarding Guide: [https://www.howtogeek.com/66214/how-to-forward-ports-on-your-router/](https://www.howtogeek.com/66214/how-to-forward-ports-on-your-router/)

---

This documentation provides an overview and practical guidance on port forwarding for networking and Docker use cases.
