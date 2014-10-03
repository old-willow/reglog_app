/*
 * Some Ajax for digging out username from database.
 */
var login_username = document.getElementById('id_username');
login_username.addEventListener('blur', check_username_existance, false);

function check_username_existance() {
  xhr_username = new XMLHttpRequest();
  xhr_username.onreadystatechange = username_exists;
  //xhr_username.open('POST', '/check-username/', true);
  xhr_username.open('GET', '/check-username/?u=' + login_username.value, true);
  //xhr_username.setRequestHeader('X-CSRFToken', getCookie('csrftoken'));
  //xhr_username.setRequestHeader('HTTP-X-REQUEST-WITH', 'XMLHttpRequest');
  //xhr_username.send(username=login_username.value);
  //xhr_username.send(null);
  xhr_username.send(null);

  //login_username.addEventListener('change', remove_warning_no_such_user, false);

  //function remove_warning(node) {
  //    if (node.lastChild.nodeName === 'TD') {
  //      //console.log('This is the subject node: ' + startNode.lastChild.nodeName);
  //      //console.log('I\'m removing the warning node!');
  //      node.removeChild(node.lastChild);
  //      //console.log('I\'ve removed the warning node!');
  //    }
  //    return;
  //}

  function remove_warning_no_such_user(node) {
      if (node.lastChild.nodeName === 'TD') {
        node.removeChild(node.lastChild);
      }
  }

  var td;
  var warn;

  // This is the first TR child node of TBODY node.
  // The start point for traversing node tree.
  var startNode = login_username.parentNode.parentNode;
  //console.log(startNode);
  //console.log(startNode.nodeName);

  function username_exists() {
    if (xhr_username.readyState < 4) {
      return;
    }

    if (xhr_username.status !== 200) {
      return;
    }

    // I expect this text to be returned if everything is working well from django view
    // 'ajax_login_username_check()' function.
    var return_text = "OK";

    if (xhr_username.responseText === return_text) {
      // If user exist then remove the warning notification.
      remove_warning_no_such_user(startNode);
      return xhr_username;

    } else {
      // If user does't exist then remove the previous warning notification if warning exists.
      remove_warning_no_such_user(startNode);

      create_warning_no_such_user();
    }
  }

  function create_warning_no_such_user(node) {
      // Create new warning if no such user!
      td = document.createElement('td');
      warn = document.createElement('p');
      td.appendChild(warn);
      warn.innerHTML = 'No such user!';
      warn.style.padding = '0px';
      warn.style.margin = '0px';
      warn.style.width = '100px';
      warn.style.color = 'green';
      warn.style.backgroundColor = 'yellow';
      warn.style.border = '1px solid green';
      startNode.appendChild(td);
      login_username.select();
      login_username.focus();

      return;
  }
}


/*
 * These functiuons are for validating various stuff on forms.
 */
function validate_login_form() {
  var username = document.getElementById('id_username');
  var password = document.getElementById('id_password');

  if (username.value === "") {
    alert("Fill the Username field!");
    username.focus();
    return false;
  } else  if (password.value === "") {
    alert("Fill the Password field!");
    password.focus();
    return false;
  } else {  // if everything is ok!
    return true;
  }
}


function validate_register_form() {
  var gender         = document.getElementsByName('gender');
  var firstname      = document.getElementById('firstname');
  var lastname       = document.getElementById('lastname');
  var username       = document.getElementById('username');
  var email          = document.getElementById('email');
  var password       = document.getElementById('password');
  var repeatpassword = document.getElementById('repeatpassword');

  var c;

  if (radio_check(gender)) {
    alert("Check gender!");
    return false;
  } else if (firstname.value === "") {
    alert("Fill the Firstname field!");
    return false;
  } else if (lastname.value === "") {
    alert("Fill the Lastname field!");
    return false;
  } else if (username.value === "") {
    alert("Fill the Username field!");
    return false;
  } else if (email.value === "") {
    alert("Fill the Email field!");
    return false;
  } else if (password.value === "") {
    alert("Fill the Passsword field!");
    return false;
  } else if (repeatpassword.value === "") {
    alert("Fill the Confirm password field!");
    return false;
  } else if (c = password_check(password.value, repeatpassword.value)){
    if (c) {
      return true;
    } else {
      return false;
    }
  } else {
    return true;
  }
}

function validate_forgot_password_form() {
  //
}


/* Ckecks if any of radio buttons are checked. */
function radio_check(gender) {
  var i;
  for (i = 0; i <= 1; i += 1) {
    if (gender[i].checked) {  // return false if one of the buttons are checked.
      return false;
    }
  }
  return true;
}

/* Checks if password and repeat password is equal. */
function password_check(p1, p2) {
  if (p1 === p2) {
    return true;
  } else {
    alert("Passwords are not identical!");
    return false;
  }
}
