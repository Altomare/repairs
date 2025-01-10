from PIL import Image


img = Image.new('RGB', (64 * (8 + 2), 64))

with open("/tmp/cg/U416.bin", "rb") as cg:
	idx = 0
	character = cg.read(16)
	while (character):
		for i in range(15):
			for j in range(8):
				if character[i] & (1 << (7-j)):
					x = (idx % 64) * 10 + j
					y = i + 16 * (idx // 64)
					img.putpixel((x, y), (155,155,55))
		idx += 1
		character = cg.read(16)
	# print(cg.read(16))

img.save('test.png')

# 4096 bytes
# 16 byte per character
# 4 character set
# 256 characters
# 64 chars pre character set