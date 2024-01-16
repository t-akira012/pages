#!/usr/bin/env bash
title=$1
shift
pracs=($*)

for prac in ${pracs[@]}
do
generated=${title}_担当${prac}

url=$(cat << EOF
<!-- wp:loos/button {"hrefUrl":"https://ssl.form-mailer.jp/fms/00db3f63809293?%E3%82%BF%E3%82%A4%E3%83%88%E3%83%AB%5B0%5D=$generated","className":"is-style-btn_normal"} -->
<div class="swell-block-button is-style-btn_normal"><a href="https://ssl.form-mailer.jp/fms/00db3f63809293?%E3%82%BF%E3%82%A4%E3%83%88%E3%83%AB%5B0%5D=$generated" class="swell-block-button__link"><span>$prac</span></a></div>
<!-- /wp:loos/button -->
EOF
)
echo $url
done

