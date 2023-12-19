from setuptools import setup, find_packages

setup(
    name='myproject',
    version='0.0.1',
    packages=find_packages(),
    install_requires=[
        # Add your dependencies here
    ],
    entry_points={
        'console_scripts': [
            'myproject=myproject.cli:main',
        ],
    },
)
