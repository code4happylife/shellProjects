git log # 查询要回滚的 commit_id
git reset --hard commit_id # HEAD 就会指向此次的提交记录
git push origin HEAD --force # 强制推送到远端
