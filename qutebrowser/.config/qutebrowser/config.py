config.load_autoconfig()

# js switch
config.bind(',jd', 'set content.javascript.enabled false')
config.bind(',je', 'set content.javascript.enabled true')

# tabs
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind('xx', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')

# search engines
c.url.searchengines = {
        'DEFAULT': 'https://duckduckgo.com/?q={}',
        'yt': 'https://invidious.weblibre.org/search?q={}',
        }

# blank startpage
c.url.start_pages = ['about:blank']

config.set('qt.args', ['ignore-gpu-blocklist', 'enable-gpu-rasterization', 'enable-accelerated-video-decode', 'enable-quic'])
