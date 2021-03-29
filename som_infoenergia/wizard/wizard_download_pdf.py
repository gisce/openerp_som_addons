# -*- coding: utf-8 -*-
from osv import osv, fields
from tools.translate import _


STATES = [
    ('init', 'Estat Inicial'),
    ('finished', 'Estat Final')
]

class WizardDownloadPdf(osv.osv_memory):
    _name = 'wizard.infoenergia.download.pdf'

    _columns = {
        'state': fields.selection(STATES, _(u'Estat del wizard de baixada de PDF')),
    }

    _defaults = {
        'state': 'init'
    }

    def download_pdf(self, cursor, uid, ids, context=None):
        wiz = self.browse(cursor, uid, ids[0], context=context)

        env_obj = self.pool.get('som.infoenergia.enviament')
        if context.get('from_model') == 'som.infoenergia.lot.enviament':
            lot_id = context.get('active_id', 0)
            env_ids = env_obj.search(cursor, uid, [('lot_enviament', '=', lot_id)])

        elif context.get('from_model') == 'som.infoenergia.enviament':
            env_ids = context.get('active_ids', [])

        wiz.write({'state': "finished"})
        for env_id in env_ids:
            env = env_obj.browse(cursor, uid, env_id)
            env.download_pdf(context)


WizardDownloadPdf()
