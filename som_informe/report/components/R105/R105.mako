<%page args="d" />
<li>
    ${_(u"El %s Som Energia presenta una reclamació a la distribuïdora ( %s ):") % (d.day, d.distribuidora) }<br/>
    ${_(u"Procediment: R1 (reclamació)")}<br/>
    ${_(u"Pas: 05")}<br/>
    ${_(u"Data tancament de la reclamació: %s") % (d.date)}<br/>
    ${_(u"Codi de la sol·licitud: %s") % (d.codi_sollicitud)}<br/>
    ${_(u"Codi de reclamació de la distribuïdora: %s ") % (d.codi_reclamacio_distri)}<br/>
    ${_(u"Tipus de reclamació: %s") %(d.tipus_reclamacio)}<br/>
    ${_(u"Resultat de la reclamació: %s ") % (d.resultat)}<br/>
    % if d.detall_resultat:
        ${_(u"Detall Resultat reclamació: %s ") % (d.detall_resultat)}<br/>
    % endif
    % if len(d.documents_adjunts) > 0:
        ${_(u"Documents adjunts: Si")}<br/>
        ${_(u"Tipus de document: %s ") % (d.documents_adjunts)}<br/>
    % else:
        ${_(u"Documents adjunts: No")}<br/>
    % endif
    ${_(u"Argumentació per part de la distribuïdora: %s ") % (d.comentaris_distri)}<br/>
</li>
