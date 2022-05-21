import pymysql
from utils import field2index, event2index, getField
from utils import filenames

# 预处理一行数据, 分割成
# event entry
def precessData(line):
    line = line.strip().split(' ')
    event = line[0]
    info = ' '.join(line[1:])
    return event, info


# 从文件读取数据
def readDataFromFile(filename):
    print("Reading data from file: %s" % filename)
    data = []
    with open(filename) as f:
        tmp_data = []
        for line in f:
            if line != '\n':
                tmp_data.append(precessData(line))
            else:
                data.append(tmp_data)
                tmp_data = []
               
    print("类别数：%d" % len(data))
    print("每类数据数：%d" % len(data[0]))
    
    return data


# 将数据写入数据库
def txt2sql(filename):
    field = getField(filename)
    data = readDataFromFile(filename)
    with pymysql.connect(host="localhost", user="root", password="123456", database="weather") as conn:
        cursor = conn.cursor()
       
        for i in range(len(data)):
            for event, info in data[i]:
                try:
                    cursor.execute("""INSERT INTO entry (field_id, event_id, info) VALUES (%s, %s, %s)""", (field2index(field), event2index(event), info))
                    conn.commit()
                except:
                    print("Error")
                    conn.rollback()
                    break


if __name__ == '__main__':
    for filename in filenames:
        txt2sql(filename)