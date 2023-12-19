<!DOCTYPE html>
<!-- saved from url=(0087)https://www.gnu.org/software/emacs/manual/html_node/elisp/Non_002dASCII-in-Strings.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Non-ASCII in Strings (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Non-ASCII in Strings (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Non-ASCII in Strings (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="subsubsection-level-extent" id="Non_002dASCII-in-Strings">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Nonprinting-Characters.html" accesskey="n" rel="next">Nonprinting Characters in Strings</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-for-Strings.html" accesskey="p" rel="prev">Syntax for Strings</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/String-Type.html" accesskey="u" rel="up">String Type</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h4 class="subsubsection" id="Non_002dASCII-Characters-in-Strings">2.4.8.2 Non-<abbr class="acronym">ASCII</abbr> Characters in Strings</h4>

<p>There are two text representations for non-<abbr class="acronym">ASCII</abbr>
characters in Emacs strings: multibyte and unibyte (see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-Representations.html">Text Representations</a>).  Roughly speaking, unibyte strings store raw bytes,
while multibyte strings store human-readable text.  Each character in
a unibyte string is a byte, i.e., its value is between 0 and 255.  By
contrast, each character in a multibyte string may have a value
between 0 to 4194303 (see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Character-Type.html">Character Type</a>).  In both cases,
characters above 127 are non-<abbr class="acronym">ASCII</abbr>.
</p>
<p>You can include a non-<abbr class="acronym">ASCII</abbr> character in a string constant
by writing it literally.  If the string constant is read from a
multibyte source, such as a multibyte buffer or string, or a file that
would be visited as multibyte, then Emacs reads each
non-<abbr class="acronym">ASCII</abbr> character as a multibyte character and
automatically makes the string a multibyte string.  If the string
constant is read from a unibyte source, then Emacs reads the
non-<abbr class="acronym">ASCII</abbr> character as unibyte, and makes the string
unibyte.
</p>
<p>Instead of writing a character literally into a multibyte string,
you can write it as its character code using an escape sequence.
See <a class="xref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/General-Escape-Syntax.html">General Escape Syntax</a>, for details about escape sequences.
</p>
<p>If you use any Unicode-style escape sequence ‘<samp class="samp">\uNNNN</samp>’ or
‘<samp class="samp">\U00NNNNNN</samp>’ in a string constant (even for an <abbr class="acronym">ASCII</abbr>
character), Emacs automatically assumes that it is multibyte.
</p>
<p>You can also use hexadecimal escape sequences (‘<samp class="samp">\x<var class="var">n</var></samp>’) and
octal escape sequences (‘<samp class="samp">\<var class="var">n</var></samp>’) in string constants.
<strong class="strong">But beware:</strong> If a string constant contains hexadecimal or
octal escape sequences, and these escape sequences all specify unibyte
characters (i.e., less than 256), and there are no other literal
non-<abbr class="acronym">ASCII</abbr> characters or Unicode-style escape sequences in
the string, then Emacs automatically assumes that it is a unibyte
string.  That is to say, it assumes that all non-<abbr class="acronym">ASCII</abbr>
characters occurring in the string are 8-bit raw bytes.
</p>
<p>In hexadecimal and octal escape sequences, the escaped character
code may contain a variable number of digits, so the first subsequent
character which is not a valid hexadecimal or octal digit terminates
the escape sequence.  If the next character in a string could be
interpreted as a hexadecimal or octal digit, write ‘<samp class="samp">\&nbsp;</samp>’<!-- /@w -->
(backslash and space) to terminate the escape sequence.  For example,
‘<samp class="samp">\xe0\&nbsp;</samp>’<!-- /@w --> represents one character, ‘<samp class="samp">a</samp>’ with grave
accent.  ‘<samp class="samp">\&nbsp;</samp>’<!-- /@w --> in a string constant is just like
backslash-newline; it does not contribute any character to the string,
but it does terminate any preceding hex escape.
</p>
</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Nonprinting-Characters.html">Nonprinting Characters in Strings</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-for-Strings.html">Syntax for Strings</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/String-Type.html">String Type</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>