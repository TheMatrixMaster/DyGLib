from setuptools import setup, find_packages

setup(
    name='dyglib',        # Replace with your package name
    version='0.1.0',                 # Initial release version
    description='A brief description of your package',
    author='Your Name',
    author_email='your.email@example.com',
    url='https://github.com/yourusername/your-repo',  # Project URL
    packages=find_packages(),        # Automatically find packages in the current directory
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',     # Choose an appropriate license
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',         # Specify the Python versions supported
)
