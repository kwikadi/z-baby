from flask import (
				Blueprint,
				request,
				session
				)


adminobj = Blueprint('admin', __name__)

@adminobj.route('/')
def adminpane():
	return None