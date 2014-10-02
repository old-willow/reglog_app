from django.shortcuts import render_to_response
from django.http import Http404, HttpResponseRedirect, HttpResponse
from django.template import RequestContext
from django.contrib import auth
from django.contrib.auth.models import User
#from django.utils import simplejson
import json
from django.core.context_processors import csrf
from django.core.mail import send_mail

from django.contrib.auth.views import password_reset, password_reset_complete

from register.models import User_Data
from login.forms import LoginForm, PasswordResetForm, ChangePasswordForm


def ajax_login_username_check(request):
#    if request.is_ajax():
#        print 'is ajax'

    c = {}
    #c.update(csrf(request))

    # Maybe to try something like this:
    # In order to make this work I have to set the request header:
    # HTTP_X_REQUEST_WITH = 'XMLHttpRequest', manualy
    # if I don't use libraries (i.e. JQuery)
    # CODE: if request.is_ajax: ??????????
    if request.method == 'GET' and request.GET['u']:
        searchfor = request.GET['u']

        try:
            User.objects.get(username=searchfor)

        except User.DoesNotExist:
            c = {'check': 'Error',}
            return HttpResponse(simplejson.dumps(c), mimetype='application/javascript')
#            return HttpResponse(str(c))

    c = {'check': 'OK',}
    return HttpResponse(simplejson.dumps(c), mimetype='application/javascript')


def process_login(request):
    """
    View function for loging in a site.
    """
    if request.method == 'POST':

        form = LoginForm(request.POST)

        if form.is_valid():
            #return HttpResponse('THE FORM IS VALID!')
            #return HttpResponse(form.cleaned_data['username'])
            # Assigning & clearing input values.
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            #return HttpResponse('username is: %s' % username)
            #return HttpResponse('password is: %s' % password)

            # Checking username with database username value.
            #return HttpResponse('AUTHENTICATING!')
            user = auth.authenticate(username=username, password=password)
            #return HttpResponse('AUTHENTICATED!')
            #return HttpResponse('user is: %s' % user)

            if user is not None and user.is_active:
                #return HttpResponse('TRYING TO LOGIN!')
                auth.login(request, user)
                #return HttpResponse('LOGGED IN!')
                return HttpResponseRedirect('/login/loged-in/')

            else:
                return HttpResponseRedirect('/login/login-error/')

    else:
        form = LoginForm() # An unbound form.

    context = {
        'form': form,
        'formname': 'Login',
    }

    return render_to_response('login/working_login_template.html',
                              context,
                              context_instance=RequestContext(request))


def process_logout(request):
   auth.logout(request)

   return HttpResponseRedirect('/login/loged-out/')


def forgot_password_context_processor(request):
    return {
        'formname2': 'Forgot Password',

    }


def loged_in(request):
    #path = User_Data.objects.get()
    context = {}

    return render_to_response('login/you_are_loged_in.html',
                              context,
                              context_instance=RequestContext(request))


def loged_out(request):
    context = {}

    return render_to_response('login/you_are_loged_out.html',
                              context,
                              context_instance=RequestContext(request))


def error_login(request):
    context = {}

    return render_to_response('login/wrong_username_or_password.html',
                              context,
                              context_instance=RequestContext(request))


def show_portrait(request):
    """
    Provide a link to a picture of the current user.
    """
    if request.user.is_authenticated():
        # query the portrait end part from db.
        user = User_Data.objects.get(user=request.user.id)

        if user.portrait.url:
            portpath = user.portrait.url
            context = {'portpath': portpath}

            return render_to_response('login/show_portrait.html',
                                      context,
                                      context_instance=RequestContext(request))
        else:
            return HttpResponseRedirect('/no/available/portrait/')


def no_portrait(request):
    context = {}
    return render_to_response('login/no_portrait.html',
                              context,
                              context_instance=RequestContext(request))
