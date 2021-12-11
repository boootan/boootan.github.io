import secrets
import os

def main():
    generated_key = secrets.token_urlsafe(24)
    file = open('key.txt', 'w')
    file.writelines(generated_key)

if __name__ == '__main__':
    main()
