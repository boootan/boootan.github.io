from flask import Flask, render_template, request, send_file
import hashlib

app = Flask(__name__)

@app.route('/', methods = ['GET'])
def ReturnImage():
    sharedKey = 'M-LMX71G1n1cAvACKLzi7jRipO8ZOP0G'
    IdNumber = request.args.get('IdNumber')
    filename = IdNumber + '.jpg'
    #compute hash on serverside and compare
    receivedHash = request.args.get('hash')
    computedHash = hashlib.sha1(IdNumber.encode() + sharedKey.encode())
    #if no match, return generic, else return image requested
    if computedHash.hexdigest() == receivedHash:
        return send_file(filename, mimetype = 'image/jpg')
    else:
        return send_file('generic.jpg', mimetype = 'image/jpg')



if __name__ == '__main__':
    app.run(debug=True)
