#!/bin/bash

cd files

for file in *
do
  first_char=$(echo "$file" | cut -c1)

  lower_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

  if [[ "$lower_char" =~ [a-z] ]]; then
    mv "$file" "../$lower_char/"
  fi
done

echo "파일 정리가 완료되었습니다."