<p align="center">
  <img src="img/hass.png"> </image>
</p>

# Configure Router

This is easy thing to do. You just need to find out the Router IP which is generally present at the bottom of your Router.

Also the credentials to login into Router Admin GUI web page.

Once you are inside the Admin Console, change the IP-Forwarding from specific IP to the IP and Port where the Home-Assistant is Running.

Say Home-Assistant is running in your Mac which has IP-Address - 192.168.0.10 and Home-Assistant normally runs at port 8123.

So, you would like to forward the traffic from Outside IP, port 80 to 192.168.0.10, port 8123.

More details [here](https://www.home-assistant.io/docs/ecosystem/certificates/lets_encrypt/#3---set-up-a-duckdns-account)