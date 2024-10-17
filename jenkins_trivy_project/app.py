import sqlite3
import os

# Vulnerable to Hardcoded Secret
SECRET_KEY = "mysecretkey123"

def connect_to_database():
    # Vulnerable to SQL Injection
    conn = sqlite3.connect('example.db')
    return conn

def get_user(username):
    conn = connect_to_database()
    cursor = conn.cursor()
    
    # Vulnerable to SQL Injection
    cursor.execute(f"SELECT * FROM users WHERE username = '{username}'")
    result = cursor.fetchone()
    conn.close()
    
    return result

def file_access():
    # Vulnerable to Arbitrary File Access
    file_path = input("Enter the file path: ")
    
    # Arbitrary File Access vulnerability (reads any file)
    if os.path.exists(file_path):
        with open(file_path, 'r') as file:
            return file.read()
    else:
        return "File does not exist."

def main():
    username = input("Enter username: ")
    user = get_user(username)
    
    if user:
        print(f"Welcome {user[1]}!")
    else:
        print("User not found!")
    
    # Vulnerable function call
    print(file_access())

if __name__ == "__main__":
    main()
