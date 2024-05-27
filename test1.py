import socket
import psutil

def get_device_info():
    hostname = socket.gethostname()
    ip_address = socket.gethostbyname(hostname)

    # Get RAM information
    ram = psutil.virtual_memory()
    ram_total = ram.total / (1024 ** 3)
    ram_used = ram.used / (1024 ** 3)
    ram_free = ram.free / (1024 ** 3)

    # Get disk information
    disk = psutil.disk_usage('/')
    disk_total = disk.total / (1024 ** 3)
    disk_used = disk.used / (1024 ** 3)
    disk_free = disk.free / (1024 ** 3)

    print(f"Device Name: {hostname}")
    print(f"IP Address: {ip_address}")
    print(f"RAM Total: {ram_total:.2f} GB")
    print(f"RAM Used: {ram_used:.2f} GB")
    print(f"RAM Free: {ram_free:.2f} GB")
    print(f"Disk Total: {disk_total:.2f} GB")
    print(f"Disk Used: {disk_used:.2f} GB")
    print(f"Disk Free: {disk_free:.2f} GB")

get_device_info()
