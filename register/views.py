from django.shortcuts import render_to_response
from django.http import Http404, HttpResponseRedirect
from django.template import RequestContext

from register.models import User_Data
from register.forms import RegistrationFormCustom


def process_register(request):
    if request.method == 'POST':

        form = RegistrationFormCustom(request.POST, request.FILES)

        if form.is_valid():
            # Processing data and write data in database.
            form.save()

            return HttpResponseRedirect('/register/thanks-for-registering/')  # Ready to login...

    else:
        #form = RegistrationFormCustom(auto_id=True,
        #                              initial={
        #                                  'gender': u'M',
        #                                  'firstname': u'Kolozsi',
        #                                  'lastname': u'R\u006f\u0301bert',
        #                                  'username': u'robi',
        #                                  'phone': u'000/500-005',
        #                                  'countries': 197,
        #                                  'address': u'Beg End 18,\n24340 Hobbiton',
        #                                  'email': u'robert.kolozsi@gmail.com',
        #                                  'datepicker': u'1971-01-01',
        #                                  'note': u'Nothing special. Just something about me.',
        #                              })
        form = RegistrationFormCustom()

    context = {
        'form': form,
        'formname': 'Registration'
    }

    return render_to_response('register/working_register_template.html',
                              context,
                              context_instance=RequestContext(request))


def registered_successfully(request):
    context = {}
    return render_to_response('register/thanks_for_registering.html',
                              context,
                              context_instance=RequestContext(request))
