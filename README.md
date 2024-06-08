# Port Checker Script

A simple bash script to check if specific ports are open on a host.

## Overview

This script checks the status of specified ports on a host (defaulting to `localhost`) to determine if they are open or closed. It uses the `nc` (netcat) command to perform the checks.

## Usage

1. **Download the Script:**

    Save the script to a file, e.g., `check_ports.sh`.

2. **Make the Script Executable:**

    ```bash
    chmod +x check_ports.sh
    ```

3. **Run the Script:**

    ```bash
    ./check_ports.sh
    ```

## Script Details

### Function `check_port`

This function checks if a specific port is open on a specified host.

- **Parameters:**
  - `$1`: The port number to check.
  - `$2` (optional): The host to check (defaults to `localhost`).

- **Example:**

    ```bash
    check_port 80
    check_port 80 example.com
    ```

### Port List

The script includes a predefined list of ports to check:

```bash
ports=(80 443 22 53)
```

You can modify this list to include any ports you want to check.

### Example Output

```text
Port 80 is open on localhost!
Port 443 is open on localhost!
Port 22 is open on localhost!
Port 53 is open on localhost!
```

## Customizing the Script

- **Change Ports:**

    Edit the `ports` array to include the ports you want to check:

    ```bash
    ports=(80 443 22 53 8080)
    ```

- **Change Host:**

    To check ports on a different host, modify the script to pass the host as a second argument:

    ```bash
    ./check_ports.sh example.com
    ```

## Dependencies

- `nc` (netcat): Ensure `nc` is installed on your system. You can install it using your package manager, for example:

    - On Debian/Ubuntu:

        ```bash
        sudo apt-get install netcat
        ```

    - On CentOS/RHEL:

        ```bash
        sudo yum install nc
        ```

    - On macOS:

        ```bash
        brew install netcat
        ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request if you have any improvements or additional features to share.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author

[paintedman00](https://github.com/paintedman00)

Feel free to reach out if you have any questions or suggestions!

