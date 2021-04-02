git-select-recent(){
    PS3="Enter #: "
    BRANCH_COUNT=${1:-10}
    SOURCE=${2:-refs/heads}
    FORMAT=${3:-short}
    i=0
    branches=()
    while read entry
    do
        eval "$entry"
        branches+=($ref)
        let i++
    done < <(
        git for-each-ref \
            --format="ref=%(refname:$FORMAT)" \
            --count="$BRANCH_COUNT" \
            --sort=-committerdate \
            --no-contains origin \
            $SOURCE
    )

    select branch in ${branches[@]};
    do
        git checkout $branch
        break;
    done
}
git-select-recent-remote(){
    git-select-recent ${1:-10} refs/remotes strip=3
}
