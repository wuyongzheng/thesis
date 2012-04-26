/^ *\\input{.*}$/ {
	subf=gensub(/.*\\input{(.*)}/, "\\1", "g");
	if (subf !~ /\.tex$/)
		subf = subf ".tex";
	system("gawk -f serialize.awk " subf);
	next;
}

{
	print;
}
