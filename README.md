# Breeze-Vim

## hightlight

```
# demod kernel solution platform 分别处理
find . -regex '.*\.c\|.*\.h' | xargs ctags --c-kinds=gstu
awk '{print $1}' tags | grep -v "^\!" | sort | uniq > tmp
awk 'BEGIN{printf("syntax keyword Type\t")} {printf("%s ", $1)}END{print ""}' tmp > .hightlight
```
