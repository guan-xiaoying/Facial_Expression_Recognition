#基础镜像
FROM python:3.7

ADD dlib-19.17.99-cp37-cp37m-win_amd64.whl ./

ADD requirements.txt ./

RUN pip install -r ./requirements.txt

ADD task ./
WORKDIR ./task



#Flask程序运行的端口
EXPOSE 5000

#运行python程序
CMD ["python","./task/main_V2.py"]
