import cv2


img = cv2.imread("/home/valia/PycharmProjects/textClustering/Lena128x128.png",
                 0)  # since the image is grayscale, we need only one channel and the value '0' indicates just that

list1 = img.tolist()

str_list = str(list1).replace('[', '{').replace(']', '}')

print(str_list)
