from django.shortcuts import render_to_response
from django.http import Http404, HttpResponseRedirect
from django.template import RequestContext

from reglog.register.models import User_Data
from reglog.register.forms import RegistrationFormCustom


def process_register(request):
    if request.method == 'POST':

        form = RegistrationFormCustom(request.POST, request.FILES)

        if form.is_valid():
            # Processing data and write data in database.
            form.save()

            return HttpResponseRedirect('/register/thanks-for-registering/') # Ready to login...

    else:
        form = RegistrationFormCustom(auto_id=True,
                                      initial={
                                        'gender': u'M',
                                        'firstname': u'Kolozsi',
                                        'lastname': u'R\u006f\u0301bert',
                                        'username': u'robi',
                                        'phone': u'024/542-683',
                                        'countries': 197,
                                        'address': u'Kizur I\u0073\u030ctvan 18,\n24000 Subotica',
                                        'email': u'robert.kolozsi@gmail.com',
                                        'datepicker': u'1973-04-08',
                                        'note': u'Nothing special. Just something about me.',
                                      })

    context = { 'form': form,
                'formname': 'Registration' }

    return render_to_response('register/working_register_template.html',
                              context,
                              context_instance=RequestContext(request))


def registered_successfully(request):
    context = { }
    return render_to_response('register/thanks_for_registering.html',
                              context,
                              context_instance=RequestContext(request))
