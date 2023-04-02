echo "PANDOC"
pandoc --verbose --wrap=none  -o progit.rst en/title.txt 01-introduction/01-chapter1.markdown `
  en/02-git-basics/01-chapter2.markdown `
  en/03-git-branching/01-chapter3.markdown `
  en/04-git-server/01-chapter4.markdown `
  en/05-distributed-git/01-chapter5.markdown `
  en/06-git-tools/01-chapter6.markdown `
  en/07-customizing-git/01-chapter7.markdown `
  en/08-git-and-other-scms/01-chapter8.markdown `
  en/09-git-internals/01-chapter9.markdown

echo "RST2PDF"
rinoh -O progit-rinohtype .\progit.rst