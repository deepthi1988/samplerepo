#!/bin/sh
name=${1}
reportfile="report.txt"
x=$(wc -l ${name})

echo "files found in ${name} is ${x}" >> ${reportfile}

