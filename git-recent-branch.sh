i=0
branches=()
while read entry
do
    eval "$entry"
    branches+=($ref)
    let i++
done < <(git for-each-ref --format="ref=%(refname:short)" --count="5" refs/heads)

select branch in ${branches[@]};
do
    git checkout $branch
    break;
done