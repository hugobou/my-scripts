import argparse
import os, errno

parser = argparse.ArgumentParser(description='Create a note file.')
parser.add_argument('title', nargs=1,
        help='title of the note: used as folder and file name')

args = parser.parse_args()

title = args.title[0]

try:
    notes_directory = os.environ['NOTES_DIR']
except KeyError:
    print("NOTES_DIR env variable not set.")
    exit(1)

directory = notes_directory + "/" + title
filename = directory + "/" + title + ".md"

try:
    os.makedirs(directory)
except OSError as e:
    if e.errno == errno.EEXIST:
        print("Directory %s exists, leaving." % directory)
        exit(1)

if os.path.isfile(filename):
    print("File %s exists, leaving." % filename)
    exit(1)
else:
    with open(filename, 'w') as infile:
        infile.close()
    print("Created %s note." % filename)
