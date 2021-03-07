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
        [string]$name 
    )

    switch ($flag) {
        DEFAULT { git origin $flag}
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

function gPull{
    param(
        [Parameter()]
        [string]$flag,
        [Parameter()]
        [string]$name
    )

    switch ($flag) {
        DEFAULT { git pull}
    }
}
