from sys import argv
import os

mode = 0
if len(argv) > 1:
  if argv[1] == '+' or argv[1] == '5':
    mode = 1

cmd = 'systemctl'
option = [
    'disable',
    'enable'
    ]
service = [
    'NetworkManager.service',
    'NetworkManager-wait-online.service',
    'kdm.service'
    ]
target = [
    'multi-user.target',
    'graphical.target'
    ]

for srv in service:
  os.system(' '.join([cmd, option[mode], srv]))
  #print(' '.join([cmd, option[mode], srv]))

os.system(' '.join([cmd, option[0], target[1 - mode]]))
os.system(' '.join([cmd, option[1], target[mode]]))

#print(' '.join([cmd, option[0], target[1 - mode]]))
#print(' '.join([cmd, option[1], target[mode]]))

