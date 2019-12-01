import os
from setuptools import setup, find_packages
from pip.req import parse_requirements

# parse_requirements() returns generator of pip.req.InstallRequirement objects
requirements_path = os.sep.join([os.path.dirname(os.path.abspath(__file__)), 'requirements.txt'])
install_reqs = parse_requirements(requirements_path, session=False)
reqs = [str(req.req) for req in install_reqs]

setup(
    name='sample',
    version='0.0.1',
    description='Python Tools Sample',
    url='https://github.com/kaeawc/python-tools-sample/',
    author='Jason Pearson',
    author_email='jason.d.pearson@gmail.com',
    license='MIT',
    packages=find_packages(),
    include_package_data=True,
    install_requires=reqs,
    zip_safe=False)
