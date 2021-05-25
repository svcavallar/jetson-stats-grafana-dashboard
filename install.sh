sudo cp jetson_stats_prometheus_collector.py /usr/local/bin/

# Install service for the current user
mkdir -p ~/.config/systemd/user
cp jetson_stats_prometheus_collector.service ~/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user start jetson_stats_prometheus_collector
systemctl --user status jetson_stats_prometheus_collector
