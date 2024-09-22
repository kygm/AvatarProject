#KYGM - My implementation of the QML convert from PySimpleGui

import os
import configparser
import sys

sys.path.append(os.path.join(os.path.dirname(os.path.realpath(__file__)), "..", "..", "file-transfer"))
from sftp import fileTransfer

class TransferData:
    def transfer_files_window(self):
        #implement simple gui using QML
        return