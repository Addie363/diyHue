
env:
	virtualenv -p `which python3` env
	env/bin/pip install -r requirements.txt
	env/bin/pip install -r test_requirements.txt
	env/bin/python setup.py develop
	echo "You can now run `source env/bin/activate`"

test:
	env/bin/tox

gen_ui:
	echo "Not implemented Yet"

doc-gen:
	cd doc && make html

doc-update-refs:
	rm -rf doc/source/refs/
	sphinx-apidoc -M -f -e -o doc/source/refs/ huebridgeemulator/


