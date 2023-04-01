pandoc --version

pandoc --verbose -o progit.rst title.txt 01-introduction/01-chapter1.markdown `
  02-git-basics/01-chapter2.markdown `
  03-git-branching/01-chapter3.markdown `
  04-git-server/01-chapter4.markdown `
  05-distributed-git/01-chapter5.markdown `
  06-git-tools/01-chapter6.markdown `
  07-customizing-git/01-chapter7.markdown `
  08-git-and-other-scms/01-chapter8.markdown `
  09-git-internals/01-chapter9.markdown

rst2pdf --version
rst2pdf -o progit-rst2pdf.pdf .\progit.rst