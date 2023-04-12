#!/bin/sh -l

curl https://api.openai.com/v1/completions -H "Authorization: Bearer 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" -H "Content-Type: application/json" -d '{"prompt": "将以下文字翻译成英文:加入联盟有什么好处", "model": "text-davinci-003","temperature": 0, "max_tokens": 1024}'

echo "start run main.py"
python /main.py --openai_api_key "$1" --github_token "$2" --github_pr_id "$3" --openai_engine "$4" --openai_temperature "$5" --openai_max_tokens "$6" --mode "$7"