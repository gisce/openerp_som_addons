from gestionatr.utils import get_description
from ..component_utils import dateformat
from ..ProcesB1 import ProcesB1

class B103(ProcesB1.ProcesB1):
    def __init__(self):
        ProcesB1.ProcesB1.__init__(self)

    def step_name(self):
        return '03'

    def get_data(self, wiz, cursor, uid, step):
        result = ProcesB1.ProcesB1.get_data(self, wiz, cursor, uid, step)
        result['type'] = 'B103'
        result['day'] = self.get_log_date(wiz, cursor, uid, step)
        return result
