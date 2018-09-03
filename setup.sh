# /bin/sh

if [ ! -e hs-tls ]; then
  git clone https://github.com/kazu-yamamoto/hs-tls
  (cd hs-tls; git checkout -t origin/work13)
fi

(cd hs-tls; git checkout work13; git fetch; git reset --hard origin/work13)

if [ ! -e wai ]; then
  git clone https://github.com/kazu-yamamoto/wai
  (cd wai; git checkout -t origin/work13)
fi

(cd wai; git checkout work13; git fetch; git reset --hard origin/work13)

