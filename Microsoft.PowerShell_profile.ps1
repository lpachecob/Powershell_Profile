function ngrok
{
    param(
        $port
    )
    ngrok.exe http https://localhost:$port -host -header = "localhost:$port"
}

#funciones de git
function gStatus{
    git status
}

function gAdd{
    param(
        $name = "."
    )
    git add $name
}

function gCom{
    param(
        $text
    )
    git commit -m $text
}

function gPush{
    param(
        [Parameter()]
        [string]$flag,
        [Parameter()]
        [string]$remote,
        [Parameter()]
        [string]$brunch
    )

    switch ($flag) {
        DEFAULT { git push $remote $brunch}
    }
}

function gPull{
    param(
        [Parameter()]
        [string]$flag,
        [Parameter()]
        [string]$remote,
        [Parameter()]
        [string]$brunch
    )

    switch ($flag) {
        DEFAULT { git pull --rebase $remote $brunch}
    }
}

function gBranch{
    param(
        [Parameter()]
        [string]$flag,
        [Parameter()]
        [string]$name
    )

    switch ($flag) {
        m { git branch -m $name }
        d { git branch -d $name}
        DEFAULT { git branch $flag}
    }
}

function gCheck{
    param(
        [Parameter()]
        [string]$flag,
        [Parameter()]
        [string]$name
    )

    switch ($flag) {
        b { git checkout -b $name && clear }
        d { git checkout -d $name && clear}
        DEFAULT { git checkout $flag && clear}
    }

}


function gMerge{
    param(
        [Parameter()]
        [string]$flag,
        [Parameter()]
        [string]$name
    )

    switch ($flag) {
        DEFAULT { git merge $flag}
    }
}

function gTag{
    param(
        [Parameter()]
        [string] $flag,
        [Parameter()]
        [string] $nameTag,
        [Parameter()]
        [string] $commitId
    )

    switch ($flag){
        a {git tag -a $nameTag $commitId}
        DEFAULT {git tag $nameTag $commitId}
    }

}

function gStash{
    param(
        [Parameter()]
        [string] $funcion,
        [Parameter()]
        [string] $text
    )

    switch ($funcion){
        apply { git stash apply $text}
        drop { git stash drop $text}
        pop {git stash pop $text}
        list { git stash list $text}
        save { git stash save $text }
        DEFAULT {git stash $text}
    }

}
