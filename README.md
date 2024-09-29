# EXT_ASCII

Man page documenting Unicode equivalents for extended ASCII characters

The original IBM PC included a builtin character set that extended the
standard 7-bit ASCII character set with an additional 128 characters
that includes several line, box, and block drawing characters.

The special 8-bit characters are part of [Code Page 437][cp437], which
is not easily available, despite its continued usefulness for
console-based applications.

The line, box, and block drawing characters of [code page 437][cp437]
do have modern Unicode equivalents.  The man page in this project is a
companion document to the __ascii.7__ man page to aid in
the development of console-based applications.

## INSTALL

The man page will be installed to `/usr/local/share/man/man7`, and
**mandb** will be called to register the man page to enable **apropos**
to find it.

~~~sh
git clone https://www.github.com/cjungmann:ext_ascii.git
cd ext_ascii
sudo make install
~~~

*See **CUSTOM INSTALLATION** below for customization advice.*

## UNINSTALL

~~~sh
sudo make unintsall
~~~

## ACCESS

Open the __ext_ascii__ man page like any other:

~~~sh
man ext_ascii
~~~

### CUSTOM INSTALLATION

Change the default installation base directory from `/usr/local` to
something else by changing the **PREFIX** value of make:

~~~sh
make prefix=~/.local install
~~~

If you elect to install a man page in a non-standard directory, make
sure your workstation can find it by updating the **MANPATH**
environment variable, or `/etc/manpath.config`, or whaterver your
system requires.

Keep in mind that **mandb** needs to know about the man page file
location to add it to the database.  Either update the paths before
calling **make** or call `sudo mandb -c` if the path is updated after
installing **ext_ascii.7**.


## REFERENCES

The following pages were consulted in the development of this
project:

- [Code Page 437][cp437]
- [Block-drawing Characters][bdcs]


[cp437]: https://en.wikipedia.org/wiki/Code_page_437
[bdcs]:  https://en.wikipedia.org/wiki/Box-drawing_characters