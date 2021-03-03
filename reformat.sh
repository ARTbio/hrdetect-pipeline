sed -i -e "s/ /\t/g" segments.tsv
cat somatic_snvs.vcf | perl -ne 'print unless /^chrX/ or /^chrY/ or /^chrM/' > somatic_snvs.vcf.new
mv somatic_snvs.vcf.new somatic_snvs.vcf

