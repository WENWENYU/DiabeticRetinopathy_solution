import http.client
# conn = http.client.HTTPConnection('127.0.0.1', port=8002)

# conn = http.client.HTTPConnection('yq01-idl-gpu-offline80.yq01.baidu.com', port=8002)

conn = http.client.HTTPConnection('yq01-idl-gpu-online9.yq01.baidu.com', port=8003)

# conn = http.client.HTTPConnection("face.baidu.com")

data = open('/home/weidong/data/3/71541.jpg', 'rb').read()

headers = {"Content-type": "image/jpeg", "Accept": "q=0.6, image/jpeg", "Content-Length": str(len(data)), "algo":"zz"}
# headers = {"Content-type": "image/jpeg", "Accept": "q=0.6, image/jpeg", "Content-Length": str(len(data))}

# conn.request('POST', "/test/for/medical", data, headers)
# conn.request('GET', "/test/for/medical", data, headers)
conn.request('POST', "", data, headers)
# conn.request('POST', "", data, headers)

r = conn.getresponse()

print('The image dr level is: {}'.format(r.headers['pragma']))
print('The image dr level is: {}'.format(r.headers['pragma']))
print('The image dr level propobility is: {}'.format(r.headers['pragma']))

image_uid = r.headers['image_uid']

print(image_uid)

headers = {"Content-type": "text/plain", "level":"3", "image_uid":image_uid}

# conn.request('GET', "", "", headers=headers)
conn.request('POST', "/test/for/medical", "", headers=headers)


# 这句似乎是必要的，'''r = conn.getresponse()'''，没有这句，服务器上不执行这一段
r = conn.getresponse()

print('end')

conn.close()