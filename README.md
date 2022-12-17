# DNS Monitor

This is a Bash script that monitors DNS TXT records for a specified hostname and prints the current date and time every time a specified substring is detected.

## Usage

To run the script, follow these steps:

1. Make sure you have the `dig` command installed. If it is not installed, you can install it with the following command:
sudo apt-get install dnsutils
2. Run the script with the following command:
./script.sh

The script will run indefinitely, printing the current date and time every time it detects the specified substring in any of the DNS TXT records for the specified hostname.

## Customization

You can customize the behavior of the script by modifying the following variables at the top of the script:

- `hostname`: the hostname to monitor (default: "futurestay.com")
- `interval`: the interval in seconds between checks (default: 5)
- `substring`: the substring to search for in the TXT records (default: "google-site")
