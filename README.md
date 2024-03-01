# 💻 JSON Crack toolbox

![Build and deploy the toolbox image](https://github.com/righettod/toolbox-jsoncrack/actions/workflows/build_docker_image.yml/badge.svg?branch=main) ![MadeWithDocker](https://img.shields.io/static/v1?label=Made%20with&message=Docker&color=blue&?style=for-the-badge&logo=docker) ![AutomatedWith](https://img.shields.io/static/v1?label=Automated%20with&message=GitHub%20Actions&color=blue&?style=for-the-badge&logo=github)


## 🎯 Description

The goal of this repository is to provide an up to date docker image of the [JSON Crack](https://github.com/AykutSarac/jsoncrack.com) tool.

## 📦 Build

See [here](https://github.com/AykutSarac/jsoncrack.com?tab=readme-ov-file#docker).

## 👨‍💻 Usage

You can use the following PowerShell code snippet:

```powershell
$toolUrl = "http://localhost:8888"
docker run -d -p 8888:8080 ghcr.io/righettod/toolbox-jsoncrack:main
$status = 0
while ($status -ne 200) {
	Write-Host "[+] Wait 15 seconds that the container starts..." -ForegroundColor Yellow
	Start-Sleep 15
	$status = (Invoke-WebRequest -Uri $toolUrl -UseBasicParsing).StatusCode
}
Write-Host "[i] URL to use is $toolUrl" -ForegroundColor Cyan
Firefox.exe $toolUrl
```

## 🤝 Sources & credits

* [JSON Crack author](https://github.com/AykutSarac/jsoncrack.com).
