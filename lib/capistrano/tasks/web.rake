task :restart_puma do
  on roles(:web) do
    execute :sudo, :systemctl, "restart rails.service"
  end
end
after "deploy:published", "restart_puma"
