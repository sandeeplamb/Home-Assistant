<p align="center">
  <img src="img/hass.png"> </image>
</p>

# Home-Assistant Configure Duck-DNS

[Duck-DNS](https://www.duckdns.org/) is a free service which will point a DNS (sub domains of duckdns.org) to an IP of your choice.

This IP can also be your home router IP. This is example of Dyanamic DNS change(DDNS).

DDNS is a handy way for you to refer to a server/router IP with an easily rememberable name, when theserver/router IP address is likely to change often.

For example, when your router reconnects, or ec2 server reboots.

As we don't want too buy our own domain on Internet, we will use [Duck-DNS](https://www.duckdns.org/) to host our domain and then route the traffic to our server.

In case of home router, the Router IP have a lease from Service Provider for some amount of time. Once the Lease finishes, our router have a new IP-Address.

[Duck-DNS](https://www.duckdns.org/) will help us to solve this issue using regular update of IP-Address as A-Record back to our Domain-Name.

# Create Domain in DuckDNS

Go to [Duck-DNS](https://www.duckdns.org/) and sign up with the site using one authentication method.

And register your domain with any name of your choise. e.g. **homesweethomeassistant**.

After registration, you will get a subdomain name under domain *duckdns.org*.

So this is your site now.

Please note down the *token* created. We will use this token shortly.  And keeps this token secret. Never share.

# Configure Updates of IP-Address

Once the router changes its IP-Address, we want some mechanism to update this IP-Address automatically in [Duck-DNS](https://www.duckdns.org/).

We will send a simple curl command to update the IP-Address in a shell-script and put the script in cron for every 15 minutes.

I made a script and you just need to run this script in the Terminal and thats it.

```
[root@WHM0005395 Home-Assistant] ☘  sh update_duck_dns.sh
OK
OK
[root@WHM0005395 Home-Assistant] ☘
```

# Put Script in CRON.

Now just put your script in CRON for every 15 min.

```
*/15 * * * * sh /root/update_duck_dns.sh
```

This script will run every 15 min and keep updating your Router-IP address every 15 min.

You don't need to worry if Internet Service Provider changes Router IP after leasing time is over.

The maximum latency for which Service will be unavailable is 15 minutes.

One can increase or decrease cron time, as per individual needs.


# Further Reading.

More details [here](https://www.home-assistant.io/docs/ecosystem/certificates/lets_encrypt/#3---set-up-a-duckdns-account)