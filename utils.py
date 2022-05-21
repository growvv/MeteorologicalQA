
filenames = ['info_traffic.txt', 'info_weather.txt']

fields = ['traffic', 'weather']

events = ['交通拥塞', '轻微交通事故', '严重交通事故', '道路积水', '道路积雪', '道路高温', '落石道路', '大雾道路', '道路桥梁', '道路隧道',
        '晴天','阴天', '雨天', '雷雨天', '雪天', '冰雹', '台风', '雾霾', '沙尘暴']


def field2index(field):
    return fields.index(field)

def event2index(event):
    return events.index(event)

def getField(filename):
    return filename.split('.')[0].split('_')[1]

# print(getField('info_traffic.txt'))