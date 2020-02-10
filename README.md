# git-ftp-action

Uses [git-ftp](https://github.com/git-ftp/git-ftp) and [GitHub actions](https://github.com/features/actions) to deploy a GitHub repository to a FTP server.

**⚠️ Attention:** This action works only with `actions/checkout@v1` for now. Make sure you use v1 and not v2 or master.

## Example usage

```
name: Deploy via git-ftp
on: push
jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: git-ftp push
      uses: webreinvent/github-git-ftp-action@master
      with:
        action: "push" // push or catchup
        url: "ftp://ftp.example.com/path/"
        user: ${{ secrets.FTP_USERNAME }}
        password: ${{ secrets.FTP_PASSWORD }}
```

## Secrets

To create `secrets` variable in your repository, navigate `your repo > Settings > Secrets` 

## Input parameters

Input parameter | Description | Required | Default
--- | --- | --- | ---
url | git-ftp url (see [documentation](https://github.com/git-ftp/git-ftp/blob/1.5.1/man/git-ftp.1.md#url) for more info) | Yes | N/A
action | GIT FTP Action | Yes | push or catchup
user | FTP username | Yes | N/A
password | FTP password | Yes | N/A
