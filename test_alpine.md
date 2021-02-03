<h3>This image is built to run on IBMZ</h3>
<ul>
<li><a href="https://github.com/korpx-z/docker-alpine">build source</a></li>
<li><a href="https://github.com/alpinelinux/docker-alpine">original source code</a></li>
</ul>
<h3>Versions</h3>
<ul>
<li>
<p>3.6
<code>alpine:3.6@sha256:28db8100f30a46a4da5b6e794ffb0d551dea5f289533f76924f204ea4c5b3669</code></p>
</li>
<li>
<p>3.7
<code>alpine:3.7@sha256:217c5b3210c42a4c5dbcba03933c304588d353d458160cf540a1bbd580459b2c</code></p>
</li>
<li>
<p>3.8
<code>alpine:3.8@sha256:c1a0d7dcbe1d8bc93f7a14b02e4ea884cc7cb8525d4c94070bfd7bb217c0ec87</code></p>
</li>
<li>
<p>3.9
<code>alpine:3.9@sha256:b32f5cc7e786affc504c5b4422beb122ccc291ac7e421fad8c0d0a33fe18e76a</code></p>
</li>
<li>
<p>3.10
<code>alpine:3.10@sha256:ad6c47aa670bf79e337a4a9309902a89705c88450337fbfe71a955240f69cdd2</code></p>
</li>
<li>
<p>3.11
<code>alpine:3.11@sha256:998fa9fffb399d51bb5449e69ef36a8f7b030873aaee9fd47b64854fae3fed61</code></p>
</li>
<li>
<p>3.12
<code>alpine:3.12@sha256:9dd09461d54469323c6c1af32bba1552c45e0d477b8aba8b768fb44487768e11</code></p>
</li>
</ul>
<h1>Alpine</h1>
<p><a href="https://alpinelinux.org/">Alpine Linux</a> is a Linux distribution built around <a href="https://www.musl-libc.org/">musl libc</a> and <a href="https://www.busybox.net/">BusyBox</a>. The image is only 5 MB in size and has access to a <a href="https://pkgs.alpinelinux.org/">package repository</a> that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications. <a href="https://alpinelinux.org/about/">Read more about Alpine Linux here</a> and you can see how their mantra fits in right at home with Docker images.</p>
<p><img alt="logo" src="https://raw.githubusercontent.com/docker-library/docs/781049d54b1bd9b26d7e8ad384a92f7e0dcb0894/alpine/logo.png" /></p>
<h1>How to use this image</h1>
<h2>Usage</h2>
<p>Use like you would any other base image:</p>
<p><code>dockerfile
FROM quay.io/ibm/alpine:3.7
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]</code></p>
<p>This example has a virtual image size of only 36.8MB. Compare that to our good friend Ubuntu:</p>
<p><code>dockerfile
FROM quay.io/ibm/ubuntu:18.04
RUN apt-get update \
    &amp;&amp; apt-get install -y --no-install-recommends mysql-client \
    &amp;&amp; rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["mysql"]</code></p>
<p>This yields us a virtual image size of about 145MB image.</p>
<h1>License</h1>
<p>View <a href="https://pkgs.alpinelinux.org">license information</a> for the software contained in this image.</p>
<p>As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).</p>
<p>Some additional license information which was able to be auto-detected might be found in <a href="https://github.com/docker-library/repo-info/tree/master/repos/alpine">the <code>repo-info</code> repository's <code>alpine/</code> directory</a>.</p>
<p>As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.</p>
