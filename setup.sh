# /bin/sh

if [ ! -e hs-tls ]; then
  git clone https://github.com/kazu-yamamoto/hs-tls
  (cd hs-tls; git checkout -t origin/tls13)
fi

(cd hs-tls; git checkout tls13; git fetch; git reset --hard origin/tls13)

if [ ! -e wai ]; then
  git clone https://github.com/kazu-yamamoto/wai
  (cd wai; git checkout -t origin/tls13)
fi

(cd wai; git checkout tls13; git fetch; git reset --hard origin/tls13)

